CMAKE_MINIMUM_REQUIRED( VERSION 3.1.0 )
PROJECT( libiconv )

#set(ICONV_SRC_DIR  ../libiconv-1.14)
#set(SOURCES 
#	${ICONV_SRC_DIR}/lib/
#)

set(CMAKE_INSTALL_PREFIX
    ${CMAKE_SOURCE_DIR}/dist
    )

aux_source_directory(src SOURCES )

include_directories(include)

add_library(${PROJECT_NAME} SHARED 
		${SOURCES}
		)

install(TARGETS ${PROJECT_NAME} 
		RUNTIME DESTINATION bin
		LIBRARY DESTINATION lib
		ARCHIVE DESTINATION lib
)
install(FILES ${CMAKE_SOURCE_DIR}/include/iconv.h DESTINATION include)