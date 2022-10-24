add_executable(hello MACOSX_BUNDLE hello.cpp)

target_link_libraries(hello add)

configure_file(install_apple.cmake install_apple.cmake @ONLY)
install(SCRIPT ${CMAKE_CURRENT_BINARY_DIR}/install_apple.cmake)
