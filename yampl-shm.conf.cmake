# YAMPL-SHM
if (WITH_SHM_PLUGIN)
    add_library(yampl-shm SHARED
            plugins/yampl-shm/src/ServerSocket.cpp
            plugins/yampl-shm/src/SHMSocketBase.cpp
            plugins/yampl-shm/src/SHMSocketFactory.cpp
            plugins/yampl-shm/src/PluginMain.cpp
            ${YAMPL_PLUGIN_COMMON_SRCS}
    )

    target_include_directories(yampl-shm PRIVATE ${CMAKE_CURRENT_LIST_DIR}/include)

    set_target_properties(yampl-shm
            PROPERTIES
            LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/plugins/yampl-shm"
    )

    install(TARGETS yampl-shm
            LIBRARY DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/plugins/yampl-shm
    )
endif()
