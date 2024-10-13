cmake_minimum_required(VERSION 3.8)

project(sample C)

set(CMAKE_C_STANDARD 99)

set(CMAKE_BUILD_TYPE "Debug")

include(CTest)
enable_testing()

add_executable(my_test my_test.c)
target_compile_options(my_test PRIVATE -coverage)
target_link_options(my_test PRIVATE -coverage)
add_test(NAME my_test COMMAND my_test)
