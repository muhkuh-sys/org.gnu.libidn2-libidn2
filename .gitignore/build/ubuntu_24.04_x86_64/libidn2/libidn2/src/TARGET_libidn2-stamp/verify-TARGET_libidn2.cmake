# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

if("/home/dungtran/Dokumente/work/org.gnu.libidn2-libidn2/libidn2/libidn2-2.3.4.tar.gz" STREQUAL "")
  message(FATAL_ERROR "LOCAL can't be empty")
endif()

if(NOT EXISTS "/home/dungtran/Dokumente/work/org.gnu.libidn2-libidn2/libidn2/libidn2-2.3.4.tar.gz")
  message(FATAL_ERROR "File not found: /home/dungtran/Dokumente/work/org.gnu.libidn2-libidn2/libidn2/libidn2-2.3.4.tar.gz")
endif()

if("SHA1" STREQUAL "")
  message(WARNING "File will not be verified since no URL_HASH specified")
  return()
endif()

if("096e2f170fabdfd7011a1848a43e0fca49e3f2e5" STREQUAL "")
  message(FATAL_ERROR "EXPECT_VALUE can't be empty")
endif()

message(STATUS "verifying file...
     file='/home/dungtran/Dokumente/work/org.gnu.libidn2-libidn2/libidn2/libidn2-2.3.4.tar.gz'")

file("SHA1" "/home/dungtran/Dokumente/work/org.gnu.libidn2-libidn2/libidn2/libidn2-2.3.4.tar.gz" actual_value)

if(NOT "${actual_value}" STREQUAL "096e2f170fabdfd7011a1848a43e0fca49e3f2e5")
  message(FATAL_ERROR "error: SHA1 hash of
  /home/dungtran/Dokumente/work/org.gnu.libidn2-libidn2/libidn2/libidn2-2.3.4.tar.gz
does not match expected value
  expected: '096e2f170fabdfd7011a1848a43e0fca49e3f2e5'
    actual: '${actual_value}'
")
endif()

message(STATUS "verifying file... done")
