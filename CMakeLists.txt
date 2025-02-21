# Specify the minimum version of CMake required
cmake_minimum_required(VERSION 3.13)

# Set the Pico SDK path (adjust if necessary)
set(PICO_SDK_PATH "/home/ericr/git/pico-sdk")

# Include the Pico SDK import script
include(pico_sdk_import.cmake)

# Name your project
project(HelloWorld C CXX ASM)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

# Initialize the Pico SDK
pico_sdk_init()

# Add the executable target with the assembly file
add_executable(HelloWorld
    HelloWorld.S
)

# Link the Pico SDK libraries (e.g., standard Pico library)
pico_add_extra_outputs(HelloWorld)
target_link_libraries(HelloWorld pico_stdlib)

# Enable USB output, disable UART output (optional)
pico_enable_stdio_usb(HelloWorld 1)
pico_enable_stdio_uart(HelloWorld 0)

