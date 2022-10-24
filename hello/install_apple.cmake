execute_process(
    COMMAND xcodebuild -workspace @CMAKE_BINARY_DIR@/@PROJECT_NAME@.xcodeproj/project.xcworkspace
        -scheme hello archive -archivePath @PROJECT_NAME@.xcarchive
    COMMAND_ECHO STDOUT
    RESULT_VARIABLE xcode_archive_result
    WORKING_DIRECTORY @CMAKE_CURRENT_BINARY_DIR@
    )
    if(xcode_archive_result)
        message(FATAL_ERROR "Xcode error")
    endif()

file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE DIRECTORY FILES "@CMAKE_CURRENT_BINARY_DIR@/@PROJECT_NAME@.xcarchive")
