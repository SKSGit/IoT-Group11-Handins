# Automatically generated build file. Do not edit.
COMPONENT_INCLUDES += $(PROJECT_PATH)/bl_iot_sdk/components/bl602/freertos_riscv_ram $(PROJECT_PATH)/bl_iot_sdk/components/bl602/freertos_riscv_ram/include $(PROJECT_PATH)/bl_iot_sdk/components/bl602/freertos_riscv_ram/config $(PROJECT_PATH)/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V $(PROJECT_PATH)/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/chip_specific_extensions/RV32F_float_abi_single $(PROJECT_PATH)/bl_iot_sdk/components/bl602/freertos_riscv_ram/panic
COMPONENT_LDFLAGS +=  -L$(BUILD_DIR_BASE)/freertos_riscv_ram  -lfreertos_riscv_ram 
COMPONENT_LINKER_DEPS += 
COMPONENT_SUBMODULES += 
COMPONENT_LIBRARIES += freertos_riscv_ram
component-freertos_riscv_ram-build: 
