# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

if("/home/dungtran/Dokumente/work/org.gnu.libidn2-libidn2/external/libiconv/libiconv-1.17.tar.gz" STREQUAL "")
  message(FATAL_ERROR "LOCAL can't be empty")
endif()

if(NOT EXISTS "/home/dungtran/Dokumente/work/org.gnu.libidn2-libidn2/external/libiconv/libiconv-1.17.tar.gz")
  message(FATAL_ERROR "File not found: /home/dungtran/Dokumente/work/org.gnu.libidn2-libidn2/external/libiconv/libiconv-1.17.tar.gz")
endif()

if("SHA1" STREQUAL "")
  message(WARNING "File will not be verified since no URL_HASH specified")
  return()
endif()

if("409a6a8c07280e02cc33b65ae871311f4b33077b" STREQUAL "")
  message(FATAL_ERROR "EXPECT_VALUE can't be empty")
endif()

message(STATUS "verifying file...
     file='/home/dungtran/Dokumente/work/org.gnu.libidn2-libidn2/external/libiconv/libiconv-1.17.tar.gz'")

file("SHA1" "/home/dungtran/Dokumente/work/org.gnu.libidn2-libidn2/external/libiconv/libiconv-1.17.tar.gz" actual_value)

if(NOT "${actual_value}" STREQUAL "409a6a8c07280e02cc33b65ae871311f4b33077b")
  message(FATAL_ERROR "error: SHA1 hash of
  /home/dungtran/Dokumente/work/org.gnu.libidn2-libidn2/external/libiconv/libiconv-1.17.tar.gz
does not match expected value
  expected: '409a6a8c07280e02cc33b65ae871311f4b33077b'
    actual: '${actual_value}'
")
endif()

message(STATUS "verifying file... done")
