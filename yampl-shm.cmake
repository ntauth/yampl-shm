#################################
# YAMPL-SHM
#################################
if (WITH_SHM_PLUGIN STREQUAL ON)
    add_library(yampl-shm SHARED
            plugins/yampl-shm/src/ServerSocket.cpp
            plugins/yampl-shm/src/SHMSocketBase.cpp
            plugins/yampl-shm/src/SHMSocketFactory.cpp
            ${YAMPL_PLUGIN_COMMON_SRCS}
    )

    target_include_directories(yampl-shm PRIVATE plugins/yampl-shm/include)

    set_target_properties(yampl-shm PROPERTIES SUFFIX ".yam")
    set_target_properties(yampl-shm
            PROPERTIES
            ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/plugins/yampl-shm"
            LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/plugins/yampl-shm"
            RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/plugins/yampl-shm"
    )
    add_dependencies(yampl-shm LibSourcey)

    install(TARGETS yampl-shm
            LIBRARY DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/yampl/plugins/yampl-shm
    )
endif()
