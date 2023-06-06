configure_file(
        ${CMAKE_CURRENT_SOURCE_DIR}/cmake/version.rc.in
        ${CMAKE_CURRENT_BINARY_DIR}/cmake/version.rc
        @ONLY)

configure_file(
        ${CMAKE_CURRENT_SOURCE_DIR}/cmake/Plugin.h.in
        ${CMAKE_CURRENT_BINARY_DIR}/cmake/Plugin.h
        @ONLY)

file(GLOB_RECURSE PUBLIC_HEADER_FILES
		LIST_DIRECTORIES false
		CONFIGURE_DEPENDS
		"${CMAKE_CURRENT_SOURCE_DIR}/include/*.h"
		)

file(GLOB_RECURSE HEADER_FILES
		LIST_DIRECTORIES false
		CONFIGURE_DEPENDS
		"${CMAKE_CURRENT_SOURCE_DIR}/src/*.h"
		)

file(GLOB_RECURSE SOURCE_FILES
		LIST_DIRECTORIES false
		CONFIGURE_DEPENDS
		"${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp"
		"${CMAKE_CURRENT_SOURCE_DIR}/src/*.cc")

source_group("Source"
		TREE ${CMAKE_CURRENT_SOURCE_DIR}
		FILES
		${CMAKE_CURRENT_BINARY_DIR}/cmake/Plugin.h
		${CMAKE_CURRENT_BINARY_DIR}/cmake/version.rc
		${PUBLIC_HEADER_FILES}
        ${HEADER_FILES}
        ${SOURCE_FILES})
