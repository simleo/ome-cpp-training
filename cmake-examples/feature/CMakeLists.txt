cmake_minimum_required(VERSION 2.8)
enable_language(CXX)
list(APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}")

find_program(DOXYGEN_EXECUTABLE doxygen DOC "Doxygen API documentation tool")

find_path(BOOST_INCLUDE_DIR
          NAMES "boost/filesystem.hpp"
          DOC "Boost.Filesystem header directory")

find_library(XERCES_LIBRARY xerces-c
             DOC "Xerces-C shared library")
