# Install script for directory: /Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/src/../")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/build/drawsvg")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./drawsvg" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./drawsvg")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./drawsvg")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./drawsvg")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

file(WRITE "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/build/${CMAKE_INSTALL_MANIFEST}" "")
foreach(file ${CMAKE_INSTALL_MANIFEST_FILES})
  file(APPEND "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/build/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
endforeach()
