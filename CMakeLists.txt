cmake_minimum_required(VERSION 3.26.4)

project(
        NVSEPlugin
        LANGUAGES CXX
        VERSION 1.0.0
)

set(CMAKE_CXX_STANDARD 20)

list(APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake")

include(Dependencies)

add_subdirectory(src)
