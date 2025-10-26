cmake_minimum_required(VERSION 3.8)

project({{cookiecutter.project_name}} LANGUAGES CUDA C)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_executable({{cookiecutter.project_name}}.out main.cu)
