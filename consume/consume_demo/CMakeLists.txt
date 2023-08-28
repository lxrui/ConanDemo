cmake_minimum_required(VERSION 3.9)
project(conan_consume_demo CXX)

find_package(tbb REQUIRED)

add_executable(${PROJECT_NAME} main.cpp)
target_link_libraries(${PROJECT_NAME} tbb)