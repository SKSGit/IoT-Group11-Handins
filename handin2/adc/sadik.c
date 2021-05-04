#include <time.h>

void delay(){
    struct timespec ts;
    ts.tv_nsec = 100000000;
    ts.tv_sec = 0;
    nanosleep(&ts,&ts);
}

int main(int argc, char *argv[]) {
    delay();
}