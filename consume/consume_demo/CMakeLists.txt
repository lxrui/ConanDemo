cmake_minimum_required(VERSION 3.9)
project(conan_consume_demo CXX)
set(CMAKE_CXX_STANDARD 11)

include(conan_install.cmake)

add_executable(${PROJECT_NAME} main.cpp)
target_link_libraries(${PROJECT_NAME} tbb)