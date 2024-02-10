cmake_minimum_required(VERSION 3.27)
project(ConanTemplate)

include(build/scripts/get-source-files.cmake)
set(CXX_STANDARD 20)
find_package(fmt REQUIRED)

add_executable(${PROJECT_NAME} ${SOURCE_FILES})
target_link_libraries(${PROJECT_NAME} PRIVATE fmt::fmt)
target_include_directories(${PROJECT_NAME} PRIVATE ${fmt_INCLUDE_DIRS_RELEASE})