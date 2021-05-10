	.file	"main.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.TaskSample,"ax",@progbits
	.align	1
	.globl	TaskSample
	.type	TaskSample, @function
TaskSample:
.LFB9:
	.file 1 "/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/adc/main.c"
	.loc 1 16 1
	.cfi_startproc
.LVL0:
	.loc 1 17 5
	.loc 1 16 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	.loc 1 17 18
	lui	a1,%hi(.LANCHOR0)
	li	a2,14
	addi	a1,a1,%lo(.LANCHOR0)
	addi	a0,sp,16
.LVL1:
	.loc 1 16 1
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s2,48(sp)
	sw	s1,52(sp)
	sw	s3,44(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.loc 1 17 18
	call	memcpy
.LVL2:
	.loc 1 32 5 is_stmt 1
	.loc 1 32 23 is_stmt 0
	sh	zero,8(sp)
	.loc 1 36 5 is_stmt 1
	call	ADC_Reset
.LVL3:
	.loc 1 37 5
	call	ADC_Disable
.LVL4:
	.loc 1 38 5
	call	ADC_Enable
.LVL5:
	.loc 1 39 5
	addi	a0,sp,16
	call	ADC_Init
.LVL6:
	.loc 1 40 5
	li	a2,0
	li	a1,23
	li	a0,1
	call	ADC_Channel_Config
.LVL7:
	.loc 1 41 5
	addi	a0,sp,8
	call	ADC_FIFO_Cfg
.LVL8:
	.loc 1 42 5
	call	bl_rtc_init
.LVL9:
	.loc 1 43 5
	.loc 1 43 32 is_stmt 0
	call	xTaskGetTickCount
.LVL10:
.LBB2:
	.loc 1 53 22
	li	s0,4096
.LBE2:
	.loc 1 43 16
	sw	a0,12(sp)
	.loc 1 44 5 is_stmt 1
.LVL11:
.LBB3:
	.loc 1 53 22 is_stmt 0
	addi	s0,s0,-1
	.loc 1 55 9
	lui	s2,%hi(.LC1)
.L3:
.LBE3:
	.loc 1 45 5 is_stmt 1
.LBB4:
	.loc 1 47 9
	call	ADC_Start
.LVL12:
	.loc 1 48 9
.L2:
	.loc 1 49 13 discriminator 1
	.loc 1 48 16 is_stmt 0 discriminator 1
	call	ADC_Get_FIFO_Count
.LVL13:
	.loc 1 48 15 discriminator 1
	beq	a0,zero,.L2
	.loc 1 50 9 is_stmt 1
	.loc 1 50 27 is_stmt 0
	call	ADC_Read_FIFO
.LVL14:
	mv	s1,a0
.LVL15:
	.loc 1 51 9 is_stmt 1
	.loc 1 51 22 is_stmt 0
	call	bl_rtc_get_timestamp_ms
.LVL16:
	mv	s3,a0
.LVL17:
	.loc 1 53 9 is_stmt 1
	.loc 1 54 9
	li	a1,100
	addi	a0,sp,12
.LVL18:
	call	vTaskDelayUntil
.LVL19:
	.loc 1 55 9
	.loc 1 53 62 is_stmt 0
	srli	a2,s1,4
	.loc 1 55 9
	and	a2,a2,s0
	mv	a1,s3
	addi	a0,s2,%lo(.LC1)
	call	printf
.LVL20:
.LBE4:
	.loc 1 46 5
	j	.L3
	.cfi_endproc
.LFE9:
	.size	TaskSample, .-TaskSample
	.section	.text.bfl_main,"ax",@progbits
	.align	1
	.globl	bfl_main
	.type	bfl_main, @function
bfl_main:
.LFB10:
	.loc 1 60 1 is_stmt 1
	.cfi_startproc
	.loc 1 61 5
	.loc 1 60 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 61 5
	call	system_init
.LVL21:
	.loc 1 62 5 is_stmt 1
	li	a5,8192
	addi	a5,a5,1408
	li	a4,255
	li	a3,255
	li	a2,7
	li	a1,16
	li	a0,0
	call	bl_uart_init
.LVL22:
	.loc 1 63 5
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL23:
	.loc 1 64 5
	lui	a1,%hi(.LC3)
	lui	a0,%hi(TaskSample)
	li	a5,0
	li	a4,1
	li	a3,0
	li	a2,1024
	addi	a1,a1,%lo(.LC3)
	addi	a0,a0,%lo(TaskSample)
	call	xTaskCreate
.LVL24:
	.loc 1 65 5
	.loc 1 66 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 65 5
	tail	vTaskStartScheduler
.LVL25:
	.cfi_endproc
.LFE10:
	.size	bfl_main, .-bfl_main
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC0:
	.byte	2
	.byte	1
	.byte	4
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.half	0
	.section	.rodata.TaskSample.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"%u,%u\n"
	.section	.rodata.bfl_main.str1.4,"aMS",@progbits,1
	.align	2
.LC2:
	.string	"booted\n"
.LC3:
	.string	"Blink"
	.text
.Letext0:
	.file 2 "/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h"
	.file 4 "/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h"
	.file 5 "/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h"
	.file 6 "/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h"
	.file 7 "/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 8 "/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 9 "/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/bl_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Device/Bouffalo/BL602/Startup/system_bl602.h"
	.file 10 "/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 11 "/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_adc.h"
	.file 12 "/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/time.h"
	.file 13 "/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/adc/system.h"
	.file 14 "/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/bl_iot_sdk/components/hal_drv/bl602_hal/bl_uart.h"
	.file 15 "/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 16 "/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
	.file 17 "/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/bl_iot_sdk/components/hal_drv/bl602_hal/bl_rtc.h"
	.file 18 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x111e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF259
	.byte	0xc
	.4byte	.LASF260
	.4byte	.LASF261
	.4byte	.Ldebug_ranges0+0x20
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x37
	.byte	0x13
	.4byte	0x3f
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.byte	0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4d
	.byte	0x12
	.4byte	0x59
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x6c
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x5
	.4byte	.LASF12
	.byte	0x3
	.2byte	0x165
	.byte	0x16
	.4byte	0x88
	.byte	0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2e
	.byte	0xe
	.4byte	0x59
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x74
	.byte	0xe
	.4byte	0x59
	.byte	0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x93
	.byte	0x14
	.4byte	0x81
	.byte	0x6
	.byte	0x4
	.byte	0x4
	.byte	0xa5
	.byte	0x3
	.4byte	0xe2
	.byte	0x7
	.4byte	.LASF16
	.byte	0x4
	.byte	0xa7
	.byte	0xc
	.4byte	0x8f
	.byte	0x7
	.4byte	.LASF17
	.byte	0x4
	.byte	0xa8
	.byte	0x13
	.4byte	0xe2
	.byte	0
	.byte	0x8
	.4byte	0x2c
	.4byte	0xf2
	.byte	0x9
	.4byte	0x88
	.byte	0x3
	.byte	0
	.byte	0xa
	.byte	0x8
	.byte	0x4
	.byte	0xa2
	.byte	0x9
	.4byte	0x116
	.byte	0xb
	.4byte	.LASF18
	.byte	0x4
	.byte	0xa4
	.byte	0x7
	.4byte	0x81
	.byte	0
	.byte	0xb
	.4byte	.LASF19
	.byte	0x4
	.byte	0xa9
	.byte	0x5
	.4byte	0xc0
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0xaa
	.byte	0x3
	.4byte	0xf2
	.byte	0xc
	.byte	0x4
	.byte	0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x16
	.byte	0x17
	.4byte	0x6c
	.byte	0x3
	.4byte	.LASF22
	.byte	0x6
	.byte	0xc
	.byte	0xd
	.4byte	0x81
	.byte	0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0x23
	.byte	0x1b
	.4byte	0x130
	.byte	0xd
	.4byte	.LASF28
	.byte	0x18
	.byte	0x5
	.byte	0x34
	.byte	0x8
	.4byte	0x1a2
	.byte	0xb
	.4byte	.LASF24
	.byte	0x5
	.byte	0x36
	.byte	0x13
	.4byte	0x1a2
	.byte	0
	.byte	0xe
	.string	"_k"
	.byte	0x5
	.byte	0x37
	.byte	0x7
	.4byte	0x81
	.byte	0x4
	.byte	0xb
	.4byte	.LASF25
	.byte	0x5
	.byte	0x37
	.byte	0xb
	.4byte	0x81
	.byte	0x8
	.byte	0xb
	.4byte	.LASF26
	.byte	0x5
	.byte	0x37
	.byte	0x14
	.4byte	0x81
	.byte	0xc
	.byte	0xb
	.4byte	.LASF27
	.byte	0x5
	.byte	0x37
	.byte	0x1b
	.4byte	0x81
	.byte	0x10
	.byte	0xe
	.string	"_x"
	.byte	0x5
	.byte	0x38
	.byte	0xb
	.4byte	0x1a8
	.byte	0x14
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x148
	.byte	0x8
	.4byte	0x124
	.4byte	0x1b8
	.byte	0x9
	.4byte	0x88
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF29
	.byte	0x24
	.byte	0x5
	.byte	0x3c
	.byte	0x8
	.4byte	0x23b
	.byte	0xb
	.4byte	.LASF30
	.byte	0x5
	.byte	0x3e
	.byte	0x7
	.4byte	0x81
	.byte	0
	.byte	0xb
	.4byte	.LASF31
	.byte	0x5
	.byte	0x3f
	.byte	0x7
	.4byte	0x81
	.byte	0x4
	.byte	0xb
	.4byte	.LASF32
	.byte	0x5
	.byte	0x40
	.byte	0x7
	.4byte	0x81
	.byte	0x8
	.byte	0xb
	.4byte	.LASF33
	.byte	0x5
	.byte	0x41
	.byte	0x7
	.4byte	0x81
	.byte	0xc
	.byte	0xb
	.4byte	.LASF34
	.byte	0x5
	.byte	0x42
	.byte	0x7
	.4byte	0x81
	.byte	0x10
	.byte	0xb
	.4byte	.LASF35
	.byte	0x5
	.byte	0x43
	.byte	0x7
	.4byte	0x81
	.byte	0x14
	.byte	0xb
	.4byte	.LASF36
	.byte	0x5
	.byte	0x44
	.byte	0x7
	.4byte	0x81
	.byte	0x18
	.byte	0xb
	.4byte	.LASF37
	.byte	0x5
	.byte	0x45
	.byte	0x7
	.4byte	0x81
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF38
	.byte	0x5
	.byte	0x46
	.byte	0x7
	.4byte	0x81
	.byte	0x20
	.byte	0
	.byte	0x10
	.4byte	.LASF39
	.2byte	0x108
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.4byte	0x280
	.byte	0xb
	.4byte	.LASF40
	.byte	0x5
	.byte	0x50
	.byte	0x9
	.4byte	0x280
	.byte	0
	.byte	0xb
	.4byte	.LASF41
	.byte	0x5
	.byte	0x51
	.byte	0x9
	.4byte	0x280
	.byte	0x80
	.byte	0x11
	.4byte	.LASF42
	.byte	0x5
	.byte	0x53
	.byte	0xa
	.4byte	0x124
	.2byte	0x100
	.byte	0x11
	.4byte	.LASF43
	.byte	0x5
	.byte	0x56
	.byte	0xa
	.4byte	0x124
	.2byte	0x104
	.byte	0
	.byte	0x8
	.4byte	0x122
	.4byte	0x290
	.byte	0x9
	.4byte	0x88
	.byte	0x1f
	.byte	0
	.byte	0x10
	.4byte	.LASF44
	.2byte	0x190
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.4byte	0x2d3
	.byte	0xb
	.4byte	.LASF24
	.byte	0x5
	.byte	0x63
	.byte	0x12
	.4byte	0x2d3
	.byte	0
	.byte	0xb
	.4byte	.LASF45
	.byte	0x5
	.byte	0x64
	.byte	0x6
	.4byte	0x81
	.byte	0x4
	.byte	0xb
	.4byte	.LASF46
	.byte	0x5
	.byte	0x66
	.byte	0x9
	.4byte	0x2d9
	.byte	0x8
	.byte	0xb
	.4byte	.LASF39
	.byte	0x5
	.byte	0x67
	.byte	0x1e
	.4byte	0x23b
	.byte	0x88
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x290
	.byte	0x8
	.4byte	0x2e9
	.4byte	0x2e9
	.byte	0x9
	.4byte	0x88
	.byte	0x1f
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x2ef
	.byte	0x12
	.byte	0xd
	.4byte	.LASF47
	.byte	0x8
	.byte	0x5
	.byte	0x7a
	.byte	0x8
	.4byte	0x318
	.byte	0xb
	.4byte	.LASF48
	.byte	0x5
	.byte	0x7b
	.byte	0x11
	.4byte	0x318
	.byte	0
	.byte	0xb
	.4byte	.LASF49
	.byte	0x5
	.byte	0x7c
	.byte	0x6
	.4byte	0x81
	.byte	0x4
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x2c
	.byte	0xd
	.4byte	.LASF50
	.byte	0x68
	.byte	0x5
	.byte	0xba
	.byte	0x8
	.4byte	0x461
	.byte	0xe
	.string	"_p"
	.byte	0x5
	.byte	0xbb
	.byte	0x12
	.4byte	0x318
	.byte	0
	.byte	0xe
	.string	"_r"
	.byte	0x5
	.byte	0xbc
	.byte	0x7
	.4byte	0x81
	.byte	0x4
	.byte	0xe
	.string	"_w"
	.byte	0x5
	.byte	0xbd
	.byte	0x7
	.4byte	0x81
	.byte	0x8
	.byte	0xb
	.4byte	.LASF51
	.byte	0x5
	.byte	0xbe
	.byte	0x9
	.4byte	0x3f
	.byte	0xc
	.byte	0xb
	.4byte	.LASF52
	.byte	0x5
	.byte	0xbf
	.byte	0x9
	.4byte	0x3f
	.byte	0xe
	.byte	0xe
	.string	"_bf"
	.byte	0x5
	.byte	0xc0
	.byte	0x11
	.4byte	0x2f0
	.byte	0x10
	.byte	0xb
	.4byte	.LASF53
	.byte	0x5
	.byte	0xc1
	.byte	0x7
	.4byte	0x81
	.byte	0x18
	.byte	0xb
	.4byte	.LASF54
	.byte	0x5
	.byte	0xc8
	.byte	0xa
	.4byte	0x122
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF55
	.byte	0x5
	.byte	0xca
	.byte	0xe
	.4byte	0x5e5
	.byte	0x20
	.byte	0xb
	.4byte	.LASF56
	.byte	0x5
	.byte	0xcc
	.byte	0xe
	.4byte	0x60f
	.byte	0x24
	.byte	0xb
	.4byte	.LASF57
	.byte	0x5
	.byte	0xcf
	.byte	0xd
	.4byte	0x633
	.byte	0x28
	.byte	0xb
	.4byte	.LASF58
	.byte	0x5
	.byte	0xd0
	.byte	0x9
	.4byte	0x64d
	.byte	0x2c
	.byte	0xe
	.string	"_ub"
	.byte	0x5
	.byte	0xd3
	.byte	0x11
	.4byte	0x2f0
	.byte	0x30
	.byte	0xe
	.string	"_up"
	.byte	0x5
	.byte	0xd4
	.byte	0x12
	.4byte	0x318
	.byte	0x38
	.byte	0xe
	.string	"_ur"
	.byte	0x5
	.byte	0xd5
	.byte	0x7
	.4byte	0x81
	.byte	0x3c
	.byte	0xb
	.4byte	.LASF59
	.byte	0x5
	.byte	0xd8
	.byte	0x11
	.4byte	0x653
	.byte	0x40
	.byte	0xb
	.4byte	.LASF60
	.byte	0x5
	.byte	0xd9
	.byte	0x11
	.4byte	0x663
	.byte	0x43
	.byte	0xe
	.string	"_lb"
	.byte	0x5
	.byte	0xdc
	.byte	0x11
	.4byte	0x2f0
	.byte	0x44
	.byte	0xb
	.4byte	.LASF61
	.byte	0x5
	.byte	0xdf
	.byte	0x7
	.4byte	0x81
	.byte	0x4c
	.byte	0xb
	.4byte	.LASF62
	.byte	0x5
	.byte	0xe0
	.byte	0xa
	.4byte	0x9c
	.byte	0x50
	.byte	0xb
	.4byte	.LASF63
	.byte	0x5
	.byte	0xe3
	.byte	0x12
	.4byte	0x47f
	.byte	0x54
	.byte	0xb
	.4byte	.LASF64
	.byte	0x5
	.byte	0xe7
	.byte	0xc
	.4byte	0x13c
	.byte	0x58
	.byte	0xb
	.4byte	.LASF65
	.byte	0x5
	.byte	0xe9
	.byte	0xe
	.4byte	0x116
	.byte	0x5c
	.byte	0xb
	.4byte	.LASF66
	.byte	0x5
	.byte	0xea
	.byte	0x7
	.4byte	0x81
	.byte	0x64
	.byte	0
	.byte	0x13
	.4byte	0xb4
	.4byte	0x47f
	.byte	0x14
	.4byte	0x47f
	.byte	0x14
	.4byte	0x122
	.byte	0x14
	.4byte	0x5d3
	.byte	0x14
	.4byte	0x81
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x48a
	.byte	0x15
	.4byte	0x47f
	.byte	0x16
	.4byte	.LASF67
	.2byte	0x428
	.byte	0x5
	.2byte	0x265
	.byte	0x8
	.4byte	0x5d3
	.byte	0x17
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x267
	.byte	0x7
	.4byte	0x81
	.byte	0
	.byte	0x17
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x26c
	.byte	0xb
	.4byte	0x6bf
	.byte	0x4
	.byte	0x17
	.4byte	.LASF70
	.byte	0x5
	.2byte	0x26c
	.byte	0x14
	.4byte	0x6bf
	.byte	0x8
	.byte	0x17
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x26c
	.byte	0x1e
	.4byte	0x6bf
	.byte	0xc
	.byte	0x17
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x26e
	.byte	0x7
	.4byte	0x81
	.byte	0x10
	.byte	0x17
	.4byte	.LASF73
	.byte	0x5
	.2byte	0x26f
	.byte	0x8
	.4byte	0x8bf
	.byte	0x14
	.byte	0x17
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x272
	.byte	0x7
	.4byte	0x81
	.byte	0x30
	.byte	0x17
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x273
	.byte	0x16
	.4byte	0x8d4
	.byte	0x34
	.byte	0x17
	.4byte	.LASF76
	.byte	0x5
	.2byte	0x275
	.byte	0x7
	.4byte	0x81
	.byte	0x38
	.byte	0x17
	.4byte	.LASF77
	.byte	0x5
	.2byte	0x277
	.byte	0xa
	.4byte	0x8e5
	.byte	0x3c
	.byte	0x17
	.4byte	.LASF78
	.byte	0x5
	.2byte	0x27a
	.byte	0x13
	.4byte	0x1a2
	.byte	0x40
	.byte	0x17
	.4byte	.LASF79
	.byte	0x5
	.2byte	0x27b
	.byte	0x7
	.4byte	0x81
	.byte	0x44
	.byte	0x17
	.4byte	.LASF80
	.byte	0x5
	.2byte	0x27c
	.byte	0x13
	.4byte	0x1a2
	.byte	0x48
	.byte	0x17
	.4byte	.LASF81
	.byte	0x5
	.2byte	0x27d
	.byte	0x14
	.4byte	0x8eb
	.byte	0x4c
	.byte	0x17
	.4byte	.LASF82
	.byte	0x5
	.2byte	0x280
	.byte	0x7
	.4byte	0x81
	.byte	0x50
	.byte	0x17
	.4byte	.LASF83
	.byte	0x5
	.2byte	0x281
	.byte	0x9
	.4byte	0x5d3
	.byte	0x54
	.byte	0x17
	.4byte	.LASF84
	.byte	0x5
	.2byte	0x2a4
	.byte	0x7
	.4byte	0x89a
	.byte	0x58
	.byte	0x18
	.4byte	.LASF44
	.byte	0x5
	.2byte	0x2a8
	.byte	0x13
	.4byte	0x2d3
	.2byte	0x148
	.byte	0x18
	.4byte	.LASF85
	.byte	0x5
	.2byte	0x2a9
	.byte	0x12
	.4byte	0x290
	.2byte	0x14c
	.byte	0x18
	.4byte	.LASF86
	.byte	0x5
	.2byte	0x2ad
	.byte	0xc
	.4byte	0x8fc
	.2byte	0x2dc
	.byte	0x18
	.4byte	.LASF87
	.byte	0x5
	.2byte	0x2b2
	.byte	0x10
	.4byte	0x680
	.2byte	0x2e0
	.byte	0x18
	.4byte	.LASF88
	.byte	0x5
	.2byte	0x2b4
	.byte	0xa
	.4byte	0x908
	.2byte	0x2ec
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x5d9
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF89
	.byte	0x15
	.4byte	0x5d9
	.byte	0xf
	.byte	0x4
	.4byte	0x461
	.byte	0x13
	.4byte	0xb4
	.4byte	0x609
	.byte	0x14
	.4byte	0x47f
	.byte	0x14
	.4byte	0x122
	.byte	0x14
	.4byte	0x609
	.byte	0x14
	.4byte	0x81
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x5e0
	.byte	0xf
	.byte	0x4
	.4byte	0x5eb
	.byte	0x13
	.4byte	0xa8
	.4byte	0x633
	.byte	0x14
	.4byte	0x47f
	.byte	0x14
	.4byte	0x122
	.byte	0x14
	.4byte	0xa8
	.byte	0x14
	.4byte	0x81
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x615
	.byte	0x13
	.4byte	0x81
	.4byte	0x64d
	.byte	0x14
	.4byte	0x47f
	.byte	0x14
	.4byte	0x122
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x639
	.byte	0x8
	.4byte	0x2c
	.4byte	0x663
	.byte	0x9
	.4byte	0x88
	.byte	0x2
	.byte	0
	.byte	0x8
	.4byte	0x2c
	.4byte	0x673
	.byte	0x9
	.4byte	0x88
	.byte	0
	.byte	0
	.byte	0x5
	.4byte	.LASF90
	.byte	0x5
	.2byte	0x124
	.byte	0x18
	.4byte	0x31e
	.byte	0x19
	.4byte	.LASF91
	.byte	0xc
	.byte	0x5
	.2byte	0x128
	.byte	0x8
	.4byte	0x6b9
	.byte	0x17
	.4byte	.LASF24
	.byte	0x5
	.2byte	0x12a
	.byte	0x11
	.4byte	0x6b9
	.byte	0
	.byte	0x17
	.4byte	.LASF92
	.byte	0x5
	.2byte	0x12b
	.byte	0x7
	.4byte	0x81
	.byte	0x4
	.byte	0x17
	.4byte	.LASF93
	.byte	0x5
	.2byte	0x12c
	.byte	0xb
	.4byte	0x6bf
	.byte	0x8
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x680
	.byte	0xf
	.byte	0x4
	.4byte	0x673
	.byte	0x19
	.4byte	.LASF94
	.byte	0xe
	.byte	0x5
	.2byte	0x144
	.byte	0x8
	.4byte	0x6fe
	.byte	0x17
	.4byte	.LASF95
	.byte	0x5
	.2byte	0x145
	.byte	0x12
	.4byte	0x6fe
	.byte	0
	.byte	0x17
	.4byte	.LASF96
	.byte	0x5
	.2byte	0x146
	.byte	0x12
	.4byte	0x6fe
	.byte	0x6
	.byte	0x17
	.4byte	.LASF97
	.byte	0x5
	.2byte	0x147
	.byte	0x12
	.4byte	0x46
	.byte	0xc
	.byte	0
	.byte	0x8
	.4byte	0x46
	.4byte	0x70e
	.byte	0x9
	.4byte	0x88
	.byte	0x2
	.byte	0
	.byte	0x1a
	.byte	0xd0
	.byte	0x5
	.2byte	0x285
	.byte	0x7
	.4byte	0x823
	.byte	0x17
	.4byte	.LASF98
	.byte	0x5
	.2byte	0x287
	.byte	0x18
	.4byte	0x88
	.byte	0
	.byte	0x17
	.4byte	.LASF99
	.byte	0x5
	.2byte	0x288
	.byte	0x12
	.4byte	0x5d3
	.byte	0x4
	.byte	0x17
	.4byte	.LASF100
	.byte	0x5
	.2byte	0x289
	.byte	0x10
	.4byte	0x823
	.byte	0x8
	.byte	0x17
	.4byte	.LASF101
	.byte	0x5
	.2byte	0x28a
	.byte	0x17
	.4byte	0x1b8
	.byte	0x24
	.byte	0x17
	.4byte	.LASF102
	.byte	0x5
	.2byte	0x28b
	.byte	0xf
	.4byte	0x81
	.byte	0x48
	.byte	0x17
	.4byte	.LASF103
	.byte	0x5
	.2byte	0x28c
	.byte	0x2c
	.4byte	0x7a
	.byte	0x50
	.byte	0x17
	.4byte	.LASF104
	.byte	0x5
	.2byte	0x28d
	.byte	0x1a
	.4byte	0x6c5
	.byte	0x58
	.byte	0x17
	.4byte	.LASF105
	.byte	0x5
	.2byte	0x28e
	.byte	0x16
	.4byte	0x116
	.byte	0x68
	.byte	0x17
	.4byte	.LASF106
	.byte	0x5
	.2byte	0x28f
	.byte	0x16
	.4byte	0x116
	.byte	0x70
	.byte	0x17
	.4byte	.LASF107
	.byte	0x5
	.2byte	0x290
	.byte	0x16
	.4byte	0x116
	.byte	0x78
	.byte	0x17
	.4byte	.LASF108
	.byte	0x5
	.2byte	0x291
	.byte	0x10
	.4byte	0x833
	.byte	0x80
	.byte	0x17
	.4byte	.LASF109
	.byte	0x5
	.2byte	0x292
	.byte	0x10
	.4byte	0x843
	.byte	0x88
	.byte	0x17
	.4byte	.LASF110
	.byte	0x5
	.2byte	0x293
	.byte	0xf
	.4byte	0x81
	.byte	0xa0
	.byte	0x17
	.4byte	.LASF111
	.byte	0x5
	.2byte	0x294
	.byte	0x16
	.4byte	0x116
	.byte	0xa4
	.byte	0x17
	.4byte	.LASF112
	.byte	0x5
	.2byte	0x295
	.byte	0x16
	.4byte	0x116
	.byte	0xac
	.byte	0x17
	.4byte	.LASF113
	.byte	0x5
	.2byte	0x296
	.byte	0x16
	.4byte	0x116
	.byte	0xb4
	.byte	0x17
	.4byte	.LASF114
	.byte	0x5
	.2byte	0x297
	.byte	0x16
	.4byte	0x116
	.byte	0xbc
	.byte	0x17
	.4byte	.LASF115
	.byte	0x5
	.2byte	0x298
	.byte	0x16
	.4byte	0x116
	.byte	0xc4
	.byte	0x17
	.4byte	.LASF116
	.byte	0x5
	.2byte	0x299
	.byte	0x8
	.4byte	0x81
	.byte	0xcc
	.byte	0
	.byte	0x8
	.4byte	0x5d9
	.4byte	0x833
	.byte	0x9
	.4byte	0x88
	.byte	0x19
	.byte	0
	.byte	0x8
	.4byte	0x5d9
	.4byte	0x843
	.byte	0x9
	.4byte	0x88
	.byte	0x7
	.byte	0
	.byte	0x8
	.4byte	0x5d9
	.4byte	0x853
	.byte	0x9
	.4byte	0x88
	.byte	0x17
	.byte	0
	.byte	0x1a
	.byte	0xf0
	.byte	0x5
	.2byte	0x29e
	.byte	0x7
	.4byte	0x87a
	.byte	0x17
	.4byte	.LASF117
	.byte	0x5
	.2byte	0x2a1
	.byte	0x1b
	.4byte	0x87a
	.byte	0
	.byte	0x17
	.4byte	.LASF118
	.byte	0x5
	.2byte	0x2a2
	.byte	0x18
	.4byte	0x88a
	.byte	0x78
	.byte	0
	.byte	0x8
	.4byte	0x318
	.4byte	0x88a
	.byte	0x9
	.4byte	0x88
	.byte	0x1d
	.byte	0
	.byte	0x8
	.4byte	0x88
	.4byte	0x89a
	.byte	0x9
	.4byte	0x88
	.byte	0x1d
	.byte	0
	.byte	0x1b
	.byte	0xf0
	.byte	0x5
	.2byte	0x283
	.byte	0x3
	.4byte	0x8bf
	.byte	0x1c
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x29a
	.byte	0xb
	.4byte	0x70e
	.byte	0x1c
	.4byte	.LASF119
	.byte	0x5
	.2byte	0x2a3
	.byte	0xb
	.4byte	0x853
	.byte	0
	.byte	0x8
	.4byte	0x5d9
	.4byte	0x8cf
	.byte	0x9
	.4byte	0x88
	.byte	0x18
	.byte	0
	.byte	0x1d
	.4byte	.LASF262
	.byte	0xf
	.byte	0x4
	.4byte	0x8cf
	.byte	0x1e
	.4byte	0x8e5
	.byte	0x14
	.4byte	0x47f
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x8da
	.byte	0xf
	.byte	0x4
	.4byte	0x1a2
	.byte	0x1e
	.4byte	0x8fc
	.byte	0x14
	.4byte	0x81
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x902
	.byte	0xf
	.byte	0x4
	.4byte	0x8f1
	.byte	0x8
	.4byte	0x673
	.4byte	0x918
	.byte	0x9
	.4byte	0x88
	.byte	0x2
	.byte	0
	.byte	0x1f
	.4byte	.LASF120
	.byte	0x5
	.2byte	0x333
	.byte	0x17
	.4byte	0x47f
	.byte	0x1f
	.4byte	.LASF121
	.byte	0x5
	.2byte	0x334
	.byte	0x1d
	.4byte	0x485
	.byte	0x3
	.4byte	.LASF122
	.byte	0x7
	.byte	0x20
	.byte	0x13
	.4byte	0x33
	.byte	0x3
	.4byte	.LASF123
	.byte	0x7
	.byte	0x2c
	.byte	0x13
	.4byte	0x4d
	.byte	0x3
	.4byte	.LASF124
	.byte	0x7
	.byte	0x30
	.byte	0x14
	.4byte	0x60
	.byte	0x3
	.4byte	.LASF125
	.byte	0x8
	.byte	0x3f
	.byte	0x11
	.4byte	0x93e
	.byte	0x3
	.4byte	.LASF126
	.byte	0x8
	.byte	0x41
	.byte	0x12
	.4byte	0x94a
	.byte	0x15
	.4byte	0x962
	.byte	0x20
	.4byte	.LASF127
	.byte	0x8
	.byte	0x54
	.byte	0x13
	.4byte	0x956
	.byte	0x20
	.4byte	.LASF128
	.byte	0x9
	.byte	0x8
	.byte	0x11
	.4byte	0x94a
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x2c
	.byte	0xa
	.byte	0x21
	.byte	0x1
	.4byte	0x9a6
	.byte	0x22
	.4byte	.LASF129
	.byte	0
	.byte	0x22
	.4byte	.LASF130
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF131
	.byte	0xa
	.byte	0x24
	.byte	0x2
	.4byte	0x98b
	.byte	0x3
	.4byte	.LASF132
	.byte	0xa
	.byte	0x7c
	.byte	0xf
	.4byte	0x2ef
	.byte	0x8
	.4byte	0x9c9
	.4byte	0x9c9
	.byte	0x23
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x9cf
	.byte	0xf
	.byte	0x4
	.4byte	0x9b2
	.byte	0x20
	.4byte	.LASF133
	.byte	0xa
	.byte	0x84
	.byte	0x1c
	.4byte	0x9be
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x2c
	.byte	0xb
	.byte	0x3a
	.byte	0xe
	.4byte	0xa80
	.byte	0x22
	.4byte	.LASF134
	.byte	0
	.byte	0x22
	.4byte	.LASF135
	.byte	0x1
	.byte	0x22
	.4byte	.LASF136
	.byte	0x2
	.byte	0x22
	.4byte	.LASF137
	.byte	0x3
	.byte	0x22
	.4byte	.LASF138
	.byte	0x4
	.byte	0x22
	.4byte	.LASF139
	.byte	0x5
	.byte	0x22
	.4byte	.LASF140
	.byte	0x6
	.byte	0x22
	.4byte	.LASF141
	.byte	0x7
	.byte	0x22
	.4byte	.LASF142
	.byte	0x8
	.byte	0x22
	.4byte	.LASF143
	.byte	0x9
	.byte	0x22
	.4byte	.LASF144
	.byte	0xa
	.byte	0x22
	.4byte	.LASF145
	.byte	0xb
	.byte	0x22
	.4byte	.LASF146
	.byte	0xc
	.byte	0x22
	.4byte	.LASF147
	.byte	0xd
	.byte	0x22
	.4byte	.LASF148
	.byte	0xe
	.byte	0x22
	.4byte	.LASF149
	.byte	0xf
	.byte	0x22
	.4byte	.LASF150
	.byte	0x10
	.byte	0x22
	.4byte	.LASF151
	.byte	0x11
	.byte	0x22
	.4byte	.LASF152
	.byte	0x12
	.byte	0x22
	.4byte	.LASF153
	.byte	0x13
	.byte	0x22
	.4byte	.LASF154
	.byte	0x14
	.byte	0x22
	.4byte	.LASF155
	.byte	0x15
	.byte	0x22
	.4byte	.LASF156
	.byte	0x16
	.byte	0x22
	.4byte	.LASF157
	.byte	0x17
	.byte	0
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x2c
	.byte	0xb
	.byte	0x58
	.byte	0xe
	.4byte	0xaa7
	.byte	0x22
	.4byte	.LASF158
	.byte	0
	.byte	0x22
	.4byte	.LASF159
	.byte	0x1
	.byte	0x22
	.4byte	.LASF160
	.byte	0x2
	.byte	0x22
	.4byte	.LASF161
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF162
	.byte	0xb
	.byte	0x5d
	.byte	0x2
	.4byte	0xa80
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x2c
	.byte	0xb
	.byte	0x62
	.byte	0xe
	.4byte	0xada
	.byte	0x22
	.4byte	.LASF163
	.byte	0
	.byte	0x22
	.4byte	.LASF164
	.byte	0x1
	.byte	0x22
	.4byte	.LASF165
	.byte	0x2
	.byte	0x22
	.4byte	.LASF166
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF167
	.byte	0xb
	.byte	0x67
	.byte	0x2
	.4byte	0xab3
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x2c
	.byte	0xb
	.byte	0x6c
	.byte	0xe
	.4byte	0xb25
	.byte	0x22
	.4byte	.LASF168
	.byte	0
	.byte	0x22
	.4byte	.LASF169
	.byte	0x1
	.byte	0x22
	.4byte	.LASF170
	.byte	0x2
	.byte	0x22
	.4byte	.LASF171
	.byte	0x3
	.byte	0x22
	.4byte	.LASF172
	.byte	0x4
	.byte	0x22
	.4byte	.LASF173
	.byte	0x5
	.byte	0x22
	.4byte	.LASF174
	.byte	0x6
	.byte	0x22
	.4byte	.LASF175
	.byte	0x7
	.byte	0
	.byte	0x3
	.4byte	.LASF176
	.byte	0xb
	.byte	0x75
	.byte	0x2
	.4byte	0xae6
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x2c
	.byte	0xb
	.byte	0x88
	.byte	0xe
	.4byte	0xb6a
	.byte	0x22
	.4byte	.LASF177
	.byte	0
	.byte	0x22
	.4byte	.LASF178
	.byte	0x1
	.byte	0x22
	.4byte	.LASF179
	.byte	0x2
	.byte	0x22
	.4byte	.LASF180
	.byte	0x3
	.byte	0x22
	.4byte	.LASF181
	.byte	0x4
	.byte	0x22
	.4byte	.LASF182
	.byte	0x5
	.byte	0x22
	.4byte	.LASF183
	.byte	0x6
	.byte	0
	.byte	0x3
	.4byte	.LASF184
	.byte	0xb
	.byte	0x90
	.byte	0x2
	.4byte	0xb31
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x2c
	.byte	0xb
	.byte	0x95
	.byte	0xe
	.4byte	0xb91
	.byte	0x22
	.4byte	.LASF185
	.byte	0
	.byte	0x22
	.4byte	.LASF186
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF187
	.byte	0xb
	.byte	0x98
	.byte	0x2
	.4byte	0xb76
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x2c
	.byte	0xb
	.byte	0x9d
	.byte	0xe
	.4byte	0xbc4
	.byte	0x22
	.4byte	.LASF188
	.byte	0
	.byte	0x22
	.4byte	.LASF189
	.byte	0x1
	.byte	0x22
	.4byte	.LASF190
	.byte	0x2
	.byte	0x22
	.4byte	.LASF191
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF192
	.byte	0xb
	.byte	0xa2
	.byte	0x2
	.4byte	0xb9d
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x2c
	.byte	0xb
	.byte	0xa7
	.byte	0xe
	.4byte	0xbf7
	.byte	0x22
	.4byte	.LASF193
	.byte	0
	.byte	0x22
	.4byte	.LASF194
	.byte	0x1
	.byte	0x22
	.4byte	.LASF195
	.byte	0x2
	.byte	0x22
	.4byte	.LASF196
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF197
	.byte	0xb
	.byte	0xac
	.byte	0x2
	.4byte	0xbd0
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x2c
	.byte	0xb
	.byte	0xb9
	.byte	0xe
	.4byte	0xc1e
	.byte	0x22
	.4byte	.LASF198
	.byte	0
	.byte	0x22
	.4byte	.LASF199
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF200
	.byte	0xb
	.byte	0xbc
	.byte	0x2
	.4byte	0xc03
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x2c
	.byte	0xb
	.byte	0xc1
	.byte	0xe
	.4byte	0xc45
	.byte	0x22
	.4byte	.LASF201
	.byte	0
	.byte	0x22
	.4byte	.LASF202
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF203
	.byte	0xb
	.byte	0xc4
	.byte	0x2
	.4byte	0xc2a
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x2c
	.byte	0xb
	.byte	0xc9
	.byte	0xe
	.4byte	0xc7e
	.byte	0x22
	.4byte	.LASF204
	.byte	0
	.byte	0x22
	.4byte	.LASF205
	.byte	0x1
	.byte	0x22
	.4byte	.LASF206
	.byte	0x2
	.byte	0x22
	.4byte	.LASF207
	.byte	0x3
	.byte	0x22
	.4byte	.LASF208
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF209
	.byte	0xb
	.byte	0xcf
	.byte	0x2
	.4byte	0xc51
	.byte	0xa
	.byte	0xe
	.byte	0xb
	.byte	0xfc
	.byte	0x9
	.4byte	0xd47
	.byte	0xb
	.4byte	.LASF210
	.byte	0xb
	.byte	0xfd
	.byte	0x16
	.4byte	0xaa7
	.byte	0
	.byte	0xb
	.4byte	.LASF211
	.byte	0xb
	.byte	0xfe
	.byte	0x16
	.4byte	0xada
	.byte	0x1
	.byte	0xb
	.4byte	.LASF212
	.byte	0xb
	.byte	0xff
	.byte	0x12
	.4byte	0xb25
	.byte	0x2
	.byte	0x17
	.4byte	.LASF213
	.byte	0xb
	.2byte	0x100
	.byte	0x17
	.4byte	0xb6a
	.byte	0x3
	.byte	0x17
	.4byte	.LASF214
	.byte	0xb
	.2byte	0x101
	.byte	0x17
	.4byte	0xb6a
	.byte	0x4
	.byte	0x17
	.4byte	.LASF215
	.byte	0xb
	.2byte	0x102
	.byte	0x17
	.4byte	0xbc4
	.byte	0x5
	.byte	0x17
	.4byte	.LASF216
	.byte	0xb
	.2byte	0x103
	.byte	0x17
	.4byte	0xb91
	.byte	0x6
	.byte	0x24
	.string	"vcm"
	.byte	0xb
	.2byte	0x104
	.byte	0x16
	.4byte	0xbf7
	.byte	0x7
	.byte	0x17
	.4byte	.LASF217
	.byte	0xb
	.2byte	0x105
	.byte	0x13
	.4byte	0xc1e
	.byte	0x8
	.byte	0x17
	.4byte	.LASF218
	.byte	0xb
	.2byte	0x106
	.byte	0x18
	.4byte	0xc45
	.byte	0x9
	.byte	0x17
	.4byte	.LASF219
	.byte	0xb
	.2byte	0x107
	.byte	0x19
	.4byte	0xc7e
	.byte	0xa
	.byte	0x17
	.4byte	.LASF220
	.byte	0xb
	.2byte	0x108
	.byte	0x11
	.4byte	0x9a6
	.byte	0xb
	.byte	0x17
	.4byte	.LASF221
	.byte	0xb
	.2byte	0x109
	.byte	0xd
	.4byte	0x932
	.byte	0xc
	.byte	0
	.byte	0x5
	.4byte	.LASF222
	.byte	0xb
	.2byte	0x10a
	.byte	0x2
	.4byte	0xc8a
	.byte	0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF223
	.byte	0x25
	.byte	0x7
	.byte	0x1
	.4byte	0x2c
	.byte	0xb
	.2byte	0x119
	.byte	0xe
	.4byte	0xd83
	.byte	0x22
	.4byte	.LASF224
	.byte	0
	.byte	0x22
	.4byte	.LASF225
	.byte	0x1
	.byte	0x22
	.4byte	.LASF226
	.byte	0x2
	.byte	0x22
	.4byte	.LASF227
	.byte	0x3
	.byte	0
	.byte	0x5
	.4byte	.LASF228
	.byte	0xb
	.2byte	0x11e
	.byte	0x2
	.4byte	0xd5b
	.byte	0x1a
	.byte	0x2
	.byte	0xb
	.2byte	0x12f
	.byte	0x9
	.4byte	0xdb7
	.byte	0x17
	.4byte	.LASF229
	.byte	0xb
	.2byte	0x130
	.byte	0x1d
	.4byte	0xd83
	.byte	0
	.byte	0x17
	.4byte	.LASF230
	.byte	0xb
	.2byte	0x131
	.byte	0x11
	.4byte	0x9a6
	.byte	0x1
	.byte	0
	.byte	0x5
	.4byte	.LASF231
	.byte	0xb
	.2byte	0x132
	.byte	0x2
	.4byte	0xd90
	.byte	0x20
	.4byte	.LASF232
	.byte	0xc
	.byte	0x9a
	.byte	0xd
	.4byte	0x59
	.byte	0x20
	.4byte	.LASF233
	.byte	0xc
	.byte	0x9b
	.byte	0xc
	.4byte	0x81
	.byte	0x8
	.4byte	0x5d3
	.4byte	0xdec
	.byte	0x9
	.4byte	0x88
	.byte	0x1
	.byte	0
	.byte	0x20
	.4byte	.LASF234
	.byte	0xc
	.byte	0x9e
	.byte	0xe
	.4byte	0xddc
	.byte	0x26
	.4byte	.LASF235
	.byte	0x1
	.byte	0x3b
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0xe9e
	.byte	0x27
	.4byte	.LVL21
	.4byte	0x1031
	.byte	0x28
	.4byte	.LVL22
	.4byte	0x103d
	.4byte	0xe47
	.byte	0x29
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x29
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0x29
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x37
	.byte	0x29
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0x29
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0x29
	.byte	0x1
	.byte	0x5f
	.byte	0x3
	.byte	0xa
	.2byte	0x2580
	.byte	0
	.byte	0x28
	.4byte	.LVL23
	.4byte	0x1049
	.4byte	0xe5e
	.byte	0x29
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x28
	.4byte	.LVL24
	.4byte	0x1055
	.4byte	0xe94
	.byte	0x29
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	TaskSample
	.byte	0x29
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x29
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x400
	.byte	0x29
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x29
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x31
	.byte	0x29
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2a
	.4byte	.LVL25
	.4byte	0x1062
	.byte	0
	.byte	0x26
	.4byte	.LASF236
	.byte	0x1
	.byte	0xf
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x1031
	.byte	0x2b
	.4byte	.LASF263
	.byte	0x1
	.byte	0xf
	.byte	0x17
	.4byte	0x122
	.4byte	.LLST0
	.byte	0x2c
	.string	"cfg"
	.byte	0x1
	.byte	0x11
	.byte	0x12
	.4byte	0xd47
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x2d
	.4byte	.LASF237
	.byte	0x1
	.byte	0x20
	.byte	0x17
	.4byte	0xdb7
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x2d
	.4byte	.LASF238
	.byte	0x1
	.byte	0x2b
	.byte	0x10
	.4byte	0x962
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x2e
	.4byte	.LASF239
	.byte	0x1
	.byte	0x2c
	.byte	0x16
	.4byte	0x96e
	.byte	0x64
	.byte	0x2f
	.4byte	.Ldebug_ranges0+0
	.4byte	0xf9c
	.byte	0x2d
	.4byte	.LASF240
	.byte	0x1
	.byte	0x32
	.byte	0x12
	.4byte	0x94a
	.byte	0x1
	.byte	0x59
	.byte	0x30
	.string	"t"
	.byte	0x1
	.byte	0x33
	.byte	0x12
	.4byte	0x94a
	.4byte	.LLST1
	.byte	0x2c
	.string	"val"
	.byte	0x1
	.byte	0x35
	.byte	0x16
	.4byte	0x88
	.byte	0x9
	.byte	0x79
	.byte	0
	.byte	0x34
	.byte	0x25
	.byte	0xa
	.2byte	0xfff
	.byte	0x1a
	.byte	0x9f
	.byte	0x27
	.4byte	.LVL12
	.4byte	0x106f
	.byte	0x27
	.4byte	.LVL13
	.4byte	0x107c
	.byte	0x27
	.4byte	.LVL14
	.4byte	0x1089
	.byte	0x27
	.4byte	.LVL16
	.4byte	0x1096
	.byte	0x28
	.4byte	.LVL19
	.4byte	0x10a2
	.4byte	0xf77
	.byte	0x29
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x29
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0x31
	.4byte	.LVL20
	.4byte	0x1049
	.byte	0x29
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x29
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x29
	.byte	0x1
	.byte	0x5c
	.byte	0x7
	.byte	0x79
	.byte	0
	.byte	0x34
	.byte	0x25
	.byte	0x78
	.byte	0
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	.LVL2
	.4byte	0x10af
	.4byte	0xfbe
	.byte	0x29
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x29
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x29
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3e
	.byte	0
	.byte	0x27
	.4byte	.LVL3
	.4byte	0x10ba
	.byte	0x27
	.4byte	.LVL4
	.4byte	0x10c7
	.byte	0x27
	.4byte	.LVL5
	.4byte	0x10d4
	.byte	0x28
	.4byte	.LVL6
	.4byte	0x10e1
	.4byte	0xfed
	.byte	0x29
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0
	.byte	0x28
	.4byte	.LVL7
	.4byte	0x10ee
	.4byte	0x100a
	.byte	0x29
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x29
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x47
	.byte	0x29
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x28
	.4byte	.LVL8
	.4byte	0x10fb
	.4byte	0x101e
	.byte	0x29
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0
	.byte	0x27
	.4byte	.LVL9
	.4byte	0x1108
	.byte	0x27
	.4byte	.LVL10
	.4byte	0x1114
	.byte	0
	.byte	0x32
	.4byte	.LASF241
	.4byte	.LASF241
	.byte	0xd
	.byte	0x3
	.byte	0x6
	.byte	0x32
	.4byte	.LASF242
	.4byte	.LASF242
	.byte	0xe
	.byte	0x26
	.byte	0x5
	.byte	0x32
	.4byte	.LASF243
	.4byte	.LASF243
	.byte	0xf
	.byte	0xc8
	.byte	0x5
	.byte	0x33
	.4byte	.LASF244
	.4byte	.LASF244
	.byte	0x10
	.2byte	0x14a
	.byte	0x10
	.byte	0x33
	.4byte	.LASF245
	.4byte	.LASF245
	.byte	0x10
	.2byte	0x497
	.byte	0x6
	.byte	0x33
	.4byte	.LASF246
	.4byte	.LASF246
	.byte	0xb
	.2byte	0x1fc
	.byte	0x6
	.byte	0x33
	.4byte	.LASF247
	.4byte	.LASF247
	.byte	0xb
	.2byte	0x1ff
	.byte	0x9
	.byte	0x33
	.4byte	.LASF248
	.4byte	.LASF248
	.byte	0xb
	.2byte	0x202
	.byte	0xa
	.byte	0x32
	.4byte	.LASF249
	.4byte	.LASF249
	.byte	0x11
	.byte	0x27
	.byte	0xa
	.byte	0x33
	.4byte	.LASF250
	.4byte	.LASF250
	.byte	0x10
	.2byte	0x331
	.byte	0x6
	.byte	0x34
	.4byte	.LASF264
	.4byte	.LASF265
	.byte	0x12
	.byte	0
	.byte	0x33
	.4byte	.LASF251
	.4byte	.LASF251
	.byte	0xb
	.2byte	0x1f6
	.byte	0x6
	.byte	0x33
	.4byte	.LASF252
	.4byte	.LASF252
	.byte	0xb
	.2byte	0x1f8
	.byte	0x6
	.byte	0x33
	.4byte	.LASF253
	.4byte	.LASF253
	.byte	0xb
	.2byte	0x1f7
	.byte	0x6
	.byte	0x33
	.4byte	.LASF254
	.4byte	.LASF254
	.byte	0xb
	.2byte	0x1f9
	.byte	0x6
	.byte	0x33
	.4byte	.LASF255
	.4byte	.LASF255
	.byte	0xb
	.2byte	0x1fa
	.byte	0x6
	.byte	0x33
	.4byte	.LASF256
	.4byte	.LASF256
	.byte	0xb
	.2byte	0x1fe
	.byte	0x6
	.byte	0x32
	.4byte	.LASF257
	.4byte	.LASF257
	.byte	0x11
	.byte	0x25
	.byte	0x6
	.byte	0x33
	.4byte	.LASF258
	.4byte	.LASF258
	.byte	0x10
	.2byte	0x547
	.byte	0xc
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0x1b
	.byte	0xe
	.byte	0x55
	.byte	0x17
	.byte	0x11
	.byte	0x1
	.byte	0x10
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x17
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0x5
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0x5
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x17
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x4
	.byte	0x1
	.byte	0x3e
	.byte	0xb
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x22
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x23
	.byte	0x21
	.byte	0
	.byte	0
	.byte	0
	.byte	0x24
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x25
	.byte	0x4
	.byte	0x1
	.byte	0x3e
	.byte	0xb
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x26
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x27
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x28
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x29
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x2a
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2b
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2c
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x2d
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x2e
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x2f
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x30
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x31
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x32
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0x6e
	.byte	0xe
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x33
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0x6e
	.byte	0xe
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x34
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0x6e
	.byte	0xe
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	0
	.4byte	0
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF183:
	.string	"ADC_PGA_GAIN_32"
.LASF227:
	.string	"ADC_FIFO_THRESHOLD_16"
.LASF25:
	.string	"_maxwds"
.LASF167:
	.string	"ADC_V11_SEL_Type"
.LASF39:
	.string	"_on_exit_args"
.LASF242:
	.string	"bl_uart_init"
.LASF107:
	.string	"_wctomb_state"
.LASF104:
	.string	"_r48"
.LASF241:
	.string	"system_init"
.LASF109:
	.string	"_signal_buf"
.LASF11:
	.string	"unsigned int"
.LASF195:
	.string	"ADC_PGA_VCM_1P4V"
.LASF53:
	.string	"_lbfsize"
.LASF51:
	.string	"_flags"
.LASF198:
	.string	"ADC_VREF_3P2V"
.LASF230:
	.string	"dmaEn"
.LASF5:
	.string	"__int32_t"
.LASF218:
	.string	"inputMode"
.LASF68:
	.string	"_errno"
.LASF171:
	.string	"ADC_CLK_DIV_12"
.LASF172:
	.string	"ADC_CLK_DIV_16"
.LASF23:
	.string	"_flock_t"
.LASF65:
	.string	"_mbstate"
.LASF165:
	.string	"ADC_V11_SEL_1P18V"
.LASF55:
	.string	"_read"
.LASF21:
	.string	"__ULong"
.LASF111:
	.string	"_mbrlen_state"
.LASF265:
	.string	"__builtin_memcpy"
.LASF70:
	.string	"_stdout"
.LASF14:
	.string	"_fpos_t"
.LASF154:
	.string	"ADC_CHAN_SENP2"
.LASF46:
	.string	"_fns"
.LASF54:
	.string	"_cookie"
.LASF121:
	.string	"_global_impure_ptr"
.LASF213:
	.string	"gain1"
.LASF247:
	.string	"ADC_Get_FIFO_Count"
.LASF174:
	.string	"ADC_CLK_DIV_24"
.LASF201:
	.string	"ADC_INPUT_SINGLE_END"
.LASF28:
	.string	"_Bigint"
.LASF36:
	.string	"__tm_wday"
.LASF220:
	.string	"offsetCalibEn"
.LASF78:
	.string	"_result"
.LASF124:
	.string	"uint32_t"
.LASF32:
	.string	"__tm_hour"
.LASF203:
	.string	"ADC_SIG_INPUT_Type"
.LASF196:
	.string	"ADC_PGA_VCM_1P6V"
.LASF18:
	.string	"__count"
.LASF223:
	.string	"float"
.LASF156:
	.string	"ADC_CHAN_SENP0"
.LASF155:
	.string	"ADC_CHAN_SENP1"
.LASF221:
	.string	"offsetCalibVal"
.LASF153:
	.string	"ADC_CHAN_SENP3"
.LASF31:
	.string	"__tm_min"
.LASF120:
	.string	"_impure_ptr"
.LASF187:
	.string	"ADC_BIAS_SEL_Type"
.LASF117:
	.string	"_nextf"
.LASF122:
	.string	"int16_t"
.LASF113:
	.string	"_mbsrtowcs_state"
.LASF175:
	.string	"ADC_CLK_DIV_32"
.LASF249:
	.string	"bl_rtc_get_timestamp_ms"
.LASF10:
	.string	"long long unsigned int"
.LASF100:
	.string	"_asctime_buf"
.LASF94:
	.string	"_rand48"
.LASF133:
	.string	"intCbfArra"
.LASF50:
	.string	"__sFILE"
.LASF27:
	.string	"_wds"
.LASF157:
	.string	"ADC_CHAN_GND"
.LASF192:
	.string	"ADC_CHOP_MOD_Type"
.LASF254:
	.string	"ADC_Init"
.LASF90:
	.string	"__FILE"
.LASF251:
	.string	"ADC_Reset"
.LASF62:
	.string	"_offset"
.LASF59:
	.string	"_ubuf"
.LASF246:
	.string	"ADC_Start"
.LASF73:
	.string	"_emergency"
.LASF127:
	.string	"TrapNetCounter"
.LASF160:
	.string	"ADC_V18_SEL_1P82V"
.LASF30:
	.string	"__tm_sec"
.LASF37:
	.string	"__tm_yday"
.LASF72:
	.string	"_inc"
.LASF45:
	.string	"_ind"
.LASF24:
	.string	"_next"
.LASF240:
	.string	"regval"
.LASF163:
	.string	"ADC_V11_SEL_1P0V"
.LASF234:
	.string	"_tzname"
.LASF19:
	.string	"__value"
.LASF148:
	.string	"ADC_CHAN_TSEN_P"
.LASF80:
	.string	"_p5s"
.LASF166:
	.string	"ADC_V11_SEL_1P26V"
.LASF168:
	.string	"ADC_CLK_DIV_1"
.LASF176:
	.string	"ADC_CLK_Type"
.LASF115:
	.string	"_wcsrtombs_state"
.LASF105:
	.string	"_mblen_state"
.LASF170:
	.string	"ADC_CLK_DIV_8"
.LASF236:
	.string	"TaskSample"
.LASF89:
	.string	"char"
.LASF261:
	.string	"/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/build_out/adc"
.LASF33:
	.string	"__tm_mday"
.LASF86:
	.string	"_sig_func"
.LASF112:
	.string	"_mbrtowc_state"
.LASF129:
	.string	"DISABLE"
.LASF209:
	.string	"ADC_Data_Width_Type"
.LASF177:
	.string	"ADC_PGA_GAIN_NONE"
.LASF164:
	.string	"ADC_V11_SEL_1P1V"
.LASF255:
	.string	"ADC_Channel_Config"
.LASF79:
	.string	"_result_k"
.LASF199:
	.string	"ADC_VREF_2V"
.LASF244:
	.string	"xTaskCreate"
.LASF16:
	.string	"__wch"
.LASF178:
	.string	"ADC_PGA_GAIN_1"
.LASF179:
	.string	"ADC_PGA_GAIN_2"
.LASF180:
	.string	"ADC_PGA_GAIN_4"
.LASF58:
	.string	"_close"
.LASF181:
	.string	"ADC_PGA_GAIN_8"
.LASF76:
	.string	"__sdidinit"
.LASF219:
	.string	"resWidth"
.LASF134:
	.string	"ADC_CHAN0"
.LASF135:
	.string	"ADC_CHAN1"
.LASF136:
	.string	"ADC_CHAN2"
.LASF137:
	.string	"ADC_CHAN3"
.LASF138:
	.string	"ADC_CHAN4"
.LASF139:
	.string	"ADC_CHAN5"
.LASF140:
	.string	"ADC_CHAN6"
.LASF141:
	.string	"ADC_CHAN7"
.LASF142:
	.string	"ADC_CHAN8"
.LASF143:
	.string	"ADC_CHAN9"
.LASF258:
	.string	"xTaskGetTickCount"
.LASF217:
	.string	"vref"
.LASF197:
	.string	"ADC_PGA_VCM_Type"
.LASF69:
	.string	"_stdin"
.LASF102:
	.string	"_gamma_signgam"
.LASF9:
	.string	"long long int"
.LASF208:
	.string	"ADC_DATA_WIDTH_16_WITH_256_AVERAGE"
.LASF243:
	.string	"printf"
.LASF212:
	.string	"clkDiv"
.LASF48:
	.string	"_base"
.LASF205:
	.string	"ADC_DATA_WIDTH_14_WITH_16_AVERAGE"
.LASF81:
	.string	"_freelist"
.LASF96:
	.string	"_mult"
.LASF97:
	.string	"_add"
.LASF114:
	.string	"_wcrtomb_state"
.LASF125:
	.string	"BaseType_t"
.LASF52:
	.string	"_file"
.LASF189:
	.string	"ADC_CHOP_MOD_AZ_ON"
.LASF4:
	.string	"__int16_t"
.LASF207:
	.string	"ADC_DATA_WIDTH_16_WITH_128_AVERAGE"
.LASF77:
	.string	"__cleanup"
.LASF20:
	.string	"_mbstate_t"
.LASF259:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF214:
	.string	"gain2"
.LASF149:
	.string	"ADC_CHAN_TSEN_N"
.LASF146:
	.string	"ADC_CHAN_DAC_OUTA"
.LASF147:
	.string	"ADC_CHAN_DAC_OUTB"
.LASF222:
	.string	"ADC_CFG_Type"
.LASF38:
	.string	"__tm_isdst"
.LASF200:
	.string	"ADC_VREF_Type"
.LASF186:
	.string	"ADC_BIAS_SEL_AON_BANDGAP"
.LASF202:
	.string	"ADC_INPUT_DIFF"
.LASF116:
	.string	"_h_errno"
.LASF15:
	.string	"_ssize_t"
.LASF206:
	.string	"ADC_DATA_WIDTH_16_WITH_64_AVERAGE"
.LASF256:
	.string	"ADC_FIFO_Cfg"
.LASF235:
	.string	"bfl_main"
.LASF190:
	.string	"ADC_CHOP_MOD_AZ_PGA_ON"
.LASF126:
	.string	"TickType_t"
.LASF87:
	.string	"__sglue"
.LASF191:
	.string	"ADC_CHOP_MOD_AZ_PGA_RPC_ON"
.LASF34:
	.string	"__tm_mon"
.LASF204:
	.string	"ADC_DATA_WIDTH_12"
.LASF162:
	.string	"ADC_V18_SEL_Type"
.LASF128:
	.string	"SystemCoreClock"
.LASF215:
	.string	"chopMode"
.LASF56:
	.string	"_write"
.LASF260:
	.string	"/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/adc/main.c"
.LASF239:
	.string	"xFrequency"
.LASF44:
	.string	"_atexit"
.LASF169:
	.string	"ADC_CLK_DIV_4"
.LASF250:
	.string	"vTaskDelayUntil"
.LASF2:
	.string	"short int"
.LASF263:
	.string	"pvParameters"
.LASF6:
	.string	"long int"
.LASF88:
	.string	"__sf"
.LASF26:
	.string	"_sign"
.LASF238:
	.string	"xLastWakeTime"
.LASF161:
	.string	"ADC_V18_SEL_1P92V"
.LASF63:
	.string	"_data"
.LASF17:
	.string	"__wchb"
.LASF233:
	.string	"_daylight"
.LASF35:
	.string	"__tm_year"
.LASF101:
	.string	"_localtime_buf"
.LASF152:
	.string	"ADC_CHAN_VABT_HALF"
.LASF119:
	.string	"_unused"
.LASF84:
	.string	"_new"
.LASF185:
	.string	"ADC_BIAS_SEL_MAIN_BANDGAP"
.LASF82:
	.string	"_cvtlen"
.LASF132:
	.string	"intCallback_Type"
.LASF108:
	.string	"_l64a_buf"
.LASF144:
	.string	"ADC_CHAN10"
.LASF145:
	.string	"ADC_CHAN11"
.LASF85:
	.string	"_atexit0"
.LASF228:
	.string	"ADC_FIFO_Threshold_Type"
.LASF61:
	.string	"_blksize"
.LASF29:
	.string	"__tm"
.LASF64:
	.string	"_lock"
.LASF130:
	.string	"ENABLE"
.LASF248:
	.string	"ADC_Read_FIFO"
.LASF8:
	.string	"long unsigned int"
.LASF211:
	.string	"v11Sel"
.LASF92:
	.string	"_niobs"
.LASF12:
	.string	"wint_t"
.LASF123:
	.string	"int32_t"
.LASF184:
	.string	"ADC_PGA_GAIN_Type"
.LASF41:
	.string	"_dso_handle"
.LASF245:
	.string	"vTaskStartScheduler"
.LASF131:
	.string	"BL_Fun_Type"
.LASF210:
	.string	"v18Sel"
.LASF83:
	.string	"_cvtbuf"
.LASF1:
	.string	"unsigned char"
.LASF232:
	.string	"_timezone"
.LASF7:
	.string	"__uint32_t"
.LASF231:
	.string	"ADC_FIFO_Cfg_Type"
.LASF257:
	.string	"bl_rtc_init"
.LASF22:
	.string	"_LOCK_RECURSIVE_T"
.LASF150:
	.string	"ADC_CHAN_VREF"
.LASF173:
	.string	"ADC_CLK_DIV_20"
.LASF47:
	.string	"__sbuf"
.LASF182:
	.string	"ADC_PGA_GAIN_16"
.LASF91:
	.string	"_glue"
.LASF252:
	.string	"ADC_Disable"
.LASF216:
	.string	"biasSel"
.LASF110:
	.string	"_getdate_err"
.LASF99:
	.string	"_strtok_last"
.LASF106:
	.string	"_mbtowc_state"
.LASF75:
	.string	"_locale"
.LASF40:
	.string	"_fnargs"
.LASF0:
	.string	"signed char"
.LASF67:
	.string	"_reent"
.LASF3:
	.string	"short unsigned int"
.LASF159:
	.string	"ADC_V18_SEL_1P72V"
.LASF264:
	.string	"memcpy"
.LASF158:
	.string	"ADC_V18_SEL_1P62V"
.LASF151:
	.string	"ADC_CHAN_DCTEST"
.LASF42:
	.string	"_fntypes"
.LASF49:
	.string	"_size"
.LASF194:
	.string	"ADC_PGA_VCM_1P2V"
.LASF13:
	.string	"_off_t"
.LASF60:
	.string	"_nbuf"
.LASF98:
	.string	"_unused_rand"
.LASF74:
	.string	"_unspecified_locale_info"
.LASF224:
	.string	"ADC_FIFO_THRESHOLD_1"
.LASF66:
	.string	"_flags2"
.LASF225:
	.string	"ADC_FIFO_THRESHOLD_4"
.LASF43:
	.string	"_is_cxa"
.LASF226:
	.string	"ADC_FIFO_THRESHOLD_8"
.LASF188:
	.string	"ADC_CHOP_MOD_ALL_OFF"
.LASF95:
	.string	"_seed"
.LASF103:
	.string	"_rand_next"
.LASF229:
	.string	"fifoThreshold"
.LASF262:
	.string	"__locale_t"
.LASF57:
	.string	"_seek"
.LASF193:
	.string	"ADC_PGA_VCM_1V"
.LASF71:
	.string	"_stderr"
.LASF118:
	.string	"_nmalloc"
.LASF93:
	.string	"_iobs"
.LASF253:
	.string	"ADC_Enable"
.LASF237:
	.string	"fifo_cfg"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
