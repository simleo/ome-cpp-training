cmake_minimum_required(VERSION 2.8)
enable_language(CXX)
list(APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}")

include(CheckCXXSourceCompiles)

check_cxx_source_compiles("
void foo() noexcept{}
int main() { foo(); }
" HAVE_NOEXCEPT)

check_cxx_source_compiles("
#include <array>
int main() { std::array<int,3> a; a[0] = 5; }
" HAVE_ARRAY)
