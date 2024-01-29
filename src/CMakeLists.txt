include(SourceList)

set_property(GLOBAL PROPERTY USE_FOLDERS ON)

add_library("${PROJECT_NAME}" SHARED "${SOURCES}")

if (CMAKE_CXX_COMPILER_ID STREQUAL "MSVC")
    target_compile_options("${PROJECT_NAME}" PRIVATE
            /MT
    )
endif ()
