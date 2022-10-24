cmake_minimum_required(VERSION 3.24)

project(repro)

add_subdirectory(add)
add_subdirectory(hello)

set(CMAKE_INSTALL_PREFIX ${PROJECT_BINARY_DIR}/_install)
