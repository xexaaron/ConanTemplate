
file(GLOB_RECURSE additional_sources "src/*.cpp")
file(GLOB entry_point "*.cpp")
list(APPEND additional_sources ${entry_point})

list(APPEND SOURCE_FILES ${additional_sources})

message(STATUS "Source Files : ")
foreach(file ${SOURCE_FILES})
    message(STATUS "-- file: ${file}")
endforeach()