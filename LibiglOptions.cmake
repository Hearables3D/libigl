# If you are cloning and compiling the libigl repository as a standalone, you
# can use this file as a convenience to set default CMake options. Simply copy
# this file and remove the '.sample' suffix. Then, uncomment the relevant
# options as desired. Note that this file is included before `project(Libigl)`
# is defined, so we can use it to define the C and C++ compilers, but some
# variables such as PROJECT_SOURCE_DIR will not be defined yet. You can use
# CMAKE_SOURCE_DIR instead.
#
# If you are using libigl as a subproject (e.g. see the libigl-example-project
# template), then you do NOT need to use this file. Simply set your preferred
# CMake options in the parent project, # before including libigl.

################################################################################
# CMake Options
################################################################################

# Specify a custom install prefix path
# set(CMAKE_INSTALL_PREFIX ${CMAKE_SOURCE_DIR}/install CACHE STRING "Install directory used by install().")

# Generates a `compile_commands.json` that can be used for autocompletion
# set(CMAKE_EXPORT_COMPILE_COMMANDS ON CACHE BOOL "Enable/Disable output of compile commands during generation.")

# Use ccache to speed up compilation of repeated builds
find_program(CCACHE_PROGRAM ccache)
if(CCACHE_PROGRAM)
    message(STATUS "Enabling Ccache support")
    set(CMAKE_C_COMPILER_LAUNCHER ${CCACHE_PROGRAM} CACHE STRING "")
    set(CMAKE_CXX_COMPILER_LAUNCHER ${CCACHE_PROGRAM} CACHE STRING "")
endif()

# Use a specific C/C++ compiler, e.g. llvm-clang on macOS (so we can use clangd)
# set(CMAKE_C_COMPILER   "/usr/bin/clang" CACHE STRING "C compiler")
# set(CMAKE_CXX_COMPILER "/usr/bin/clang++" CACHE STRING "C++ compiler")

# Set deployment platform for macOS
# set(CMAKE_OSX_DEPLOYMENT_TARGET 10.12 CACHE STRING "macOS deployment target")

# Always add colored output (e.g. when using Ninja)
# add_compile_options(-fdiagnostics-color=always) # GCC
# add_compile_options(-fcolor-diagnostics) # Clang

# add_compile_options(-ftime-trace) # Clang

################################################################################
# Libigl Options
################################################################################

# Build options
option(LIBIGL_BUILD_TESTS        "Build libigl unit test"                OFF)
option(LIBIGL_BUILD_TUTORIALS    "Build libigl tutorial"                 OFF)
option(LIBIGL_INSTALL            "Enable installation of libigl targets" OFF)
option(LIBIGL_USE_STATIC_LIBRARY "Use libigl as static library"          ON)

# Module options
option(LIBIGL_EMBREE              "Build target igl::embree"              ON)
# option(LIBIGL_GLFW                "Build target igl::glfw"                ON)
option(LIBIGL_IMGUI               "Build target igl::imgui"               ON)
option(LIBIGL_OPENGL              "Build target igl::opengl"              ON)
option(LIBIGL_PNG                 "Build target igl::png"                 ON)
option(LIBIGL_PREDICATES          "Build target igl::predicates"          ON)
# option(LIBIGL_XML                 "Build target igl::xml"                 ON)
option(LIBIGL_COPYLEFT_CGAL       "Build target igl_copyleft::cgal"       ON)
# option(LIBIGL_COPYLEFT_COMISO     "Build target igl_copyleft::comiso"     ON)
option(LIBIGL_COPYLEFT_CORE       "Build target igl_copyleft::core"       ON)
option(LIBIGL_COPYLEFT_CORK       "Build target igl_copyleft::cork"       ON)
# option(LIBIGL_COPYLEFT_TETGEN     "Build target igl_copyleft::tetgen"     ON)
# option(LIBIGL_RESTRICTED_MATLAB   "Build target igl_restricted::matlab"   ON)
# option(LIBIGL_RESTRICTED_MOSEK    "Build target igl_restricted::mosek"    ON)
# option(LIBIGL_RESTRICTED_TRIANGLE "Build target igl_restricted::triangle" ON)

################################################################################
# FetchContent Options
################################################################################

# option(FETCHCONTENT_FULLY_DISCONNECTED   "Disables all attempts to download or update content and assumes source dirs already exist" ON)
# option(FETCHCONTENT_UPDATES_DISCONNECTED "Enables UPDATE_DISCONNECTED behavior for all content population" ON)
# option(FETCHCONTENT_QUIET                "Enables QUIET option for all content population" ON)
# set(FETCHCONTENT_BASE_DIR "${CMAKE_SOURCE_DIR}/external" CACHE PATH "Directory under which to collect all populated content")
