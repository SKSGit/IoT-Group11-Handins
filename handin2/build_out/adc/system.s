	.file	"system.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.vAssertCalled,"ax",@progbits
	.align	1
	.globl	vAssertCalled
	.type	vAssertCalled, @function
vAssertCalled:
.LFB4:
	.file 1 "/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/adc/system.c"
	.loc 1 16 1
	.cfi_startproc
	.loc 1 17 5
	.loc 1 16 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 17 23
	sw	zero,12(sp)
	.loc 1 18 5 is_stmt 1
 #APP
# 18 "/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/adc/system.c" 1
	csrc mstatus, 8
# 0 "" 2
	.loc 1 19 5
	.loc 1 19 11 is_stmt 0
 #NO_APP
	li	a5,1
.L2:
	.loc 1 19 35
	lw	a4,12(sp)
	.loc 1 19 11
	bne	a4,a5,.L3
	.loc 1 23 1
	addi	sp,sp,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	ra
.L3:
	.cfi_restore_state
	.loc 1 21 9 is_stmt 1
 #APP
# 21 "/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/adc/system.c" 1
	NOP
# 0 "" 2
 #NO_APP
	j	.L2
	.cfi_endproc
.LFE4:
	.size	vAssertCalled, .-vAssertCalled
	.section	.text.vApplicationStackOverflowHook,"ax",@progbits
	.align	1
	.globl	vApplicationStackOverflowHook
	.type	vApplicationStackOverflowHook, @function
vApplicationStackOverflowHook:
.LFB5:
	.loc 1 25 1
	.cfi_startproc
.LVL0:
	.loc 1 26 5
	lui	a0,%hi(.LC0)
.LVL1:
	.loc 1 25 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 26 5
	addi	a0,a0,%lo(.LC0)
	.loc 1 25 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 26 5
	call	puts
.LVL2:
.L6:
	.loc 1 27 5 is_stmt 1 discriminator 1
	.loc 1 30 5 discriminator 1
	j	.L6
	.cfi_endproc
.LFE5:
	.size	vApplicationStackOverflowHook, .-vApplicationStackOverflowHook
	.section	.text.vApplicationMallocFailedHook,"ax",@progbits
	.align	1
	.globl	vApplicationMallocFailedHook
	.type	vApplicationMallocFailedHook, @function
vApplicationMallocFailedHook:
.LFB6:
	.loc 1 33 1
	.cfi_startproc
	.loc 1 34 5
	.loc 1 33 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 34 5
	call	xPortGetFreeHeapSize
.LVL3:
	mv	a1,a0
	lui	a0,%hi(.LC1)
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL4:
.L9:
	.loc 1 36 5 is_stmt 1 discriminator 1
	.loc 1 39 5 discriminator 1
	j	.L9
	.cfi_endproc
.LFE6:
	.size	vApplicationMallocFailedHook, .-vApplicationMallocFailedHook
	.section	.text.vApplicationIdleHook,"ax",@progbits
	.align	1
	.globl	vApplicationIdleHook
	.type	vApplicationIdleHook, @function
vApplicationIdleHook:
.LFB7:
	.loc 1 42 1
	.cfi_startproc
	.loc 1 43 5
 #APP
# 43 "/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/adc/system.c" 1
	 wfi 
# 0 "" 2
	.loc 1 46 1 is_stmt 0
 #NO_APP
	ret
	.cfi_endproc
.LFE7:
	.size	vApplicationIdleHook, .-vApplicationIdleHook
	.section	.text.vApplicationGetIdleTaskMemory,"ax",@progbits
	.align	1
	.globl	vApplicationGetIdleTaskMemory
	.type	vApplicationGetIdleTaskMemory, @function
vApplicationGetIdleTaskMemory:
.LFB8:
	.loc 1 48 1 is_stmt 1
	.cfi_startproc
.LVL5:
	.loc 1 52 5
	.loc 1 53 5
	.loc 1 56 5
	.loc 1 56 27 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	sw	a5,0(a0)
	.loc 1 58 5 is_stmt 1
	.loc 1 58 29 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	addi	a5,a5,%lo(.LANCHOR1)
	sw	a5,0(a1)
	.loc 1 62 5 is_stmt 1
	.loc 1 62 27 is_stmt 0
	li	a5,96
	sw	a5,0(a2)
	.loc 1 63 1
	ret
	.cfi_endproc
.LFE8:
	.size	vApplicationGetIdleTaskMemory, .-vApplicationGetIdleTaskMemory
	.section	.text.vApplicationGetTimerTaskMemory,"ax",@progbits
	.align	1
	.globl	vApplicationGetTimerTaskMemory
	.type	vApplicationGetTimerTaskMemory, @function
vApplicationGetTimerTaskMemory:
.LFB9:
	.loc 1 68 1 is_stmt 1
	.cfi_startproc
.LVL6:
	.loc 1 72 5
	.loc 1 73 5
	.loc 1 76 5
	.loc 1 76 28 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	addi	a5,a5,%lo(.LANCHOR2)
	sw	a5,0(a0)
	.loc 1 78 5 is_stmt 1
	.loc 1 78 30 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	addi	a5,a5,%lo(.LANCHOR3)
	sw	a5,0(a1)
	.loc 1 82 5 is_stmt 1
	.loc 1 82 28 is_stmt 0
	li	a5,400
	sw	a5,0(a2)
	.loc 1 83 1
	ret
	.cfi_endproc
.LFE9:
	.size	vApplicationGetTimerTaskMemory, .-vApplicationGetTimerTaskMemory
	.section	.text.system_init,"ax",@progbits
	.align	1
	.globl	system_init
	.type	system_init, @function
system_init:
.LFB10:
	.loc 1 85 1 is_stmt 1
	.cfi_startproc
	.loc 1 86 5
	lui	a0,%hi(.LANCHOR4)
	addi	a0,a0,%lo(.LANCHOR4)
	tail	vPortDefineHeapRegions
.LVL7:
	.cfi_endproc
.LFE10:
	.size	system_init, .-system_init
	.section	.bss.uxIdleTaskStack.2407,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	uxIdleTaskStack.2407, @object
	.size	uxIdleTaskStack.2407, 384
uxIdleTaskStack.2407:
	.zero	384
	.section	.bss.uxTimerTaskStack.2414,"aw",@nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	uxTimerTaskStack.2414, @object
	.size	uxTimerTaskStack.2414, 1600
uxTimerTaskStack.2414:
	.zero	1600
	.section	.bss.xIdleTaskTCB.2406,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	xIdleTaskTCB.2406, @object
	.size	xIdleTaskTCB.2406, 96
xIdleTaskTCB.2406:
	.zero	96
	.section	.bss.xTimerTaskTCB.2413,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	xTimerTaskTCB.2413, @object
	.size	xTimerTaskTCB.2413, 96
xTimerTaskTCB.2413:
	.zero	96
	.section	.data.xHeapRegions,"aw"
	.align	2
	.set	.LANCHOR4,. + 0
	.type	xHeapRegions, @object
	.size	xHeapRegions, 32
xHeapRegions:
	.word	_heap_start
	.word	_heap_size
	.word	_heap_wifi_start
	.word	_heap_wifi_size
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata.vApplicationMallocFailedHook.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"Memory Allocate Failed. Current left size is %d bytes\r\n"
	.section	.rodata.vApplicationStackOverflowHook.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"Stack Overflow checked\r\n"
	.text
.Letext0:
	.file 2 "/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h"
	.file 4 "/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h"
	.file 5 "/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h"
	.file 6 "/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h"
	.file 7 "/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 8 "/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 9 "/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/portable.h"
	.file 10 "/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
	.file 11 "/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
	.file 12 "/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xd89
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF182
	.byte	0xc
	.4byte	.LASF183
	.4byte	.LASF184
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x38
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
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
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0xd8
	.byte	0x16
	.4byte	0x88
	.byte	0x5
	.4byte	.LASF13
	.byte	0x3
	.2byte	0x165
	.byte	0x16
	.4byte	0x88
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x2e
	.byte	0xe
	.4byte	0x59
	.byte	0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x74
	.byte	0xe
	.4byte	0x59
	.byte	0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x93
	.byte	0x14
	.4byte	0x81
	.byte	0x6
	.byte	0x4
	.byte	0x4
	.byte	0xa5
	.byte	0x3
	.4byte	0xee
	.byte	0x7
	.4byte	.LASF17
	.byte	0x4
	.byte	0xa7
	.byte	0xc
	.4byte	0x9b
	.byte	0x7
	.4byte	.LASF18
	.byte	0x4
	.byte	0xa8
	.byte	0x13
	.4byte	0xee
	.byte	0
	.byte	0x8
	.4byte	0x38
	.4byte	0xfe
	.byte	0x9
	.4byte	0x88
	.byte	0x3
	.byte	0
	.byte	0xa
	.byte	0x8
	.byte	0x4
	.byte	0xa2
	.byte	0x9
	.4byte	0x122
	.byte	0xb
	.4byte	.LASF19
	.byte	0x4
	.byte	0xa4
	.byte	0x7
	.4byte	0x81
	.byte	0
	.byte	0xb
	.4byte	.LASF20
	.byte	0x4
	.byte	0xa9
	.byte	0x5
	.4byte	0xcc
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0xaa
	.byte	0x3
	.4byte	0xfe
	.byte	0xc
	.byte	0x4
	.byte	0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0x16
	.byte	0x17
	.4byte	0x6c
	.byte	0x3
	.4byte	.LASF23
	.byte	0x6
	.byte	0xc
	.byte	0xd
	.4byte	0x81
	.byte	0x3
	.4byte	.LASF24
	.byte	0x5
	.byte	0x23
	.byte	0x1b
	.4byte	0x13c
	.byte	0xd
	.4byte	.LASF29
	.byte	0x18
	.byte	0x5
	.byte	0x34
	.byte	0x8
	.4byte	0x1ae
	.byte	0xb
	.4byte	.LASF25
	.byte	0x5
	.byte	0x36
	.byte	0x13
	.4byte	0x1ae
	.byte	0
	.byte	0xe
	.string	"_k"
	.byte	0x5
	.byte	0x37
	.byte	0x7
	.4byte	0x81
	.byte	0x4
	.byte	0xb
	.4byte	.LASF26
	.byte	0x5
	.byte	0x37
	.byte	0xb
	.4byte	0x81
	.byte	0x8
	.byte	0xb
	.4byte	.LASF27
	.byte	0x5
	.byte	0x37
	.byte	0x14
	.4byte	0x81
	.byte	0xc
	.byte	0xb
	.4byte	.LASF28
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
	.4byte	0x1b4
	.byte	0x14
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x154
	.byte	0x8
	.4byte	0x130
	.4byte	0x1c4
	.byte	0x9
	.4byte	0x88
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF30
	.byte	0x24
	.byte	0x5
	.byte	0x3c
	.byte	0x8
	.4byte	0x247
	.byte	0xb
	.4byte	.LASF31
	.byte	0x5
	.byte	0x3e
	.byte	0x7
	.4byte	0x81
	.byte	0
	.byte	0xb
	.4byte	.LASF32
	.byte	0x5
	.byte	0x3f
	.byte	0x7
	.4byte	0x81
	.byte	0x4
	.byte	0xb
	.4byte	.LASF33
	.byte	0x5
	.byte	0x40
	.byte	0x7
	.4byte	0x81
	.byte	0x8
	.byte	0xb
	.4byte	.LASF34
	.byte	0x5
	.byte	0x41
	.byte	0x7
	.4byte	0x81
	.byte	0xc
	.byte	0xb
	.4byte	.LASF35
	.byte	0x5
	.byte	0x42
	.byte	0x7
	.4byte	0x81
	.byte	0x10
	.byte	0xb
	.4byte	.LASF36
	.byte	0x5
	.byte	0x43
	.byte	0x7
	.4byte	0x81
	.byte	0x14
	.byte	0xb
	.4byte	.LASF37
	.byte	0x5
	.byte	0x44
	.byte	0x7
	.4byte	0x81
	.byte	0x18
	.byte	0xb
	.4byte	.LASF38
	.byte	0x5
	.byte	0x45
	.byte	0x7
	.4byte	0x81
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF39
	.byte	0x5
	.byte	0x46
	.byte	0x7
	.4byte	0x81
	.byte	0x20
	.byte	0
	.byte	0x10
	.4byte	.LASF40
	.2byte	0x108
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.4byte	0x28c
	.byte	0xb
	.4byte	.LASF41
	.byte	0x5
	.byte	0x50
	.byte	0x9
	.4byte	0x28c
	.byte	0
	.byte	0xb
	.4byte	.LASF42
	.byte	0x5
	.byte	0x51
	.byte	0x9
	.4byte	0x28c
	.byte	0x80
	.byte	0x11
	.4byte	.LASF43
	.byte	0x5
	.byte	0x53
	.byte	0xa
	.4byte	0x130
	.2byte	0x100
	.byte	0x11
	.4byte	.LASF44
	.byte	0x5
	.byte	0x56
	.byte	0xa
	.4byte	0x130
	.2byte	0x104
	.byte	0
	.byte	0x8
	.4byte	0x12e
	.4byte	0x29c
	.byte	0x9
	.4byte	0x88
	.byte	0x1f
	.byte	0
	.byte	0x10
	.4byte	.LASF45
	.2byte	0x190
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.4byte	0x2df
	.byte	0xb
	.4byte	.LASF25
	.byte	0x5
	.byte	0x63
	.byte	0x12
	.4byte	0x2df
	.byte	0
	.byte	0xb
	.4byte	.LASF46
	.byte	0x5
	.byte	0x64
	.byte	0x6
	.4byte	0x81
	.byte	0x4
	.byte	0xb
	.4byte	.LASF47
	.byte	0x5
	.byte	0x66
	.byte	0x9
	.4byte	0x2e5
	.byte	0x8
	.byte	0xb
	.4byte	.LASF40
	.byte	0x5
	.byte	0x67
	.byte	0x1e
	.4byte	0x247
	.byte	0x88
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x29c
	.byte	0x8
	.4byte	0x2f5
	.4byte	0x2f5
	.byte	0x9
	.4byte	0x88
	.byte	0x1f
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x2fb
	.byte	0x12
	.byte	0xd
	.4byte	.LASF48
	.byte	0x8
	.byte	0x5
	.byte	0x7a
	.byte	0x8
	.4byte	0x324
	.byte	0xb
	.4byte	.LASF49
	.byte	0x5
	.byte	0x7b
	.byte	0x11
	.4byte	0x324
	.byte	0
	.byte	0xb
	.4byte	.LASF50
	.byte	0x5
	.byte	0x7c
	.byte	0x6
	.4byte	0x81
	.byte	0x4
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x38
	.byte	0xd
	.4byte	.LASF51
	.byte	0x68
	.byte	0x5
	.byte	0xba
	.byte	0x8
	.4byte	0x46d
	.byte	0xe
	.string	"_p"
	.byte	0x5
	.byte	0xbb
	.byte	0x12
	.4byte	0x324
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
	.4byte	.LASF52
	.byte	0x5
	.byte	0xbe
	.byte	0x9
	.4byte	0x3f
	.byte	0xc
	.byte	0xb
	.4byte	.LASF53
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
	.4byte	0x2fc
	.byte	0x10
	.byte	0xb
	.4byte	.LASF54
	.byte	0x5
	.byte	0xc1
	.byte	0x7
	.4byte	0x81
	.byte	0x18
	.byte	0xb
	.4byte	.LASF55
	.byte	0x5
	.byte	0xc8
	.byte	0xa
	.4byte	0x12e
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF56
	.byte	0x5
	.byte	0xca
	.byte	0xe
	.4byte	0x5f1
	.byte	0x20
	.byte	0xb
	.4byte	.LASF57
	.byte	0x5
	.byte	0xcc
	.byte	0xe
	.4byte	0x61b
	.byte	0x24
	.byte	0xb
	.4byte	.LASF58
	.byte	0x5
	.byte	0xcf
	.byte	0xd
	.4byte	0x63f
	.byte	0x28
	.byte	0xb
	.4byte	.LASF59
	.byte	0x5
	.byte	0xd0
	.byte	0x9
	.4byte	0x659
	.byte	0x2c
	.byte	0xe
	.string	"_ub"
	.byte	0x5
	.byte	0xd3
	.byte	0x11
	.4byte	0x2fc
	.byte	0x30
	.byte	0xe
	.string	"_up"
	.byte	0x5
	.byte	0xd4
	.byte	0x12
	.4byte	0x324
	.byte	0x38
	.byte	0xe
	.string	"_ur"
	.byte	0x5
	.byte	0xd5
	.byte	0x7
	.4byte	0x81
	.byte	0x3c
	.byte	0xb
	.4byte	.LASF60
	.byte	0x5
	.byte	0xd8
	.byte	0x11
	.4byte	0x65f
	.byte	0x40
	.byte	0xb
	.4byte	.LASF61
	.byte	0x5
	.byte	0xd9
	.byte	0x11
	.4byte	0x66f
	.byte	0x43
	.byte	0xe
	.string	"_lb"
	.byte	0x5
	.byte	0xdc
	.byte	0x11
	.4byte	0x2fc
	.byte	0x44
	.byte	0xb
	.4byte	.LASF62
	.byte	0x5
	.byte	0xdf
	.byte	0x7
	.4byte	0x81
	.byte	0x4c
	.byte	0xb
	.4byte	.LASF63
	.byte	0x5
	.byte	0xe0
	.byte	0xa
	.4byte	0xa8
	.byte	0x50
	.byte	0xb
	.4byte	.LASF64
	.byte	0x5
	.byte	0xe3
	.byte	0x12
	.4byte	0x48b
	.byte	0x54
	.byte	0xb
	.4byte	.LASF65
	.byte	0x5
	.byte	0xe7
	.byte	0xc
	.4byte	0x148
	.byte	0x58
	.byte	0xb
	.4byte	.LASF66
	.byte	0x5
	.byte	0xe9
	.byte	0xe
	.4byte	0x122
	.byte	0x5c
	.byte	0xb
	.4byte	.LASF67
	.byte	0x5
	.byte	0xea
	.byte	0x7
	.4byte	0x81
	.byte	0x64
	.byte	0
	.byte	0x13
	.4byte	0xc0
	.4byte	0x48b
	.byte	0x14
	.4byte	0x48b
	.byte	0x14
	.4byte	0x12e
	.byte	0x14
	.4byte	0x5df
	.byte	0x14
	.4byte	0x81
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x496
	.byte	0x15
	.4byte	0x48b
	.byte	0x16
	.4byte	.LASF68
	.2byte	0x428
	.byte	0x5
	.2byte	0x265
	.byte	0x8
	.4byte	0x5df
	.byte	0x17
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x267
	.byte	0x7
	.4byte	0x81
	.byte	0
	.byte	0x17
	.4byte	.LASF70
	.byte	0x5
	.2byte	0x26c
	.byte	0xb
	.4byte	0x6cb
	.byte	0x4
	.byte	0x17
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x26c
	.byte	0x14
	.4byte	0x6cb
	.byte	0x8
	.byte	0x17
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x26c
	.byte	0x1e
	.4byte	0x6cb
	.byte	0xc
	.byte	0x17
	.4byte	.LASF73
	.byte	0x5
	.2byte	0x26e
	.byte	0x7
	.4byte	0x81
	.byte	0x10
	.byte	0x17
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x26f
	.byte	0x8
	.4byte	0x8cb
	.byte	0x14
	.byte	0x17
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x272
	.byte	0x7
	.4byte	0x81
	.byte	0x30
	.byte	0x17
	.4byte	.LASF76
	.byte	0x5
	.2byte	0x273
	.byte	0x16
	.4byte	0x8e0
	.byte	0x34
	.byte	0x17
	.4byte	.LASF77
	.byte	0x5
	.2byte	0x275
	.byte	0x7
	.4byte	0x81
	.byte	0x38
	.byte	0x17
	.4byte	.LASF78
	.byte	0x5
	.2byte	0x277
	.byte	0xa
	.4byte	0x8f1
	.byte	0x3c
	.byte	0x17
	.4byte	.LASF79
	.byte	0x5
	.2byte	0x27a
	.byte	0x13
	.4byte	0x1ae
	.byte	0x40
	.byte	0x17
	.4byte	.LASF80
	.byte	0x5
	.2byte	0x27b
	.byte	0x7
	.4byte	0x81
	.byte	0x44
	.byte	0x17
	.4byte	.LASF81
	.byte	0x5
	.2byte	0x27c
	.byte	0x13
	.4byte	0x1ae
	.byte	0x48
	.byte	0x17
	.4byte	.LASF82
	.byte	0x5
	.2byte	0x27d
	.byte	0x14
	.4byte	0x8f7
	.byte	0x4c
	.byte	0x17
	.4byte	.LASF83
	.byte	0x5
	.2byte	0x280
	.byte	0x7
	.4byte	0x81
	.byte	0x50
	.byte	0x17
	.4byte	.LASF84
	.byte	0x5
	.2byte	0x281
	.byte	0x9
	.4byte	0x5df
	.byte	0x54
	.byte	0x17
	.4byte	.LASF85
	.byte	0x5
	.2byte	0x2a4
	.byte	0x7
	.4byte	0x8a6
	.byte	0x58
	.byte	0x18
	.4byte	.LASF45
	.byte	0x5
	.2byte	0x2a8
	.byte	0x13
	.4byte	0x2df
	.2byte	0x148
	.byte	0x18
	.4byte	.LASF86
	.byte	0x5
	.2byte	0x2a9
	.byte	0x12
	.4byte	0x29c
	.2byte	0x14c
	.byte	0x18
	.4byte	.LASF87
	.byte	0x5
	.2byte	0x2ad
	.byte	0xc
	.4byte	0x908
	.2byte	0x2dc
	.byte	0x18
	.4byte	.LASF88
	.byte	0x5
	.2byte	0x2b2
	.byte	0x10
	.4byte	0x68c
	.2byte	0x2e0
	.byte	0x18
	.4byte	.LASF89
	.byte	0x5
	.2byte	0x2b4
	.byte	0xa
	.4byte	0x914
	.2byte	0x2ec
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x5e5
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF90
	.byte	0x15
	.4byte	0x5e5
	.byte	0xf
	.byte	0x4
	.4byte	0x46d
	.byte	0x13
	.4byte	0xc0
	.4byte	0x615
	.byte	0x14
	.4byte	0x48b
	.byte	0x14
	.4byte	0x12e
	.byte	0x14
	.4byte	0x615
	.byte	0x14
	.4byte	0x81
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x5ec
	.byte	0xf
	.byte	0x4
	.4byte	0x5f7
	.byte	0x13
	.4byte	0xb4
	.4byte	0x63f
	.byte	0x14
	.4byte	0x48b
	.byte	0x14
	.4byte	0x12e
	.byte	0x14
	.4byte	0xb4
	.byte	0x14
	.4byte	0x81
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x621
	.byte	0x13
	.4byte	0x81
	.4byte	0x659
	.byte	0x14
	.4byte	0x48b
	.byte	0x14
	.4byte	0x12e
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x645
	.byte	0x8
	.4byte	0x38
	.4byte	0x66f
	.byte	0x9
	.4byte	0x88
	.byte	0x2
	.byte	0
	.byte	0x8
	.4byte	0x38
	.4byte	0x67f
	.byte	0x9
	.4byte	0x88
	.byte	0
	.byte	0
	.byte	0x5
	.4byte	.LASF91
	.byte	0x5
	.2byte	0x124
	.byte	0x18
	.4byte	0x32a
	.byte	0x19
	.4byte	.LASF92
	.byte	0xc
	.byte	0x5
	.2byte	0x128
	.byte	0x8
	.4byte	0x6c5
	.byte	0x17
	.4byte	.LASF25
	.byte	0x5
	.2byte	0x12a
	.byte	0x11
	.4byte	0x6c5
	.byte	0
	.byte	0x17
	.4byte	.LASF93
	.byte	0x5
	.2byte	0x12b
	.byte	0x7
	.4byte	0x81
	.byte	0x4
	.byte	0x17
	.4byte	.LASF94
	.byte	0x5
	.2byte	0x12c
	.byte	0xb
	.4byte	0x6cb
	.byte	0x8
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x68c
	.byte	0xf
	.byte	0x4
	.4byte	0x67f
	.byte	0x19
	.4byte	.LASF95
	.byte	0xe
	.byte	0x5
	.2byte	0x144
	.byte	0x8
	.4byte	0x70a
	.byte	0x17
	.4byte	.LASF96
	.byte	0x5
	.2byte	0x145
	.byte	0x12
	.4byte	0x70a
	.byte	0
	.byte	0x17
	.4byte	.LASF97
	.byte	0x5
	.2byte	0x146
	.byte	0x12
	.4byte	0x70a
	.byte	0x6
	.byte	0x17
	.4byte	.LASF98
	.byte	0x5
	.2byte	0x147
	.byte	0x12
	.4byte	0x46
	.byte	0xc
	.byte	0
	.byte	0x8
	.4byte	0x46
	.4byte	0x71a
	.byte	0x9
	.4byte	0x88
	.byte	0x2
	.byte	0
	.byte	0x1a
	.byte	0xd0
	.byte	0x5
	.2byte	0x285
	.byte	0x7
	.4byte	0x82f
	.byte	0x17
	.4byte	.LASF99
	.byte	0x5
	.2byte	0x287
	.byte	0x18
	.4byte	0x88
	.byte	0
	.byte	0x17
	.4byte	.LASF100
	.byte	0x5
	.2byte	0x288
	.byte	0x12
	.4byte	0x5df
	.byte	0x4
	.byte	0x17
	.4byte	.LASF101
	.byte	0x5
	.2byte	0x289
	.byte	0x10
	.4byte	0x82f
	.byte	0x8
	.byte	0x17
	.4byte	.LASF102
	.byte	0x5
	.2byte	0x28a
	.byte	0x17
	.4byte	0x1c4
	.byte	0x24
	.byte	0x17
	.4byte	.LASF103
	.byte	0x5
	.2byte	0x28b
	.byte	0xf
	.4byte	0x81
	.byte	0x48
	.byte	0x17
	.4byte	.LASF104
	.byte	0x5
	.2byte	0x28c
	.byte	0x2c
	.4byte	0x7a
	.byte	0x50
	.byte	0x17
	.4byte	.LASF105
	.byte	0x5
	.2byte	0x28d
	.byte	0x1a
	.4byte	0x6d1
	.byte	0x58
	.byte	0x17
	.4byte	.LASF106
	.byte	0x5
	.2byte	0x28e
	.byte	0x16
	.4byte	0x122
	.byte	0x68
	.byte	0x17
	.4byte	.LASF107
	.byte	0x5
	.2byte	0x28f
	.byte	0x16
	.4byte	0x122
	.byte	0x70
	.byte	0x17
	.4byte	.LASF108
	.byte	0x5
	.2byte	0x290
	.byte	0x16
	.4byte	0x122
	.byte	0x78
	.byte	0x17
	.4byte	.LASF109
	.byte	0x5
	.2byte	0x291
	.byte	0x10
	.4byte	0x83f
	.byte	0x80
	.byte	0x17
	.4byte	.LASF110
	.byte	0x5
	.2byte	0x292
	.byte	0x10
	.4byte	0x84f
	.byte	0x88
	.byte	0x17
	.4byte	.LASF111
	.byte	0x5
	.2byte	0x293
	.byte	0xf
	.4byte	0x81
	.byte	0xa0
	.byte	0x17
	.4byte	.LASF112
	.byte	0x5
	.2byte	0x294
	.byte	0x16
	.4byte	0x122
	.byte	0xa4
	.byte	0x17
	.4byte	.LASF113
	.byte	0x5
	.2byte	0x295
	.byte	0x16
	.4byte	0x122
	.byte	0xac
	.byte	0x17
	.4byte	.LASF114
	.byte	0x5
	.2byte	0x296
	.byte	0x16
	.4byte	0x122
	.byte	0xb4
	.byte	0x17
	.4byte	.LASF115
	.byte	0x5
	.2byte	0x297
	.byte	0x16
	.4byte	0x122
	.byte	0xbc
	.byte	0x17
	.4byte	.LASF116
	.byte	0x5
	.2byte	0x298
	.byte	0x16
	.4byte	0x122
	.byte	0xc4
	.byte	0x17
	.4byte	.LASF117
	.byte	0x5
	.2byte	0x299
	.byte	0x8
	.4byte	0x81
	.byte	0xcc
	.byte	0
	.byte	0x8
	.4byte	0x5e5
	.4byte	0x83f
	.byte	0x9
	.4byte	0x88
	.byte	0x19
	.byte	0
	.byte	0x8
	.4byte	0x5e5
	.4byte	0x84f
	.byte	0x9
	.4byte	0x88
	.byte	0x7
	.byte	0
	.byte	0x8
	.4byte	0x5e5
	.4byte	0x85f
	.byte	0x9
	.4byte	0x88
	.byte	0x17
	.byte	0
	.byte	0x1a
	.byte	0xf0
	.byte	0x5
	.2byte	0x29e
	.byte	0x7
	.4byte	0x886
	.byte	0x17
	.4byte	.LASF118
	.byte	0x5
	.2byte	0x2a1
	.byte	0x1b
	.4byte	0x886
	.byte	0
	.byte	0x17
	.4byte	.LASF119
	.byte	0x5
	.2byte	0x2a2
	.byte	0x18
	.4byte	0x896
	.byte	0x78
	.byte	0
	.byte	0x8
	.4byte	0x324
	.4byte	0x896
	.byte	0x9
	.4byte	0x88
	.byte	0x1d
	.byte	0
	.byte	0x8
	.4byte	0x88
	.4byte	0x8a6
	.byte	0x9
	.4byte	0x88
	.byte	0x1d
	.byte	0
	.byte	0x1b
	.byte	0xf0
	.byte	0x5
	.2byte	0x283
	.byte	0x3
	.4byte	0x8cb
	.byte	0x1c
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x29a
	.byte	0xb
	.4byte	0x71a
	.byte	0x1c
	.4byte	.LASF120
	.byte	0x5
	.2byte	0x2a3
	.byte	0xb
	.4byte	0x85f
	.byte	0
	.byte	0x8
	.4byte	0x5e5
	.4byte	0x8db
	.byte	0x9
	.4byte	0x88
	.byte	0x18
	.byte	0
	.byte	0x1d
	.4byte	.LASF153
	.byte	0xf
	.byte	0x4
	.4byte	0x8db
	.byte	0x1e
	.4byte	0x8f1
	.byte	0x14
	.4byte	0x48b
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x8e6
	.byte	0xf
	.byte	0x4
	.4byte	0x1ae
	.byte	0x1e
	.4byte	0x908
	.byte	0x14
	.4byte	0x81
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x90e
	.byte	0xf
	.byte	0x4
	.4byte	0x8fd
	.byte	0x8
	.4byte	0x67f
	.4byte	0x924
	.byte	0x9
	.4byte	0x88
	.byte	0x2
	.byte	0
	.byte	0x1f
	.4byte	.LASF121
	.byte	0x5
	.2byte	0x333
	.byte	0x17
	.4byte	0x48b
	.byte	0x1f
	.4byte	.LASF122
	.byte	0x5
	.2byte	0x334
	.byte	0x1d
	.4byte	0x491
	.byte	0x3
	.4byte	.LASF123
	.byte	0x7
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF124
	.byte	0x7
	.byte	0x2c
	.byte	0x13
	.4byte	0x4d
	.byte	0x3
	.4byte	.LASF125
	.byte	0x7
	.byte	0x30
	.byte	0x14
	.4byte	0x60
	.byte	0x20
	.4byte	0x956
	.byte	0x3
	.4byte	.LASF126
	.byte	0x8
	.byte	0x3e
	.byte	0x12
	.4byte	0x956
	.byte	0x3
	.4byte	.LASF127
	.byte	0x8
	.byte	0x3f
	.byte	0x11
	.4byte	0x94a
	.byte	0x3
	.4byte	.LASF128
	.byte	0x8
	.byte	0x40
	.byte	0x12
	.4byte	0x956
	.byte	0x3
	.4byte	.LASF129
	.byte	0x8
	.byte	0x41
	.byte	0x12
	.4byte	0x956
	.byte	0x21
	.4byte	.LASF130
	.byte	0x8
	.byte	0x54
	.byte	0x13
	.4byte	0x973
	.byte	0xd
	.4byte	.LASF131
	.byte	0x8
	.byte	0x9
	.byte	0x7a
	.byte	0x10
	.4byte	0x9cb
	.byte	0xb
	.4byte	.LASF132
	.byte	0x9
	.byte	0x7c
	.byte	0xe
	.4byte	0x9cb
	.byte	0
	.byte	0xb
	.4byte	.LASF133
	.byte	0x9
	.byte	0x7d
	.byte	0xc
	.4byte	0x8f
	.byte	0x4
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x93e
	.byte	0x3
	.4byte	.LASF134
	.byte	0x9
	.byte	0x7e
	.byte	0x3
	.4byte	0x9a3
	.byte	0x19
	.4byte	.LASF135
	.byte	0x14
	.byte	0xa
	.2byte	0x414
	.byte	0x8
	.4byte	0xa08
	.byte	0x17
	.4byte	.LASF136
	.byte	0xa
	.2byte	0x419
	.byte	0x10
	.4byte	0x98b
	.byte	0
	.byte	0x17
	.4byte	.LASF137
	.byte	0xa
	.2byte	0x41a
	.byte	0xb
	.4byte	0xa08
	.byte	0x4
	.byte	0
	.byte	0x8
	.4byte	0x12e
	.4byte	0xa18
	.byte	0x9
	.4byte	0x88
	.byte	0x3
	.byte	0
	.byte	0x5
	.4byte	.LASF138
	.byte	0xa
	.2byte	0x41f
	.byte	0x22
	.4byte	0x9dd
	.byte	0x19
	.4byte	.LASF139
	.byte	0x60
	.byte	0xa
	.2byte	0x447
	.byte	0x10
	.4byte	0xace
	.byte	0x17
	.4byte	.LASF140
	.byte	0xa
	.2byte	0x449
	.byte	0xb
	.4byte	0x12e
	.byte	0
	.byte	0x17
	.4byte	.LASF141
	.byte	0xa
	.2byte	0x44d
	.byte	0x16
	.4byte	0xace
	.byte	0x4
	.byte	0x17
	.4byte	.LASF142
	.byte	0xa
	.2byte	0x44e
	.byte	0x11
	.4byte	0x97f
	.byte	0x2c
	.byte	0x17
	.4byte	.LASF143
	.byte	0xa
	.2byte	0x44f
	.byte	0xb
	.4byte	0x12e
	.byte	0x30
	.byte	0x17
	.4byte	.LASF144
	.byte	0xa
	.2byte	0x450
	.byte	0xd
	.4byte	0xade
	.byte	0x34
	.byte	0x17
	.4byte	.LASF145
	.byte	0xa
	.2byte	0x455
	.byte	0x15
	.4byte	0x97f
	.byte	0x44
	.byte	0x17
	.4byte	.LASF146
	.byte	0xa
	.2byte	0x458
	.byte	0x15
	.4byte	0xaee
	.byte	0x48
	.byte	0x17
	.4byte	.LASF147
	.byte	0xa
	.2byte	0x45b
	.byte	0x15
	.4byte	0xaee
	.byte	0x50
	.byte	0x17
	.4byte	.LASF148
	.byte	0xa
	.2byte	0x46a
	.byte	0x12
	.4byte	0x956
	.byte	0x58
	.byte	0x17
	.4byte	.LASF149
	.byte	0xa
	.2byte	0x46b
	.byte	0x11
	.4byte	0x93e
	.byte	0x5c
	.byte	0x17
	.4byte	.LASF150
	.byte	0xa
	.2byte	0x46e
	.byte	0x11
	.4byte	0x93e
	.byte	0x5d
	.byte	0
	.byte	0x8
	.4byte	0xa18
	.4byte	0xade
	.byte	0x9
	.4byte	0x88
	.byte	0x1
	.byte	0
	.byte	0x8
	.4byte	0x93e
	.4byte	0xaee
	.byte	0x9
	.4byte	0x88
	.byte	0xf
	.byte	0
	.byte	0x8
	.4byte	0x97f
	.4byte	0xafe
	.byte	0x9
	.4byte	0x88
	.byte	0x1
	.byte	0
	.byte	0x5
	.4byte	.LASF151
	.byte	0xa
	.2byte	0x477
	.byte	0x3
	.4byte	0xa25
	.byte	0x3
	.4byte	.LASF152
	.byte	0xb
	.byte	0x46
	.byte	0x25
	.4byte	0xb17
	.byte	0xf
	.byte	0x4
	.4byte	0xb1d
	.byte	0x1d
	.4byte	.LASF154
	.byte	0xf
	.byte	0x4
	.4byte	0x967
	.byte	0x21
	.4byte	.LASF155
	.byte	0x1
	.byte	0x4
	.byte	0x10
	.4byte	0x93e
	.byte	0x21
	.4byte	.LASF156
	.byte	0x1
	.byte	0x5
	.byte	0x10
	.4byte	0x93e
	.byte	0x21
	.4byte	.LASF157
	.byte	0x1
	.byte	0x6
	.byte	0x10
	.4byte	0x93e
	.byte	0x21
	.4byte	.LASF158
	.byte	0x1
	.byte	0x7
	.byte	0x10
	.4byte	0x93e
	.byte	0x8
	.4byte	0x9d1
	.4byte	0xb68
	.byte	0x9
	.4byte	0x88
	.byte	0x3
	.byte	0
	.byte	0x22
	.4byte	.LASF162
	.byte	0x1
	.byte	0x8
	.byte	0x15
	.4byte	0xb58
	.byte	0x5
	.byte	0x3
	.4byte	xHeapRegions
	.byte	0x23
	.4byte	.LASF185
	.byte	0x1
	.byte	0x54
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0xba4
	.byte	0x24
	.4byte	.LVL7
	.4byte	0xd5c
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR4
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LASF165
	.byte	0x1
	.byte	0x43
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0xc09
	.byte	0x27
	.4byte	.LASF159
	.byte	0x1
	.byte	0x43
	.byte	0x34
	.4byte	0xc09
	.byte	0x1
	.byte	0x5a
	.byte	0x27
	.4byte	.LASF160
	.byte	0x1
	.byte	0x43
	.byte	0x59
	.4byte	0xc15
	.byte	0x1
	.byte	0x5b
	.byte	0x27
	.4byte	.LASF161
	.byte	0x1
	.byte	0x43
	.byte	0x7c
	.4byte	0xc1b
	.byte	0x1
	.byte	0x5c
	.byte	0x22
	.4byte	.LASF163
	.byte	0x1
	.byte	0x48
	.byte	0x19
	.4byte	0xafe
	.byte	0x5
	.byte	0x3
	.4byte	xTimerTaskTCB.2413
	.byte	0x22
	.4byte	.LASF164
	.byte	0x1
	.byte	0x49
	.byte	0x18
	.4byte	0xc21
	.byte	0x5
	.byte	0x3
	.4byte	uxTimerTaskStack.2414
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0xc0f
	.byte	0xf
	.byte	0x4
	.4byte	0xafe
	.byte	0xf
	.byte	0x4
	.4byte	0xb22
	.byte	0xf
	.byte	0x4
	.4byte	0x956
	.byte	0x8
	.4byte	0x967
	.4byte	0xc32
	.byte	0x28
	.4byte	0x88
	.2byte	0x18f
	.byte	0
	.byte	0x26
	.4byte	.LASF166
	.byte	0x1
	.byte	0x2f
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0xc97
	.byte	0x27
	.4byte	.LASF167
	.byte	0x1
	.byte	0x2f
	.byte	0x33
	.4byte	0xc09
	.byte	0x1
	.byte	0x5a
	.byte	0x27
	.4byte	.LASF168
	.byte	0x1
	.byte	0x2f
	.byte	0x57
	.4byte	0xc15
	.byte	0x1
	.byte	0x5b
	.byte	0x27
	.4byte	.LASF169
	.byte	0x1
	.byte	0x2f
	.byte	0x79
	.4byte	0xc1b
	.byte	0x1
	.byte	0x5c
	.byte	0x22
	.4byte	.LASF170
	.byte	0x1
	.byte	0x34
	.byte	0x19
	.4byte	0xafe
	.byte	0x5
	.byte	0x3
	.4byte	xIdleTaskTCB.2406
	.byte	0x22
	.4byte	.LASF171
	.byte	0x1
	.byte	0x35
	.byte	0x18
	.4byte	0xc97
	.byte	0x5
	.byte	0x3
	.4byte	uxIdleTaskStack.2407
	.byte	0
	.byte	0x8
	.4byte	0x967
	.4byte	0xca7
	.byte	0x9
	.4byte	0x88
	.byte	0x5f
	.byte	0
	.byte	0x29
	.4byte	.LASF186
	.byte	0x1
	.byte	0x29
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.byte	0x26
	.4byte	.LASF172
	.byte	0x1
	.byte	0x20
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0xcec
	.byte	0x2a
	.4byte	.LVL3
	.4byte	0xd68
	.byte	0x2b
	.4byte	.LVL4
	.4byte	0xd74
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LASF173
	.byte	0x1
	.byte	0x18
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0xd36
	.byte	0x2c
	.4byte	.LASF174
	.byte	0x1
	.byte	0x18
	.byte	0x31
	.4byte	0xb0b
	.4byte	.LLST0
	.byte	0x2c
	.4byte	.LASF175
	.byte	0x1
	.byte	0x18
	.byte	0x3e
	.4byte	0x5df
	.4byte	.LLST1
	.byte	0x2b
	.4byte	.LVL2
	.4byte	0xd80
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LASF176
	.byte	0x1
	.byte	0xf
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0xd5c
	.byte	0x22
	.4byte	.LASF177
	.byte	0x1
	.byte	0x11
	.byte	0x17
	.4byte	0x962
	.byte	0x2
	.byte	0x91
	.byte	0x7c
	.byte	0
	.byte	0x2d
	.4byte	.LASF178
	.4byte	.LASF178
	.byte	0x9
	.byte	0x8b
	.byte	0x6
	.byte	0x2d
	.4byte	.LASF179
	.4byte	.LASF179
	.byte	0x9
	.byte	0x94
	.byte	0x8
	.byte	0x2d
	.4byte	.LASF180
	.4byte	.LASF180
	.byte	0xc
	.byte	0xc8
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF181
	.4byte	.LASF181
	.byte	0xc
	.byte	0xdd
	.byte	0x5
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
	.byte	0x35
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x21
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
	.byte	0x22
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
	.byte	0x23
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
	.byte	0x24
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x28
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x29
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
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2c
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
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2-1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF151:
	.string	"StaticTask_t"
.LASF175:
	.string	"pcTaskName"
.LASF179:
	.string	"xPortGetFreeHeapSize"
.LASF169:
	.string	"pulIdleTaskStackSize"
.LASF40:
	.string	"_on_exit_args"
.LASF146:
	.string	"uxDummy10"
.LASF147:
	.string	"uxDummy12"
.LASF108:
	.string	"_wctomb_state"
.LASF154:
	.string	"tskTaskControlBlock"
.LASF105:
	.string	"_r48"
.LASF177:
	.string	"ulSetTo1ToExitFunction"
.LASF185:
	.string	"system_init"
.LASF110:
	.string	"_signal_buf"
.LASF11:
	.string	"unsigned int"
.LASF126:
	.string	"StackType_t"
.LASF54:
	.string	"_lbfsize"
.LASF52:
	.string	"_flags"
.LASF5:
	.string	"__int32_t"
.LASF69:
	.string	"_errno"
.LASF150:
	.string	"uxDummy20"
.LASF163:
	.string	"xTimerTaskTCB"
.LASF155:
	.string	"_heap_start"
.LASF23:
	.string	"_LOCK_RECURSIVE_T"
.LASF162:
	.string	"xHeapRegions"
.LASF56:
	.string	"_read"
.LASF112:
	.string	"_mbrlen_state"
.LASF186:
	.string	"vApplicationIdleHook"
.LASF71:
	.string	"_stdout"
.LASF15:
	.string	"_fpos_t"
.LASF47:
	.string	"_fns"
.LASF55:
	.string	"_cookie"
.LASF29:
	.string	"_Bigint"
.LASF37:
	.string	"__tm_wday"
.LASF79:
	.string	"_result"
.LASF125:
	.string	"uint32_t"
.LASF33:
	.string	"__tm_hour"
.LASF156:
	.string	"_heap_size"
.LASF19:
	.string	"__count"
.LASF32:
	.string	"__tm_min"
.LASF121:
	.string	"_impure_ptr"
.LASF118:
	.string	"_nextf"
.LASF95:
	.string	"_rand48"
.LASF80:
	.string	"_result_k"
.LASF10:
	.string	"long long unsigned int"
.LASF101:
	.string	"_asctime_buf"
.LASF51:
	.string	"__sFILE"
.LASF28:
	.string	"_wds"
.LASF91:
	.string	"__FILE"
.LASF63:
	.string	"_offset"
.LASF158:
	.string	"_heap_wifi_size"
.LASF74:
	.string	"_emergency"
.LASF130:
	.string	"TrapNetCounter"
.LASF181:
	.string	"puts"
.LASF12:
	.string	"size_t"
.LASF183:
	.string	"/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/adc/system.c"
.LASF31:
	.string	"__tm_sec"
.LASF38:
	.string	"__tm_yday"
.LASF73:
	.string	"_inc"
.LASF46:
	.string	"_ind"
.LASF138:
	.string	"StaticListItem_t"
.LASF25:
	.string	"_next"
.LASF114:
	.string	"_mbsrtowcs_state"
.LASF133:
	.string	"xSizeInBytes"
.LASF137:
	.string	"pvDummy3"
.LASF142:
	.string	"uxDummy5"
.LASF145:
	.string	"uxDummy9"
.LASF20:
	.string	"__value"
.LASF81:
	.string	"_p5s"
.LASF116:
	.string	"_wcsrtombs_state"
.LASF106:
	.string	"_mblen_state"
.LASF90:
	.string	"char"
.LASF184:
	.string	"/home/sadikubuntu/vcs/go/src/IoT-Group11-Handins/handin2/build_out/adc"
.LASF34:
	.string	"__tm_mday"
.LASF87:
	.string	"_sig_func"
.LASF113:
	.string	"_mbrtowc_state"
.LASF86:
	.string	"_atexit0"
.LASF128:
	.string	"UBaseType_t"
.LASF172:
	.string	"vApplicationMallocFailedHook"
.LASF24:
	.string	"_flock_t"
.LASF17:
	.string	"__wch"
.LASF94:
	.string	"_iobs"
.LASF123:
	.string	"uint8_t"
.LASF59:
	.string	"_close"
.LASF77:
	.string	"__sdidinit"
.LASF160:
	.string	"ppxTimerTaskStackBuffer"
.LASF166:
	.string	"vApplicationGetIdleTaskMemory"
.LASF70:
	.string	"_stdin"
.LASF103:
	.string	"_gamma_signgam"
.LASF140:
	.string	"pxDummy1"
.LASF149:
	.string	"ucDummy19"
.LASF9:
	.string	"long long int"
.LASF143:
	.string	"pxDummy6"
.LASF180:
	.string	"printf"
.LASF49:
	.string	"_base"
.LASF176:
	.string	"vAssertCalled"
.LASF82:
	.string	"_freelist"
.LASF97:
	.string	"_mult"
.LASF22:
	.string	"__ULong"
.LASF115:
	.string	"_wcrtomb_state"
.LASF127:
	.string	"BaseType_t"
.LASF53:
	.string	"_file"
.LASF167:
	.string	"ppxIdleTaskTCBBuffer"
.LASF78:
	.string	"__cleanup"
.LASF161:
	.string	"pulTimerTaskStackSize"
.LASF21:
	.string	"_mbstate_t"
.LASF182:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF41:
	.string	"_fnargs"
.LASF132:
	.string	"pucStartAddress"
.LASF139:
	.string	"xSTATIC_TCB"
.LASF39:
	.string	"__tm_isdst"
.LASF152:
	.string	"TaskHandle_t"
.LASF117:
	.string	"_h_errno"
.LASF129:
	.string	"TickType_t"
.LASF174:
	.string	"xTask"
.LASF35:
	.string	"__tm_mon"
.LASF144:
	.string	"ucDummy7"
.LASF57:
	.string	"_write"
.LASF45:
	.string	"_atexit"
.LASF66:
	.string	"_mbstate"
.LASF178:
	.string	"vPortDefineHeapRegions"
.LASF173:
	.string	"vApplicationStackOverflowHook"
.LASF2:
	.string	"short int"
.LASF6:
	.string	"long int"
.LASF89:
	.string	"__sf"
.LASF27:
	.string	"_sign"
.LASF64:
	.string	"_data"
.LASF18:
	.string	"__wchb"
.LASF122:
	.string	"_global_impure_ptr"
.LASF159:
	.string	"ppxTimerTaskTCBBuffer"
.LASF36:
	.string	"__tm_year"
.LASF102:
	.string	"_localtime_buf"
.LASF120:
	.string	"_unused"
.LASF4:
	.string	"__uint8_t"
.LASF85:
	.string	"_new"
.LASF83:
	.string	"_cvtlen"
.LASF26:
	.string	"_maxwds"
.LASF109:
	.string	"_l64a_buf"
.LASF165:
	.string	"vApplicationGetTimerTaskMemory"
.LASF148:
	.string	"ulDummy18"
.LASF135:
	.string	"xSTATIC_LIST_ITEM"
.LASF62:
	.string	"_blksize"
.LASF30:
	.string	"__tm"
.LASF171:
	.string	"uxIdleTaskStack"
.LASF65:
	.string	"_lock"
.LASF170:
	.string	"xIdleTaskTCB"
.LASF8:
	.string	"long unsigned int"
.LASF93:
	.string	"_niobs"
.LASF13:
	.string	"wint_t"
.LASF124:
	.string	"int32_t"
.LASF42:
	.string	"_dso_handle"
.LASF157:
	.string	"_heap_wifi_start"
.LASF168:
	.string	"ppxIdleTaskStackBuffer"
.LASF84:
	.string	"_cvtbuf"
.LASF1:
	.string	"unsigned char"
.LASF7:
	.string	"__uint32_t"
.LASF111:
	.string	"_getdate_err"
.LASF98:
	.string	"_add"
.LASF136:
	.string	"xDummy2"
.LASF141:
	.string	"xDummy3"
.LASF48:
	.string	"__sbuf"
.LASF92:
	.string	"_glue"
.LASF88:
	.string	"__sglue"
.LASF100:
	.string	"_strtok_last"
.LASF107:
	.string	"_mbtowc_state"
.LASF76:
	.string	"_locale"
.LASF16:
	.string	"_ssize_t"
.LASF0:
	.string	"signed char"
.LASF68:
	.string	"_reent"
.LASF3:
	.string	"short unsigned int"
.LASF164:
	.string	"uxTimerTaskStack"
.LASF43:
	.string	"_fntypes"
.LASF131:
	.string	"HeapRegion"
.LASF50:
	.string	"_size"
.LASF14:
	.string	"_off_t"
.LASF61:
	.string	"_nbuf"
.LASF99:
	.string	"_unused_rand"
.LASF75:
	.string	"_unspecified_locale_info"
.LASF67:
	.string	"_flags2"
.LASF44:
	.string	"_is_cxa"
.LASF134:
	.string	"HeapRegion_t"
.LASF96:
	.string	"_seed"
.LASF104:
	.string	"_rand_next"
.LASF153:
	.string	"__locale_t"
.LASF58:
	.string	"_seek"
.LASF72:
	.string	"_stderr"
.LASF119:
	.string	"_nmalloc"
.LASF60:
	.string	"_ubuf"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
