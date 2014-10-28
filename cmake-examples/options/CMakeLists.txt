cmake_minimum_required(VERSION 2.8)
enable_language(CXX)
list(APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}")

option(test "Enable unit tests (requires gtest)" ON)
set(BUILD_TESTS ${test})
option(extended-tests "Enable extended tests (more comprehensive, longer run time)" ON)
set(EXTENDED_TESTS ${extended-tests})

message(STATUS "Build tests: ${BUILD_TESTS}")
message(STATUS "Extended tests: ${EXTENDED_TESTS}")
