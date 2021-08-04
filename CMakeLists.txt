cmake_minimum_required(VERSION 3.8.2)

project(qt_cmake_template)

option(build_type_debug "Build Debug" ON)
option(generate_compile_commands "Generate compile_commands.json" ON)

if(${build_type_debug})
  set(CMAKE_BUILD_TYPE Debug)
  message("==> Build Type: Debug")
  message("==> Debug Symbols Generated")
else()
  set(CMAKE_BUILD_TYPE Release)
  message("==> Build Type: Release")
endif()

# generate compile_commands.json
if(${generate_compile_commands})
  set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
endif()


# Turn on automatic invocation of the MOC, UIC & RCC
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTORCC ON)

# note the path to Qt is set in .bashrc:
# PATH=$HOME/Qt/6.1.2/gcc_64/lib/cmake:$PATH
find_package(Qt6 COMPONENTS
  Core
  Gui
  Quick
  QuickControls2
  Qml
  Widgets
  REQUIRED)

# Qt libraries
set(QLIBRARIES ${LIBRARIES}
  Qt6::Core
  Qt6::Gui
  Qt6::Quick
  Qt6::QuickControls2
  Qt6::Qml
  Qt6::Widgets)

# The full path to the Qt configuration files
message(STATUS "Qt6Core: ${Qt6Core_CONFIG}")
message(STATUS "Qt6Gui: ${Qt6Gui_CONFIG}")
message(STATUS "Qt6Quick: ${Qt6Quick_CONFIG}")
message(STATUS "Qt6QuickControls2: ${Qt6QuickControls2_CONFIG}")
message(STATUS "QtQml: ${Qt6Qml_CONFIG}")
message(STATUS "Qt6Widgets: ${Qt6Widgets_CONFIG}")

include_directories(include)

set(HEADERS
  include/message.h
  include/scanner.h
  include/device.h)

set(SOURCES
  src/main.cpp
  src/main.qml
  src/device.cpp
  src/scanner.cpp
  src/resources.qrc
)

set(EXECUTABLE_NAME ${PROJECT_NAME})
add_executable(${EXECUTABLE_NAME} ${SOURCES} ${HEADERS})

target_link_libraries(${EXECUTABLE_NAME} ${QLIBRARIES})
target_compile_options(${EXECUTABLE_NAME} PRIVATE -Wall -Wextra)
target_compile_features(${EXECUTABLE_NAME} PRIVATE cxx_std_17)
