cmake_minimum_required(VERSION 3.15.7)

project(sgg VERSION 1.0.0 LANGUAGES CXX)

find_package(GLEW CONFIG REQUIRED)
find_package(SDL2 CONFIG REQUIRED)
find_package(sdl2-mixer CONFIG REQUIRED)
find_package(freetype CONFIG REQUIRED)
find_package(glm CONFIG REQUIRED)

add_library(sgg
    src/audio.cpp
    src/AudioManager.cpp
    src/fonts.cpp
    src/GLbackend.cpp
    src/graphics.cpp
    src/lodepng.cpp
    src/shader.cpp
    src/texture.cpp
)

target_include_directories(sgg
    PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
    $<INSTALL_INTERFACE:include>
)

target_link_libraries(sgg
    PUBLIC
    GLEW::GLEW
    SDL2::SDL2-static
    SDL2::SDL2_mixer
    freetype
    glm
)

include(cmake/Installation.cmake)

add_library(sgg::sgg ALIAS sgg)

add_executable(demo
    demo/demo.cpp
)

target_include_directories(demo
    PRIVATE
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/demo>
)

target_link_libraries(demo
    PRIVATE
    sgg::sgg
)
