# Automatically generated build file. Do not edit.
COMPONENT_INCLUDES += $(PROJECT_PATH)/bl_iot_sdk/components/bl602/bl602 $(PROJECT_PATH)/bl_iot_sdk/components/bl602/bl602/include
COMPONENT_LDFLAGS +=  -L$(BUILD_DIR_BASE)/bl602  -L $(PROJECT_PATH)/bl_iot_sdk/components/bl602/bl602/evb/ld -T flash.ld -lbl602 
COMPONENT_LINKER_DEPS += $(PROJECT_PATH)/bl_iot_sdk/components/bl602/bl602/evb/ld/flash.ld
COMPONENT_SUBMODULES += 
COMPONENT_LIBRARIES += bl602
component-bl602-build: 
