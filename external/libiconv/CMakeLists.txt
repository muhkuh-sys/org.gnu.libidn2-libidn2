cmake_minimum_required(VERSION 3.7)

PROJECT("libiconv")

INCLUDE(ExternalProject)


#----------------------------------------------------------------------------
#
# Build the project.
#

ExternalProject_Add(TARGET_libiconv
                    PREFIX ${CMAKE_CURRENT_BINARY_DIR}/libiconv
                    URL ${CMAKE_CURRENT_SOURCE_DIR}/libiconv-1.18.tar.gz
                    URL_HASH SHA1=3402aae249ec56e04114767c8f6bdaafc87a048c
                    CONFIGURE_COMMAND ${CMAKE_CURRENT_BINARY_DIR}/libiconv/src/TARGET_libiconv/configure --prefix=${CMAKE_BINARY_DIR}/install --enable-static=yes --enable-shared=no --with-pic
                    BUILD_COMMAND make
                    INSTALL_COMMAND make install
)

SET(LIBICONV_PREFIX       ${CMAKE_BINARY_DIR}/install          CACHE INTERNAL "The complete path to the libiconv installation.")
SET(LIBICONV_LIBRARY      iconv                                CACHE INTERNAL "The complete path to the libiconv library.")
SET(LIBICONV_INCLUDE_DIR  ${LIBICONV_PREFIX}/include           CACHE INTERNAL "The include folder for the libiconv library.")
SET(LIBICONV_LIB_DIR      ${LIBICONV_PREFIX}/lib               CACHE INTERNAL "The include folder for the libiconv library.")
