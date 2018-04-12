cmake_minimum_required(VERSION 3.0)
project(frontall)

set(CMAKE_C_VISIBILITY_PRESET hidden)
set(CMAKE_CXX_VISIBILITY_PRESET hidden)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

if (UNIX)

  find_package(PkgConfig REQUIRED)
  pkg_check_modules(GTK3 REQUIRED gtk+-3.0)

  include_directories(${GTK3_INCLUDE_DIRS})
  link_directories(${GTK3_LIBRARY_DIRS})

  add_definitions(${GTK3_CFLAGS_OTHER})

  add_executable(frontall main.cpp)

  target_link_libraries(frontall ${GTK3_LIBRARIES})

endif (UNIX)

if (WIN32)

  add_executable(frontall WIN32 main.cpp)

endif (WIN32)
