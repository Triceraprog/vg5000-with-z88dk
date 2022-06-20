cmake_minimum_required(VERSION 3.20)

# Include local cmake folder for extensions
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake/")

# TODO: Add ASM language support
# project(adventure C ASM)
project(adventure C)
# enable_language(ASM)

# If need for cmake debug, the next line can help
# set(CMAKE_VERBOSE_MAKEFILE 1)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ../output)

set(SOURCE_FILES src/main.c)

add_executable(${PROJECT_NAME} ${SOURCE_FILES})
target_compile_options(${PROJECT_NAME} PRIVATE -I$ENV{Z88DK_HOME}/include -Isrc/ -vn -m)
target_link_options(${PROJECT_NAME} PRIVATE -m -create-app -subtype=default)
