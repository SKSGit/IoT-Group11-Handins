# Automatically generated build file. Do not edit.
COMPONENT_INCLUDES += $(PROJECT_PATH)/bl_iot_sdk/components/bl602/bl602_std $(PROJECT_PATH)/bl_iot_sdk/components/bl602/bl602_std/include $(PROJECT_PATH)/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc $(PROJECT_PATH)/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals $(PROJECT_PATH)/bl_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Device/Bouffalo/BL602/Startup $(PROJECT_PATH)/bl_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Core/Include $(PROJECT_PATH)/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Include $(PROJECT_PATH)/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Common/platform_print $(PROJECT_PATH)/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Common/soft_crc $(PROJECT_PATH)/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Common/partition $(PROJECT_PATH)/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Common/xz $(PROJECT_PATH)/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Common/cipher_suite/inc $(PROJECT_PATH)/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Common/ring_buffer
COMPONENT_LDFLAGS +=  -L$(BUILD_DIR_BASE)/bl602_std  -lbl602_std 
COMPONENT_LINKER_DEPS += 
COMPONENT_SUBMODULES += 
COMPONENT_LIBRARIES += bl602_std
component-bl602_std-build: 
