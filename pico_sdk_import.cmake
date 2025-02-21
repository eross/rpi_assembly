# pico_sdk_import.cmake
if (NOT PICO_SDK_PATH)
    message(FATAL_ERROR "PICO_SDK_PATH must be defined!")
endif()

# Pull in Pico SDK (must be before project)
include(${PICO_SDK_PATH}/pico_sdk_init.cmake)
