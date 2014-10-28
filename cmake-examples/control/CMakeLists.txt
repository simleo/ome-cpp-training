cmake_minimum_required(VERSION 2.8)

set(var value)
if(var)
  message(STATUS "The value of var is ${var}")
else()
  message(WARNING "var is unset")
endif()

set(var "a;b;c")
list(APPEND var d e)
foreach(v ${var})
  message(STATUS "List item value is ${v}")
endforeach()
