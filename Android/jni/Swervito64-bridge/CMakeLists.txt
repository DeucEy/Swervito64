cmake_minimum_required(VERSION 2.8.12)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_C_STANDARD 99)

project("Swervito64-bridge")
include_directories(..)
include_directories(../3rdParty/asmjit/src)

add_library(Swervito64-bridge SHARED
        JavaBridge.cpp
        JavaRomList.cpp
        jniBridge.cpp
        jniBridgeSettings.cpp
        Notification.cpp
        SyncBridge.cpp
        UISettings.cpp)

add_definitions(-DANDROID)

ADD_SUBDIRECTORY(${CMAKE_CURRENT_SOURCE_DIR}/../3rdParty/asmjit ${CMAKE_CURRENT_BINARY_DIR}/3rdParty/asmjit)
ADD_SUBDIRECTORY(${CMAKE_CURRENT_SOURCE_DIR}/../3rdParty/zlib ${CMAKE_CURRENT_BINARY_DIR}/3rdParty/zlib)
ADD_SUBDIRECTORY(${CMAKE_CURRENT_SOURCE_DIR}/../Common ${CMAKE_CURRENT_BINARY_DIR}/Common)
ADD_SUBDIRECTORY(${CMAKE_CURRENT_SOURCE_DIR}/../Swervito64-rsp-core ${CMAKE_CURRENT_BINARY_DIR}/Swervito64-rsp-core)
ADD_SUBDIRECTORY(${CMAKE_CURRENT_SOURCE_DIR}/../Swervito64-core ${CMAKE_CURRENT_BINARY_DIR}/Swervito64-core)
target_link_libraries(Swervito64-bridge asmjit zlib Swervito64-rsp-core Swervito64-core Common log)
