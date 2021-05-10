	.file	"hal_hwtimer.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.hal_hwtimer_init,"ax",@progbits
	.align	1
	.globl	hal_hwtimer_init
	.type	hal_hwtimer_init, @function
hal_hwtimer_init:
.LFB27:
	.file 1 "/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/bl_iot_sdk/components/hal_drv/bl602_hal/hal_hwtimer.c"
	.loc 1 238 1
	.cfi_startproc
	.loc 1 239 5
	.loc 1 240 1 is_stmt 0
	li	a0,0
	ret
	.cfi_endproc
.LFE27:
	.size	hal_hwtimer_init, .-hal_hwtimer_init
	.section	.text.hal_hwtimer_create,"ax",@progbits
	.align	1
	.globl	hal_hwtimer_create
	.type	hal_hwtimer_create, @function
hal_hwtimer_create:
.LFB28:
	.loc 1 243 1 is_stmt 1
	.cfi_startproc
.LVL0:
	.loc 1 244 5
	.loc 1 246 5
	.loc 1 248 64 is_stmt 0
	li	a5,1000
	mul	a0,a0,a5
.LVL1:
	.loc 1 246 14
	mv	a4,a1
	.loc 1 243 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 246 14
	addi	a3,sp,12
	li	a2,1
.LVL2:
	.loc 1 243 1
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 246 14
	divu	a1,a0,a5
.LVL3:
	lui	a0,%hi(.LC0)
	addi	a0,a0,%lo(.LC0)
	call	xTimerCreate
.LVL4:
	.loc 1 246 12
	sw	a0,12(sp)
	.loc 1 253 5 is_stmt 1
	.loc 1 253 8 is_stmt 0
	beq	a0,zero,.L3
	mv	s0,a0
	.loc 1 254 10 is_stmt 1
	call	xTaskGetTickCount
.LVL5:
	mv	a2,a0
	li	a4,-1
	li	a3,0
	li	a1,1
	mv	a0,s0
	call	xTimerGenericCommand
.LVL6:
.L3:
	.loc 1 256 5
	.loc 1 257 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	a0,12(sp)
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE28:
	.size	hal_hwtimer_create, .-hal_hwtimer_create
	.section	.text.hal_hwtimer_delete,"ax",@progbits
	.align	1
	.globl	hal_hwtimer_delete
	.type	hal_hwtimer_delete, @function
hal_hwtimer_delete:
.LFB29:
	.loc 1 260 1 is_stmt 1
	.cfi_startproc
.LVL7:
	.loc 1 261 5
	.loc 1 260 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 261 33
	li	a4,-1
	li	a3,0
	li	a2,0
	li	a1,5
	.loc 1 260 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 261 33
	call	xTimerGenericCommand
.LVL8:
	.loc 1 265 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 261 8
	seqz	a0,a0
	.loc 1 265 1
	neg	a0,a0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE29:
	.size	hal_hwtimer_delete, .-hal_hwtimer_delete
	.section	.text.hal_hwtimer_change_period,"ax",@progbits
	.align	1
	.globl	hal_hwtimer_change_period
	.type	hal_hwtimer_change_period, @function
hal_hwtimer_change_period:
.LFB30:
	.loc 1 268 1 is_stmt 1
	.cfi_startproc
.LVL9:
	.loc 1 269 5
	.loc 1 269 154 is_stmt 0
	li	a5,1000
	mul	a2,a1,a5
	.loc 1 268 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 269 33
	li	a4,-1
	li	a3,0
	li	a1,4
.LVL10:
	.loc 1 268 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 269 33
	divu	a2,a2,a5
	call	xTimerGenericCommand
.LVL11:
	.loc 1 273 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 269 8
	seqz	a0,a0
	.loc 1 273 1
	neg	a0,a0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE30:
	.size	hal_hwtimer_change_period, .-hal_hwtimer_change_period
	.section	.rodata.hal_hwtimer_create.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"hw_timer"
	.text
.Letext0:
	.file 2 "/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h"
	.file 3 "/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h"
	.file 4 "/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h"
	.file 5 "/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h"
	.file 6 "/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h"
	.file 7 "/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/bl_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Device/Bouffalo/BL602/Startup/system_bl602.h"
	.file 8 "/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 9 "/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 10 "/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/timers.h"
	.file 11 "/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/bl_iot_sdk/components/hal_drv/bl602_hal/hal_hwtimer.h"
	.file 12 "/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xbaf
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF144
	.byte	0xc
	.4byte	.LASF145
	.4byte	.LASF146
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x28
	.byte	0x12
	.4byte	0x4d
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x6e
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x5
	.4byte	.LASF119
	.byte	0x7
	.byte	0x8
	.byte	0x11
	.4byte	0x62
	.byte	0x6
	.4byte	.LASF11
	.byte	0x3
	.2byte	0x165
	.byte	0x16
	.4byte	0x25
	.byte	0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x2e
	.byte	0xe
	.4byte	0x4d
	.byte	0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x74
	.byte	0xe
	.4byte	0x4d
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x93
	.byte	0x14
	.4byte	0x7c
	.byte	0x7
	.byte	0x4
	.byte	0x4
	.byte	0xa5
	.byte	0x3
	.4byte	0xe2
	.byte	0x8
	.4byte	.LASF15
	.byte	0x4
	.byte	0xa7
	.byte	0xc
	.4byte	0x8f
	.byte	0x8
	.4byte	.LASF16
	.byte	0x4
	.byte	0xa8
	.byte	0x13
	.4byte	0xe2
	.byte	0
	.byte	0x9
	.4byte	0x2c
	.4byte	0xf2
	.byte	0xa
	.4byte	0x25
	.byte	0x3
	.byte	0
	.byte	0xb
	.byte	0x8
	.byte	0x4
	.byte	0xa2
	.byte	0x9
	.4byte	0x116
	.byte	0xc
	.4byte	.LASF17
	.byte	0x4
	.byte	0xa4
	.byte	0x7
	.4byte	0x7c
	.byte	0
	.byte	0xc
	.4byte	.LASF18
	.byte	0x4
	.byte	0xa9
	.byte	0x5
	.4byte	0xc0
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0xaa
	.byte	0x3
	.4byte	0xf2
	.byte	0xd
	.byte	0x4
	.byte	0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0x16
	.byte	0x17
	.4byte	0x6e
	.byte	0x3
	.4byte	.LASF21
	.byte	0x6
	.byte	0xc
	.byte	0xd
	.4byte	0x7c
	.byte	0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0x23
	.byte	0x1b
	.4byte	0x130
	.byte	0xe
	.4byte	.LASF27
	.byte	0x18
	.byte	0x5
	.byte	0x34
	.byte	0x8
	.4byte	0x1a2
	.byte	0xc
	.4byte	.LASF23
	.byte	0x5
	.byte	0x36
	.byte	0x13
	.4byte	0x1a2
	.byte	0
	.byte	0xf
	.string	"_k"
	.byte	0x5
	.byte	0x37
	.byte	0x7
	.4byte	0x7c
	.byte	0x4
	.byte	0xc
	.4byte	.LASF24
	.byte	0x5
	.byte	0x37
	.byte	0xb
	.4byte	0x7c
	.byte	0x8
	.byte	0xc
	.4byte	.LASF25
	.byte	0x5
	.byte	0x37
	.byte	0x14
	.4byte	0x7c
	.byte	0xc
	.byte	0xc
	.4byte	.LASF26
	.byte	0x5
	.byte	0x37
	.byte	0x1b
	.4byte	0x7c
	.byte	0x10
	.byte	0xf
	.string	"_x"
	.byte	0x5
	.byte	0x38
	.byte	0xb
	.4byte	0x1a8
	.byte	0x14
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x148
	.byte	0x9
	.4byte	0x124
	.4byte	0x1b8
	.byte	0xa
	.4byte	0x25
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF28
	.byte	0x24
	.byte	0x5
	.byte	0x3c
	.byte	0x8
	.4byte	0x23b
	.byte	0xc
	.4byte	.LASF29
	.byte	0x5
	.byte	0x3e
	.byte	0x7
	.4byte	0x7c
	.byte	0
	.byte	0xc
	.4byte	.LASF30
	.byte	0x5
	.byte	0x3f
	.byte	0x7
	.4byte	0x7c
	.byte	0x4
	.byte	0xc
	.4byte	.LASF31
	.byte	0x5
	.byte	0x40
	.byte	0x7
	.4byte	0x7c
	.byte	0x8
	.byte	0xc
	.4byte	.LASF32
	.byte	0x5
	.byte	0x41
	.byte	0x7
	.4byte	0x7c
	.byte	0xc
	.byte	0xc
	.4byte	.LASF33
	.byte	0x5
	.byte	0x42
	.byte	0x7
	.4byte	0x7c
	.byte	0x10
	.byte	0xc
	.4byte	.LASF34
	.byte	0x5
	.byte	0x43
	.byte	0x7
	.4byte	0x7c
	.byte	0x14
	.byte	0xc
	.4byte	.LASF35
	.byte	0x5
	.byte	0x44
	.byte	0x7
	.4byte	0x7c
	.byte	0x18
	.byte	0xc
	.4byte	.LASF36
	.byte	0x5
	.byte	0x45
	.byte	0x7
	.4byte	0x7c
	.byte	0x1c
	.byte	0xc
	.4byte	.LASF37
	.byte	0x5
	.byte	0x46
	.byte	0x7
	.4byte	0x7c
	.byte	0x20
	.byte	0
	.byte	0x11
	.4byte	.LASF38
	.2byte	0x108
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.4byte	0x280
	.byte	0xc
	.4byte	.LASF39
	.byte	0x5
	.byte	0x50
	.byte	0x9
	.4byte	0x280
	.byte	0
	.byte	0xc
	.4byte	.LASF40
	.byte	0x5
	.byte	0x51
	.byte	0x9
	.4byte	0x280
	.byte	0x80
	.byte	0x12
	.4byte	.LASF41
	.byte	0x5
	.byte	0x53
	.byte	0xa
	.4byte	0x124
	.2byte	0x100
	.byte	0x12
	.4byte	.LASF42
	.byte	0x5
	.byte	0x56
	.byte	0xa
	.4byte	0x124
	.2byte	0x104
	.byte	0
	.byte	0x9
	.4byte	0x122
	.4byte	0x290
	.byte	0xa
	.4byte	0x25
	.byte	0x1f
	.byte	0
	.byte	0x11
	.4byte	.LASF43
	.2byte	0x190
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.4byte	0x2d3
	.byte	0xc
	.4byte	.LASF23
	.byte	0x5
	.byte	0x63
	.byte	0x12
	.4byte	0x2d3
	.byte	0
	.byte	0xc
	.4byte	.LASF44
	.byte	0x5
	.byte	0x64
	.byte	0x6
	.4byte	0x7c
	.byte	0x4
	.byte	0xc
	.4byte	.LASF45
	.byte	0x5
	.byte	0x66
	.byte	0x9
	.4byte	0x2d9
	.byte	0x8
	.byte	0xc
	.4byte	.LASF38
	.byte	0x5
	.byte	0x67
	.byte	0x1e
	.4byte	0x23b
	.byte	0x88
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x290
	.byte	0x9
	.4byte	0x2e9
	.4byte	0x2e9
	.byte	0xa
	.4byte	0x25
	.byte	0x1f
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x2ef
	.byte	0x13
	.byte	0xe
	.4byte	.LASF46
	.byte	0x8
	.byte	0x5
	.byte	0x7a
	.byte	0x8
	.4byte	0x318
	.byte	0xc
	.4byte	.LASF47
	.byte	0x5
	.byte	0x7b
	.byte	0x11
	.4byte	0x318
	.byte	0
	.byte	0xc
	.4byte	.LASF48
	.byte	0x5
	.byte	0x7c
	.byte	0x6
	.4byte	0x7c
	.byte	0x4
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.4byte	.LASF49
	.byte	0x68
	.byte	0x5
	.byte	0xba
	.byte	0x8
	.4byte	0x461
	.byte	0xf
	.string	"_p"
	.byte	0x5
	.byte	0xbb
	.byte	0x12
	.4byte	0x318
	.byte	0
	.byte	0xf
	.string	"_r"
	.byte	0x5
	.byte	0xbc
	.byte	0x7
	.4byte	0x7c
	.byte	0x4
	.byte	0xf
	.string	"_w"
	.byte	0x5
	.byte	0xbd
	.byte	0x7
	.4byte	0x7c
	.byte	0x8
	.byte	0xc
	.4byte	.LASF50
	.byte	0x5
	.byte	0xbe
	.byte	0x9
	.4byte	0x3a
	.byte	0xc
	.byte	0xc
	.4byte	.LASF51
	.byte	0x5
	.byte	0xbf
	.byte	0x9
	.4byte	0x3a
	.byte	0xe
	.byte	0xf
	.string	"_bf"
	.byte	0x5
	.byte	0xc0
	.byte	0x11
	.4byte	0x2f0
	.byte	0x10
	.byte	0xc
	.4byte	.LASF52
	.byte	0x5
	.byte	0xc1
	.byte	0x7
	.4byte	0x7c
	.byte	0x18
	.byte	0xc
	.4byte	.LASF53
	.byte	0x5
	.byte	0xc8
	.byte	0xa
	.4byte	0x122
	.byte	0x1c
	.byte	0xc
	.4byte	.LASF54
	.byte	0x5
	.byte	0xca
	.byte	0xe
	.4byte	0x5e5
	.byte	0x20
	.byte	0xc
	.4byte	.LASF55
	.byte	0x5
	.byte	0xcc
	.byte	0xe
	.4byte	0x60f
	.byte	0x24
	.byte	0xc
	.4byte	.LASF56
	.byte	0x5
	.byte	0xcf
	.byte	0xd
	.4byte	0x633
	.byte	0x28
	.byte	0xc
	.4byte	.LASF57
	.byte	0x5
	.byte	0xd0
	.byte	0x9
	.4byte	0x64d
	.byte	0x2c
	.byte	0xf
	.string	"_ub"
	.byte	0x5
	.byte	0xd3
	.byte	0x11
	.4byte	0x2f0
	.byte	0x30
	.byte	0xf
	.string	"_up"
	.byte	0x5
	.byte	0xd4
	.byte	0x12
	.4byte	0x318
	.byte	0x38
	.byte	0xf
	.string	"_ur"
	.byte	0x5
	.byte	0xd5
	.byte	0x7
	.4byte	0x7c
	.byte	0x3c
	.byte	0xc
	.4byte	.LASF58
	.byte	0x5
	.byte	0xd8
	.byte	0x11
	.4byte	0x653
	.byte	0x40
	.byte	0xc
	.4byte	.LASF59
	.byte	0x5
	.byte	0xd9
	.byte	0x11
	.4byte	0x663
	.byte	0x43
	.byte	0xf
	.string	"_lb"
	.byte	0x5
	.byte	0xdc
	.byte	0x11
	.4byte	0x2f0
	.byte	0x44
	.byte	0xc
	.4byte	.LASF60
	.byte	0x5
	.byte	0xdf
	.byte	0x7
	.4byte	0x7c
	.byte	0x4c
	.byte	0xc
	.4byte	.LASF61
	.byte	0x5
	.byte	0xe0
	.byte	0xa
	.4byte	0x9c
	.byte	0x50
	.byte	0xc
	.4byte	.LASF62
	.byte	0x5
	.byte	0xe3
	.byte	0x12
	.4byte	0x47f
	.byte	0x54
	.byte	0xc
	.4byte	.LASF63
	.byte	0x5
	.byte	0xe7
	.byte	0xc
	.4byte	0x13c
	.byte	0x58
	.byte	0xc
	.4byte	.LASF64
	.byte	0x5
	.byte	0xe9
	.byte	0xe
	.4byte	0x116
	.byte	0x5c
	.byte	0xc
	.4byte	.LASF65
	.byte	0x5
	.byte	0xea
	.byte	0x7
	.4byte	0x7c
	.byte	0x64
	.byte	0
	.byte	0x14
	.4byte	0xb4
	.4byte	0x47f
	.byte	0x15
	.4byte	0x47f
	.byte	0x15
	.4byte	0x122
	.byte	0x15
	.4byte	0x5d3
	.byte	0x15
	.4byte	0x7c
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x48a
	.byte	0x16
	.4byte	0x47f
	.byte	0x17
	.4byte	.LASF66
	.2byte	0x428
	.byte	0x5
	.2byte	0x265
	.byte	0x8
	.4byte	0x5d3
	.byte	0x18
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x267
	.byte	0x7
	.4byte	0x7c
	.byte	0
	.byte	0x18
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x26c
	.byte	0xb
	.4byte	0x6bf
	.byte	0x4
	.byte	0x18
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x26c
	.byte	0x14
	.4byte	0x6bf
	.byte	0x8
	.byte	0x18
	.4byte	.LASF70
	.byte	0x5
	.2byte	0x26c
	.byte	0x1e
	.4byte	0x6bf
	.byte	0xc
	.byte	0x18
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x26e
	.byte	0x7
	.4byte	0x7c
	.byte	0x10
	.byte	0x18
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x26f
	.byte	0x8
	.4byte	0x8bf
	.byte	0x14
	.byte	0x18
	.4byte	.LASF73
	.byte	0x5
	.2byte	0x272
	.byte	0x7
	.4byte	0x7c
	.byte	0x30
	.byte	0x18
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x273
	.byte	0x16
	.4byte	0x8d4
	.byte	0x34
	.byte	0x18
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x275
	.byte	0x7
	.4byte	0x7c
	.byte	0x38
	.byte	0x18
	.4byte	.LASF76
	.byte	0x5
	.2byte	0x277
	.byte	0xa
	.4byte	0x8e5
	.byte	0x3c
	.byte	0x18
	.4byte	.LASF77
	.byte	0x5
	.2byte	0x27a
	.byte	0x13
	.4byte	0x1a2
	.byte	0x40
	.byte	0x18
	.4byte	.LASF78
	.byte	0x5
	.2byte	0x27b
	.byte	0x7
	.4byte	0x7c
	.byte	0x44
	.byte	0x18
	.4byte	.LASF79
	.byte	0x5
	.2byte	0x27c
	.byte	0x13
	.4byte	0x1a2
	.byte	0x48
	.byte	0x18
	.4byte	.LASF80
	.byte	0x5
	.2byte	0x27d
	.byte	0x14
	.4byte	0x8eb
	.byte	0x4c
	.byte	0x18
	.4byte	.LASF81
	.byte	0x5
	.2byte	0x280
	.byte	0x7
	.4byte	0x7c
	.byte	0x50
	.byte	0x18
	.4byte	.LASF82
	.byte	0x5
	.2byte	0x281
	.byte	0x9
	.4byte	0x5d3
	.byte	0x54
	.byte	0x18
	.4byte	.LASF83
	.byte	0x5
	.2byte	0x2a4
	.byte	0x7
	.4byte	0x89a
	.byte	0x58
	.byte	0x19
	.4byte	.LASF43
	.byte	0x5
	.2byte	0x2a8
	.byte	0x13
	.4byte	0x2d3
	.2byte	0x148
	.byte	0x19
	.4byte	.LASF84
	.byte	0x5
	.2byte	0x2a9
	.byte	0x12
	.4byte	0x290
	.2byte	0x14c
	.byte	0x19
	.4byte	.LASF85
	.byte	0x5
	.2byte	0x2ad
	.byte	0xc
	.4byte	0x8fc
	.2byte	0x2dc
	.byte	0x19
	.4byte	.LASF86
	.byte	0x5
	.2byte	0x2b2
	.byte	0x10
	.4byte	0x680
	.2byte	0x2e0
	.byte	0x19
	.4byte	.LASF87
	.byte	0x5
	.2byte	0x2b4
	.byte	0xa
	.4byte	0x908
	.2byte	0x2ec
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x5d9
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF88
	.byte	0x16
	.4byte	0x5d9
	.byte	0x10
	.byte	0x4
	.4byte	0x461
	.byte	0x14
	.4byte	0xb4
	.4byte	0x609
	.byte	0x15
	.4byte	0x47f
	.byte	0x15
	.4byte	0x122
	.byte	0x15
	.4byte	0x609
	.byte	0x15
	.4byte	0x7c
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x5e0
	.byte	0x10
	.byte	0x4
	.4byte	0x5eb
	.byte	0x14
	.4byte	0xa8
	.4byte	0x633
	.byte	0x15
	.4byte	0x47f
	.byte	0x15
	.4byte	0x122
	.byte	0x15
	.4byte	0xa8
	.byte	0x15
	.4byte	0x7c
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x615
	.byte	0x14
	.4byte	0x7c
	.4byte	0x64d
	.byte	0x15
	.4byte	0x47f
	.byte	0x15
	.4byte	0x122
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x639
	.byte	0x9
	.4byte	0x2c
	.4byte	0x663
	.byte	0xa
	.4byte	0x25
	.byte	0x2
	.byte	0
	.byte	0x9
	.4byte	0x2c
	.4byte	0x673
	.byte	0xa
	.4byte	0x25
	.byte	0
	.byte	0
	.byte	0x6
	.4byte	.LASF89
	.byte	0x5
	.2byte	0x124
	.byte	0x18
	.4byte	0x31e
	.byte	0x1a
	.4byte	.LASF90
	.byte	0xc
	.byte	0x5
	.2byte	0x128
	.byte	0x8
	.4byte	0x6b9
	.byte	0x18
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x12a
	.byte	0x11
	.4byte	0x6b9
	.byte	0
	.byte	0x18
	.4byte	.LASF91
	.byte	0x5
	.2byte	0x12b
	.byte	0x7
	.4byte	0x7c
	.byte	0x4
	.byte	0x18
	.4byte	.LASF92
	.byte	0x5
	.2byte	0x12c
	.byte	0xb
	.4byte	0x6bf
	.byte	0x8
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x680
	.byte	0x10
	.byte	0x4
	.4byte	0x673
	.byte	0x1a
	.4byte	.LASF93
	.byte	0xe
	.byte	0x5
	.2byte	0x144
	.byte	0x8
	.4byte	0x6fe
	.byte	0x18
	.4byte	.LASF94
	.byte	0x5
	.2byte	0x145
	.byte	0x12
	.4byte	0x6fe
	.byte	0
	.byte	0x18
	.4byte	.LASF95
	.byte	0x5
	.2byte	0x146
	.byte	0x12
	.4byte	0x6fe
	.byte	0x6
	.byte	0x18
	.4byte	.LASF96
	.byte	0x5
	.2byte	0x147
	.byte	0x12
	.4byte	0x5b
	.byte	0xc
	.byte	0
	.byte	0x9
	.4byte	0x5b
	.4byte	0x70e
	.byte	0xa
	.4byte	0x25
	.byte	0x2
	.byte	0
	.byte	0x1b
	.byte	0xd0
	.byte	0x5
	.2byte	0x285
	.byte	0x7
	.4byte	0x823
	.byte	0x18
	.4byte	.LASF97
	.byte	0x5
	.2byte	0x287
	.byte	0x18
	.4byte	0x25
	.byte	0
	.byte	0x18
	.4byte	.LASF98
	.byte	0x5
	.2byte	0x288
	.byte	0x12
	.4byte	0x5d3
	.byte	0x4
	.byte	0x18
	.4byte	.LASF99
	.byte	0x5
	.2byte	0x289
	.byte	0x10
	.4byte	0x823
	.byte	0x8
	.byte	0x18
	.4byte	.LASF100
	.byte	0x5
	.2byte	0x28a
	.byte	0x17
	.4byte	0x1b8
	.byte	0x24
	.byte	0x18
	.4byte	.LASF101
	.byte	0x5
	.2byte	0x28b
	.byte	0xf
	.4byte	0x7c
	.byte	0x48
	.byte	0x18
	.4byte	.LASF102
	.byte	0x5
	.2byte	0x28c
	.byte	0x2c
	.4byte	0x75
	.byte	0x50
	.byte	0x18
	.4byte	.LASF103
	.byte	0x5
	.2byte	0x28d
	.byte	0x1a
	.4byte	0x6c5
	.byte	0x58
	.byte	0x18
	.4byte	.LASF104
	.byte	0x5
	.2byte	0x28e
	.byte	0x16
	.4byte	0x116
	.byte	0x68
	.byte	0x18
	.4byte	.LASF105
	.byte	0x5
	.2byte	0x28f
	.byte	0x16
	.4byte	0x116
	.byte	0x70
	.byte	0x18
	.4byte	.LASF106
	.byte	0x5
	.2byte	0x290
	.byte	0x16
	.4byte	0x116
	.byte	0x78
	.byte	0x18
	.4byte	.LASF107
	.byte	0x5
	.2byte	0x291
	.byte	0x10
	.4byte	0x833
	.byte	0x80
	.byte	0x18
	.4byte	.LASF108
	.byte	0x5
	.2byte	0x292
	.byte	0x10
	.4byte	0x843
	.byte	0x88
	.byte	0x18
	.4byte	.LASF109
	.byte	0x5
	.2byte	0x293
	.byte	0xf
	.4byte	0x7c
	.byte	0xa0
	.byte	0x18
	.4byte	.LASF110
	.byte	0x5
	.2byte	0x294
	.byte	0x16
	.4byte	0x116
	.byte	0xa4
	.byte	0x18
	.4byte	.LASF111
	.byte	0x5
	.2byte	0x295
	.byte	0x16
	.4byte	0x116
	.byte	0xac
	.byte	0x18
	.4byte	.LASF112
	.byte	0x5
	.2byte	0x296
	.byte	0x16
	.4byte	0x116
	.byte	0xb4
	.byte	0x18
	.4byte	.LASF113
	.byte	0x5
	.2byte	0x297
	.byte	0x16
	.4byte	0x116
	.byte	0xbc
	.byte	0x18
	.4byte	.LASF114
	.byte	0x5
	.2byte	0x298
	.byte	0x16
	.4byte	0x116
	.byte	0xc4
	.byte	0x18
	.4byte	.LASF115
	.byte	0x5
	.2byte	0x299
	.byte	0x8
	.4byte	0x7c
	.byte	0xcc
	.byte	0
	.byte	0x9
	.4byte	0x5d9
	.4byte	0x833
	.byte	0xa
	.4byte	0x25
	.byte	0x19
	.byte	0
	.byte	0x9
	.4byte	0x5d9
	.4byte	0x843
	.byte	0xa
	.4byte	0x25
	.byte	0x7
	.byte	0
	.byte	0x9
	.4byte	0x5d9
	.4byte	0x853
	.byte	0xa
	.4byte	0x25
	.byte	0x17
	.byte	0
	.byte	0x1b
	.byte	0xf0
	.byte	0x5
	.2byte	0x29e
	.byte	0x7
	.4byte	0x87a
	.byte	0x18
	.4byte	.LASF116
	.byte	0x5
	.2byte	0x2a1
	.byte	0x1b
	.4byte	0x87a
	.byte	0
	.byte	0x18
	.4byte	.LASF117
	.byte	0x5
	.2byte	0x2a2
	.byte	0x18
	.4byte	0x88a
	.byte	0x78
	.byte	0
	.byte	0x9
	.4byte	0x318
	.4byte	0x88a
	.byte	0xa
	.4byte	0x25
	.byte	0x1d
	.byte	0
	.byte	0x9
	.4byte	0x25
	.4byte	0x89a
	.byte	0xa
	.4byte	0x25
	.byte	0x1d
	.byte	0
	.byte	0x1c
	.byte	0xf0
	.byte	0x5
	.2byte	0x283
	.byte	0x3
	.4byte	0x8bf
	.byte	0x1d
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x29a
	.byte	0xb
	.4byte	0x70e
	.byte	0x1d
	.4byte	.LASF118
	.byte	0x5
	.2byte	0x2a3
	.byte	0xb
	.4byte	0x853
	.byte	0
	.byte	0x9
	.4byte	0x5d9
	.4byte	0x8cf
	.byte	0xa
	.4byte	0x25
	.byte	0x18
	.byte	0
	.byte	0x1e
	.4byte	.LASF128
	.byte	0x10
	.byte	0x4
	.4byte	0x8cf
	.byte	0x1f
	.4byte	0x8e5
	.byte	0x15
	.4byte	0x47f
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x8da
	.byte	0x10
	.byte	0x4
	.4byte	0x1a2
	.byte	0x1f
	.4byte	0x8fc
	.byte	0x15
	.4byte	0x7c
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x902
	.byte	0x10
	.byte	0x4
	.4byte	0x8f1
	.byte	0x9
	.4byte	0x673
	.4byte	0x918
	.byte	0xa
	.4byte	0x25
	.byte	0x2
	.byte	0
	.byte	0x20
	.4byte	.LASF120
	.byte	0x5
	.2byte	0x333
	.byte	0x17
	.4byte	0x47f
	.byte	0x20
	.4byte	.LASF121
	.byte	0x5
	.2byte	0x334
	.byte	0x1d
	.4byte	0x485
	.byte	0x3
	.4byte	.LASF122
	.byte	0x8
	.byte	0x7c
	.byte	0xf
	.4byte	0x2ef
	.byte	0x9
	.4byte	0x949
	.4byte	0x949
	.byte	0x21
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x94f
	.byte	0x10
	.byte	0x4
	.4byte	0x932
	.byte	0x5
	.4byte	.LASF123
	.byte	0x8
	.byte	0x84
	.byte	0x1c
	.4byte	0x93e
	.byte	0x3
	.4byte	.LASF124
	.byte	0x9
	.byte	0x3f
	.byte	0x11
	.4byte	0x41
	.byte	0x3
	.4byte	.LASF125
	.byte	0x9
	.byte	0x41
	.byte	0x12
	.4byte	0x62
	.byte	0x5
	.4byte	.LASF126
	.byte	0x9
	.byte	0x54
	.byte	0x13
	.4byte	0x961
	.byte	0x3
	.4byte	.LASF127
	.byte	0xa
	.byte	0x4d
	.byte	0x22
	.4byte	0x991
	.byte	0x10
	.byte	0x4
	.4byte	0x997
	.byte	0x1e
	.4byte	.LASF129
	.byte	0x3
	.4byte	.LASF130
	.byte	0xa
	.byte	0x52
	.byte	0x10
	.4byte	0x9a8
	.byte	0x10
	.byte	0x4
	.4byte	0x9ae
	.byte	0x1f
	.4byte	0x9b9
	.byte	0x15
	.4byte	0x985
	.byte	0
	.byte	0x3
	.4byte	.LASF131
	.byte	0xb
	.byte	0x26
	.byte	0x10
	.4byte	0x2e9
	.byte	0xb
	.byte	0x4
	.byte	0xb
	.byte	0x39
	.byte	0x9
	.4byte	0x9dc
	.byte	0xc
	.4byte	.LASF132
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.4byte	0x122
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF133
	.byte	0xb
	.byte	0x3b
	.byte	0x3
	.4byte	0x9c5
	.byte	0x22
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x10b
	.byte	0x5
	.4byte	0x7c
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.4byte	0xa5c
	.byte	0x23
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x10b
	.byte	0x2b
	.4byte	0xa5c
	.4byte	.LLST4
	.byte	0x23
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x10b
	.byte	0x3d
	.4byte	0x62
	.4byte	.LLST5
	.byte	0x24
	.4byte	.LVL11
	.4byte	0xb8c
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x34
	.byte	0x25
	.byte	0x1
	.byte	0x5c
	.byte	0x11
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0xa
	.2byte	0x3e8
	.byte	0x1e
	.byte	0xf7
	.byte	0x25
	.byte	0xa
	.2byte	0x3e8
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0x25
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x25
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x9dc
	.byte	0x22
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x103
	.byte	0x5
	.4byte	0x7c
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.4byte	0xab5
	.byte	0x23
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x103
	.byte	0x24
	.4byte	0xa5c
	.4byte	.LLST3
	.byte	0x24
	.4byte	.LVL8
	.4byte	0xb8c
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x35
	.byte	0x25
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x25
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x25
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LASF138
	.byte	0x1
	.byte	0xf2
	.byte	0xd
	.4byte	0xa5c
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x1
	.byte	0x9c
	.4byte	0xb76
	.byte	0x27
	.4byte	.LASF135
	.byte	0x1
	.byte	0xf2
	.byte	0x29
	.4byte	0x62
	.4byte	.LLST0
	.byte	0x27
	.4byte	.LASF139
	.byte	0x1
	.byte	0xf2
	.byte	0x36
	.4byte	0x9b9
	.4byte	.LLST1
	.byte	0x27
	.4byte	.LASF140
	.byte	0x1
	.byte	0xf2
	.byte	0x43
	.4byte	0x7c
	.4byte	.LLST2
	.byte	0x28
	.4byte	.LASF147
	.byte	0x1
	.byte	0xf4
	.byte	0x13
	.4byte	0x985
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x29
	.4byte	.LVL4
	.4byte	0xb99
	.4byte	0xb4c
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x11
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xa
	.2byte	0x3e8
	.byte	0x1e
	.byte	0xf7
	.byte	0x25
	.byte	0xa
	.2byte	0x3e8
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0x25
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0x25
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x25
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x2a
	.4byte	.LVL5
	.4byte	0xba5
	.byte	0x24
	.4byte	.LVL6
	.4byte	0xb8c
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x25
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x25
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.byte	0x2b
	.4byte	.LASF148
	.byte	0x1
	.byte	0xed
	.byte	0x5
	.4byte	0x7c
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x1
	.byte	0x9c
	.byte	0x2c
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0xa
	.2byte	0x502
	.byte	0xc
	.byte	0x2d
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0xa
	.byte	0xe4
	.byte	0x13
	.byte	0x2c
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0xc
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
	.byte	0x6
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
	.byte	0x7
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
	.byte	0x8
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
	.byte	0x9
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x15
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0x1d
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
	.byte	0x1e
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
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
	.byte	0x21
	.byte	0x21
	.byte	0
	.byte	0
	.byte	0
	.byte	0x22
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
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
	.byte	0x23
	.byte	0x5
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x24
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x25
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
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
	.byte	0x49
	.byte	0x13
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
	.byte	0x28
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
	.byte	0x29
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
	.byte	0x2a
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2b
	.byte	0x2e
	.byte	0
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
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x2c
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
	.byte	0x2d
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11-1
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL10
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8-1
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL4-1
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL2
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF3:
	.string	"short int"
.LASF93:
	.string	"_rand48"
.LASF72:
	.string	"_emergency"
.LASF109:
	.string	"_getdate_err"
.LASF62:
	.string	"_data"
.LASF129:
	.string	"tmrTimerControl"
.LASF113:
	.string	"_wcrtomb_state"
.LASF114:
	.string	"_wcsrtombs_state"
.LASF126:
	.string	"TrapNetCounter"
.LASF10:
	.string	"long long unsigned int"
.LASF52:
	.string	"_lbfsize"
.LASF128:
	.string	"__locale_t"
.LASF111:
	.string	"_mbrtowc_state"
.LASF106:
	.string	"_wctomb_state"
.LASF29:
	.string	"__tm_sec"
.LASF57:
	.string	"_close"
.LASF2:
	.string	"signed char"
.LASF122:
	.string	"intCallback_Type"
.LASF47:
	.string	"_base"
.LASF31:
	.string	"__tm_hour"
.LASF87:
	.string	"__sf"
.LASF38:
	.string	"_on_exit_args"
.LASF53:
	.string	"_cookie"
.LASF86:
	.string	"__sglue"
.LASF4:
	.string	"long int"
.LASF50:
	.string	"_flags"
.LASF42:
	.string	"_is_cxa"
.LASF26:
	.string	"_wds"
.LASF58:
	.string	"_ubuf"
.LASF78:
	.string	"_result_k"
.LASF5:
	.string	"long long int"
.LASF141:
	.string	"xTimerGenericCommand"
.LASF131:
	.string	"hw_t"
.LASF124:
	.string	"BaseType_t"
.LASF82:
	.string	"_cvtbuf"
.LASF112:
	.string	"_mbsrtowcs_state"
.LASF110:
	.string	"_mbrlen_state"
.LASF39:
	.string	"_fnargs"
.LASF123:
	.string	"intCbfArra"
.LASF25:
	.string	"_sign"
.LASF120:
	.string	"_impure_ptr"
.LASF70:
	.string	"_stderr"
.LASF27:
	.string	"_Bigint"
.LASF101:
	.string	"_gamma_signgam"
.LASF117:
	.string	"_nmalloc"
.LASF138:
	.string	"hal_hwtimer_create"
.LASF28:
	.string	"__tm"
.LASF64:
	.string	"_mbstate"
.LASF16:
	.string	"__wchb"
.LASF119:
	.string	"SystemCoreClock"
.LASF81:
	.string	"_cvtlen"
.LASF9:
	.string	"long unsigned int"
.LASF127:
	.string	"TimerHandle_t"
.LASF51:
	.string	"_file"
.LASF136:
	.string	"hal_hwtimer_change_period"
.LASF91:
	.string	"_niobs"
.LASF6:
	.string	"short unsigned int"
.LASF84:
	.string	"_atexit0"
.LASF108:
	.string	"_signal_buf"
.LASF99:
	.string	"_asctime_buf"
.LASF77:
	.string	"_result"
.LASF15:
	.string	"__wch"
.LASF11:
	.string	"wint_t"
.LASF63:
	.string	"_lock"
.LASF143:
	.string	"xTaskGetTickCount"
.LASF95:
	.string	"_mult"
.LASF55:
	.string	"_write"
.LASF34:
	.string	"__tm_year"
.LASF97:
	.string	"_unused_rand"
.LASF148:
	.string	"hal_hwtimer_init"
.LASF61:
	.string	"_offset"
.LASF125:
	.string	"TickType_t"
.LASF45:
	.string	"_fns"
.LASF116:
	.string	"_nextf"
.LASF33:
	.string	"__tm_mon"
.LASF43:
	.string	"_atexit"
.LASF75:
	.string	"__sdidinit"
.LASF12:
	.string	"_off_t"
.LASF134:
	.string	"pstnode"
.LASF80:
	.string	"_freelist"
.LASF144:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF21:
	.string	"_LOCK_RECURSIVE_T"
.LASF54:
	.string	"_read"
.LASF132:
	.string	"null"
.LASF7:
	.string	"int32_t"
.LASF40:
	.string	"_dso_handle"
.LASF145:
	.string	"/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/bl_iot_sdk/components/hal_drv/bl602_hal/hal_hwtimer.c"
.LASF83:
	.string	"_new"
.LASF146:
	.string	"/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/build_out/hal_drv"
.LASF115:
	.string	"_h_errno"
.LASF22:
	.string	"_flock_t"
.LASF36:
	.string	"__tm_yday"
.LASF46:
	.string	"__sbuf"
.LASF65:
	.string	"_flags2"
.LASF92:
	.string	"_iobs"
.LASF89:
	.string	"__FILE"
.LASF19:
	.string	"_mbstate_t"
.LASF49:
	.string	"__sFILE"
.LASF139:
	.string	"handler"
.LASF102:
	.string	"_rand_next"
.LASF104:
	.string	"_mblen_state"
.LASF71:
	.string	"_inc"
.LASF44:
	.string	"_ind"
.LASF74:
	.string	"_locale"
.LASF76:
	.string	"__cleanup"
.LASF73:
	.string	"_unspecified_locale_info"
.LASF24:
	.string	"_maxwds"
.LASF66:
	.string	"_reent"
.LASF94:
	.string	"_seed"
.LASF17:
	.string	"__count"
.LASF8:
	.string	"uint32_t"
.LASF142:
	.string	"xTimerCreate"
.LASF13:
	.string	"_fpos_t"
.LASF140:
	.string	"repeat"
.LASF67:
	.string	"_errno"
.LASF88:
	.string	"char"
.LASF60:
	.string	"_blksize"
.LASF137:
	.string	"hal_hwtimer_delete"
.LASF48:
	.string	"_size"
.LASF0:
	.string	"unsigned int"
.LASF130:
	.string	"TimerCallbackFunction_t"
.LASF135:
	.string	"period"
.LASF23:
	.string	"_next"
.LASF98:
	.string	"_strtok_last"
.LASF18:
	.string	"__value"
.LASF41:
	.string	"_fntypes"
.LASF1:
	.string	"unsigned char"
.LASF96:
	.string	"_add"
.LASF20:
	.string	"__ULong"
.LASF121:
	.string	"_global_impure_ptr"
.LASF56:
	.string	"_seek"
.LASF69:
	.string	"_stdout"
.LASF35:
	.string	"__tm_wday"
.LASF90:
	.string	"_glue"
.LASF68:
	.string	"_stdin"
.LASF14:
	.string	"_ssize_t"
.LASF107:
	.string	"_l64a_buf"
.LASF85:
	.string	"_sig_func"
.LASF59:
	.string	"_nbuf"
.LASF118:
	.string	"_unused"
.LASF133:
	.string	"hw_timer_t"
.LASF147:
	.string	"handle"
.LASF37:
	.string	"__tm_isdst"
.LASF100:
	.string	"_localtime_buf"
.LASF30:
	.string	"__tm_min"
.LASF103:
	.string	"_r48"
.LASF105:
	.string	"_mbtowc_state"
.LASF79:
	.string	"_p5s"
.LASF32:
	.string	"__tm_mday"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
