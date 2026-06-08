cmake_minimum_required(VERSION 3.8)

project({{cookiecutter.project_name}} LANGUAGES CUDA C CXX)

set(CMAKE_CUDA_ARCHITECTURES 61)
# 2. Set the global standards before creating targets
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# # Force CMake to link CUDA dynamically so profilers can intercept it
# set(CMAKE_CUDA_RUNTIME_LIBRARY Shared)

set(CMAKE_CUDA_STANDARD 17)
set(CMAKE_CUDA_STANDARD_REQUIRED ON)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

if(CMAKE_BUILD_TYPE STREQUAL "Debug")
    set(CMAKE_CUDA_FLAGS_DEBUG "-g -G")
    set(CMAKE_CXX_FLAGS_DEBUG "-g")
    # Setup Profiling flags for Nsight Systems
elseif(CMAKE_BUILD_TYPE STREQUAL "RelWithDebInfo")
    set(CMAKE_CUDA_FLAGS_RELWITHDEBINFO "-O3 -lineinfo")
    set(CMAKE_CXX_FLAGS_RELWITHDEBINFO "-O3 -g")
endif()

# 3. Print the standard to the terminal during configuration
message(STATUS "Requested C++ Standard: ${CMAKE_CXX_STANDARD}")
message(STATUS "Requested CUDA Standard: ${CMAKE_CUDA_STANDARD}")

add_executable({{cookiecutter.project_name}}.out main.cu)
