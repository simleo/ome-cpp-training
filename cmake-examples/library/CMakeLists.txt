cmake_minimum_required(VERSION 2.8)
cmake_policy(VERSION 2.8.0)
# Set MacOSX @rpath usage globally.
if (POLICY CMP0042)
  cmake_policy(SET CMP0042 NEW)
endif(POLICY CMP0042)

project("test-library")

enable_language(CXX)

add_library(test-library SHARED test.cpp test.h)
set_target_properties(test-library PROPERTIES VERSION "1.0.0")

add_executable(test-program main.cpp)

target_link_libraries(test-program test-library)
