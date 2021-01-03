#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "sgg::sgg" for configuration "Release"
set_property(TARGET sgg::sgg APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(sgg::sgg PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libsgg.so"
  IMPORTED_SONAME_RELEASE "libsgg.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS sgg::sgg )
list(APPEND _IMPORT_CHECK_FILES_FOR_sgg::sgg "${_IMPORT_PREFIX}/lib/libsgg.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
