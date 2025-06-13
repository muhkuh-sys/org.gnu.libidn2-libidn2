cmake_minimum_required(VERSION 3.7)

PROJECT("libidn2")

INCLUDE(ExternalProject)

SET(VERSION_EXTERNAL "2.3.8")
SET(VERSION_PACKAGE  "1")
SET(PROJECT_VERSION  "${VERSION_EXTERNAL}.${VERSION_PACKAGE}")


FIND_PACKAGE(Python3 REQUIRED COMPONENTS Interpreter)
SET(PYTHON_EXECUTABLE "${Python3_EXECUTABLE}")

#----------------------------------------------------------------------------
#
# Build the project.
#

ExternalProject_Add(TARGET_libidn2
                    PREFIX ${CMAKE_CURRENT_BINARY_DIR}/libidn2
                    URL ${CMAKE_CURRENT_SOURCE_DIR}/libidn2-${VERSION_EXTERNAL}.tar.gz
                    URL_HASH SHA1=06fe2744b016dfc4a58acc3699644e290eb3d37a
#                    PATCH_COMMAND "${PYTHON_EXECUTABLE}" ${CMAKE_HOME_DIRECTORY}/cmake/tools/apply_patches.py --working-folder ${CMAKE_CURRENT_BINARY_DIR}/libidn2/src/TARGET_libidn2 --patch-folder ${CMAKE_CURRENT_SOURCE_DIR}/patches --strip 1
                    CONFIGURE_COMMAND ${CMAKE_CURRENT_BINARY_DIR}/libidn2/src/TARGET_libidn2/configure --prefix=${CMAKE_BINARY_DIR}/install --enable-static=yes --enable-shared=no --with-pic --with-included-libunistring --with-libiconv-prefix=${LIBICONV_PREFIX}
                    BUILD_COMMAND make
                    INSTALL_COMMAND make install
                    TEST_COMMAND ${CMAKE_SOURCE_DIR}/cmake/tools/fix_pkgconfig.sh ${CMAKE_BINARY_DIR}/install
                    TEST_AFTER_INSTALL 1
)

# libidn2 depends on libiconv.
ADD_DEPENDENCIES(TARGET_libidn2 TARGET_libiconv)


# Create a package.
SET(CPACK_OUTPUT_FILE_PREFIX ${CMAKE_BINARY_DIR}/../repository/org/gnu/libidn2/libidn2/${PROJECT_VERSION})
SET(CPACK_INCLUDE_TOPLEVEL_DIRECTORY FALSE)

INSTALL(FILES ${CMAKE_BINARY_DIR}/install/lib/libidn2.a ${CMAKE_BINARY_DIR}/install/lib/libiconv.a
        TYPE LIB)
INSTALL(DIRECTORY ${CMAKE_BINARY_DIR}/install/include/
        DESTINATION include)

INSTALL(FILES ${CMAKE_BINARY_DIR}/install/lib/pkgconfig/libidn2.pc
        DESTINATION pkgconfig)


CONFIGURE_FILE(installer/install.lua 
               ${CMAKE_CURRENT_BINARY_DIR}/package/install.lua
               @ONLY)

INSTALL (FILES ${CMAKE_CURRENT_BINARY_DIR}/package/install.lua
         DESTINATION .)

SET(CPACK_PACKAGE_FILE_NAME "libidn2-${PROJECT_VERSION}-${JONCHKI_PLATFORM}")

CONFIGURE_FILE(installer/libidn2.xml
               ${CPACK_OUTPUT_FILE_PREFIX}/${CPACK_PACKAGE_FILE_NAME}.xml
               @ONLY)


INCLUDE(CPack)

#-----------------------------------------------------------------------------
#
# Create a custom target named "pack".
# It builds the package and creates the hashes.
#
ADD_CUSTOM_TARGET(pack
                  COMMAND ${CMAKE_MAKE_PROGRAM} package
                  COMMAND "${PYTHON_EXECUTABLE}" ${CMAKE_HOME_DIRECTORY}/cmake/tools/generate_hash.py ${CPACK_OUTPUT_FILE_PREFIX}/libidn2-${PROJECT_VERSION}-${JONCHKI_PLATFORM}.xml
                  COMMAND "${PYTHON_EXECUTABLE}" ${CMAKE_HOME_DIRECTORY}/cmake/tools/generate_hash.py ${CPACK_OUTPUT_FILE_PREFIX}/libidn2-${PROJECT_VERSION}-${JONCHKI_PLATFORM}.tar.xz
                  COMMENT "Pack the artifact and generate the hashes...")
