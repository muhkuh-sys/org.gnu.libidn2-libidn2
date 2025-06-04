# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/dungtran/Dokumente/work/org.gnu.libidn2-libidn2/build/ubuntu_24.04_x86_64/external/libiconv/libiconv/src/TARGET_libiconv"
  "/home/dungtran/Dokumente/work/org.gnu.libidn2-libidn2/build/ubuntu_24.04_x86_64/external/libiconv/libiconv/src/TARGET_libiconv-build"
  "/home/dungtran/Dokumente/work/org.gnu.libidn2-libidn2/build/ubuntu_24.04_x86_64/external/libiconv/libiconv"
  "/home/dungtran/Dokumente/work/org.gnu.libidn2-libidn2/build/ubuntu_24.04_x86_64/external/libiconv/libiconv/tmp"
  "/home/dungtran/Dokumente/work/org.gnu.libidn2-libidn2/build/ubuntu_24.04_x86_64/external/libiconv/libiconv/src/TARGET_libiconv-stamp"
  "/home/dungtran/Dokumente/work/org.gnu.libidn2-libidn2/build/ubuntu_24.04_x86_64/external/libiconv/libiconv/src"
  "/home/dungtran/Dokumente/work/org.gnu.libidn2-libidn2/build/ubuntu_24.04_x86_64/external/libiconv/libiconv/src/TARGET_libiconv-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/dungtran/Dokumente/work/org.gnu.libidn2-libidn2/build/ubuntu_24.04_x86_64/external/libiconv/libiconv/src/TARGET_libiconv-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/dungtran/Dokumente/work/org.gnu.libidn2-libidn2/build/ubuntu_24.04_x86_64/external/libiconv/libiconv/src/TARGET_libiconv-stamp${cfgdir}") # cfgdir has leading slash
endif()
