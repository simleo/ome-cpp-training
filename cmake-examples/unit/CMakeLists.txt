cmake_minimum_required(VERSION 2.8)
cmake_policy(VERSION 2.8.0)
project("unit-tests")

enable_testing()

enable_language(CXX)

add_executable(test-program test.cpp)

add_test(simple-test/test-program test-program)

