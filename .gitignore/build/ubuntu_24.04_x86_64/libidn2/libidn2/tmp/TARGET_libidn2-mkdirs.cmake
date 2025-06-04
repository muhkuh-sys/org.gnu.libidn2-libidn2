# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/dungtran/Dokumente/work/org.gnu.libidn2-libidn2/build/ubuntu_24.04_x86_64/libidn2/libidn2/src/TARGET_libidn2"
  "/home/dungtran/Dokumente/work/org.gnu.libidn2-libidn2/build/ubuntu_24.04_x86_64/libidn2/libidn2/src/TARGET_libidn2-build"
  "/home/dungtran/Dokumente/work/org.gnu.libidn2-libidn2/build/ubuntu_24.04_x86_64/libidn2/libidn2"
  "/home/dungtran/Dokumente/work/org.gnu.libidn2-libidn2/build/ubuntu_24.04_x86_64/libidn2/libidn2/tmp"
  "/home/dungtran/Dokumente/work/org.gnu.libidn2-libidn2/build/ubuntu_24.04_x86_64/libidn2/libidn2/src/TARGET_libidn2-stamp"
  "/home/dungtran/Dokumente/work/org.gnu.libidn2-libidn2/build/ubuntu_24.04_x86_64/libidn2/libidn2/src"
  "/home/dungtran/Dokumente/work/org.gnu.libidn2-libidn2/build/ubuntu_24.04_x86_64/libidn2/libidn2/src/TARGET_libidn2-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/dungtran/Dokumente/work/org.gnu.libidn2-libidn2/build/ubuntu_24.04_x86_64/libidn2/libidn2/src/TARGET_libidn2-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/dungtran/Dokumente/work/org.gnu.libidn2-libidn2/build/ubuntu_24.04_x86_64/libidn2/libidn2/src/TARGET_libidn2-stamp${cfgdir}") # cfgdir has leading slash
endif()
