package main

import (
	"encoding/json"
	"fmt"
	"log"
	"os"
	"sync"
	"time"

	mqtt "github.com/eclipse/paho.mqtt.golang"
)

type Sample struct {
	Time  float64 `json:"time"`
	Value float64 `json:"value"`
}

var (
	brokers      []string               = []string{"tcp://127.0.0.1:1883"}
	pattern      string                 = "siggen/+/+"
	dispatch     map[string]chan Sample = make(map[string]chan Sample) //make empty map where key is String and value is channel of type Sample
	dispatch_mux sync.Mutex
	client       mqtt.Client // defining a client
)

const (
	WINDOW_SIZE int = 3
)

func mavg(topic string, channel chan Sample) {
	otopic := "mavg" + topic[6:]
	fmt.Println("Republishing moving average to", otopic)

	// initialize window and sum
	window := make([]float64, WINDOW_SIZE) //make array of size 3. That takes floats.
	for i := range window {
		window[i] = 0.0
	}
	sum := 0.0

	// service loop
	i := 0
	for sample := range channel { //loop over samples in channel
		value := sample.Value
		fmt.Println(otopic, value)

		// update window and sum
		sum += value - window[i%WINDOW_SIZE]
		window[i%WINDOW_SIZE] = value

		// build message
		var new_sample Sample = Sample{sample.Time, sum}
		message, _ := json.Marshal(new_sample)

		// publish
		client.Publish(otopic, 1, false, message)
		f, in_err := os.OpenFile("mavg_out_log.txt",
			os.O_APPEND|os.O_CREATE|os.O_WRONLY, 0644)
		d1 := otopic + " : " + string(message) + "\n"
		check(in_err)
		defer f.Close()
		if _, in_err := f.WriteString(d1); in_err != nil {
			log.Println(in_err)
		}

		i++
	}
}

func check(e error) {
	if e != nil {
		panic(e)
	}
}

func dispatch_sample(client mqtt.Client, message mqtt.Message) {
	var topic string = message.Topic()
	f, in_err := os.OpenFile("mavg_in_log.txt",
		os.O_APPEND|os.O_CREATE|os.O_WRONLY, 0644)
	d1 := fmt.Sprintf(topic+" : "+"%f"+"\n", float64(time.Now().UnixNano()))
	check(in_err)
	defer f.Close()
	if _, in_err := f.WriteString(d1); in_err != nil {
		log.Println(in_err)
	}
	var sample Sample

	// unmarshal
	err := json.Unmarshal(message.Payload(), &sample)
	if err != nil {
		fmt.Println("Unable to unmarshal incoming sample:", err)
		return
	}

	// make sure that channel exists
	dispatch_mux.Lock()
	channel, ok := dispatch[topic] //see if map of topic returns a channel
	if !ok {
		channel = make(chan Sample, 2) // if there is no channel we create it
		go mavg(topic, channel)        // begin goroutine background process, publishing data for topic with the new channel
		dispatch[topic] = channel      //update mapping from topic to new channel.
	}
	dispatch_mux.Unlock()

	// queue channel
	channel <- sample //send sample over channel
}

func mqtt_subscribe() {
	// configure options
	options := mqtt.NewClientOptions()
	for _, broker := range brokers {
		options.AddBroker(broker)
	}

	// start mqtt client
	client = mqtt.NewClient(options)
	if token := client.Connect(); token.Wait() && token.Error() != nil {
		panic(token.Error())
	}

	// set up subscription
	if token := client.Subscribe(pattern, 2, dispatch_sample); token.Wait() && token.Error() != nil {
		panic(token.Error())
	}
}

func main() {

	// clear file
	f1, err1 := os.OpenFile("mavg_in_log.txt",
		os.O_TRUNC|os.O_CREATE|os.O_WRONLY, 0644)
	d1 := ""
	check(err1)
	defer f1.Close()
	if _, err := f1.WriteString(d1); err != nil {
		log.Println(err)
	}

	// clear file
	f2, err2 := os.OpenFile("mavg_out_log.txt",
		os.O_TRUNC|os.O_CREATE|os.O_WRONLY, 0644)
	check(err2)
	defer f2.Close()
	if _, err := f2.WriteString(d1); err != nil {
		log.Println(err)
	}

	mqtt_subscribe()

	select {} // block forever
}
