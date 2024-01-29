include(ExternalProject)

ExternalProject_Add(NVSE
        GIT_REPOSITORY "https://github.com/xNVSE/NVSE.git"
        GIT_TAG "master"
        SOURCE_DIR "${CMAKE_BINARY_DIR}/NVSE"
        CONFIGURE_COMMAND ""
        BUILD_COMMAND msbuild /m /t:Build /p:Platform=Win32 /p:Configuration=Release ${CMAKE_BINARY_DIR}/NVSE/nvse/nvse.sln && msbuild /m /t:Build /p:Platform=Win32 /p:Configuration=Release ${CMAKE_BINARY_DIR}/NVSE/common/common_vc9.vcxproj
        INSTALL_COMMAND ""
        TEST_COMMAND ""
)

include_directories("${CMAKE_BINARY_DIR}/NVSE")

include_directories("${CMAKE_BINARY_DIR}/NVSE/nvse")

link_libraries("${CMAKE_BINARY_DIR}/NVSE/common/Release VC9/common_vc9.lib")

link_libraries("${CMAKE_BINARY_DIR}/NVSE/nvse/Release/nvse_1_4.lib")
