
####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was sgg-config.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../" ABSOLUTE)

####################################################################################

if (NOT TARGET sgg::sgg)

list(APPEND CMAKE_MODULE_PATH ${PACKAGE_PREFIX_DIR}/share/cmake/sgg)

find_package(Wrap_GLEW MODULE REQUIRED)
find_package(Wrap_glm MODULE REQUIRED)
find_package(Wrap_SDL2 MODULE REQUIRED)
find_package(Wrap_Freetype MODULE REQUIRED)
find_package(Wrap_SDL2_mixer MODULE REQUIRED)

list(REMOVE_AT CMAKE_MODULE_PATH -1)

include(${PACKAGE_PREFIX_DIR}/share/cmake/sgg/sgg-targets.cmake)

endif()
