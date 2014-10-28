cmake_minimum_required(VERSION 2.8)
enable_language(CXX)
list(APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}")

find_package(Doxygen "1.7.0")
find_package(Boost REQUIRED COMPONENTS filesystem system)
find_package(Xerces REQUIRED)
