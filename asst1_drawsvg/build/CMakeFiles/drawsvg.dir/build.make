# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.1

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.1.1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.1.1/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/src"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/build"

# Include any dependencies generated for this target.
include CMakeFiles/drawsvg.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/drawsvg.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/drawsvg.dir/flags.make

CMakeFiles/drawsvg.dir/svg.cpp.o: CMakeFiles/drawsvg.dir/flags.make
CMakeFiles/drawsvg.dir/svg.cpp.o: /Users/Hongyu1/Google\ Drive/Courses/2015\ Fall/15-462/asst1_drawsvg/src/svg.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/build/CMakeFiles" $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/drawsvg.dir/svg.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/drawsvg.dir/svg.cpp.o -c "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/src/svg.cpp"

CMakeFiles/drawsvg.dir/svg.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/drawsvg.dir/svg.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/src/svg.cpp" > CMakeFiles/drawsvg.dir/svg.cpp.i

CMakeFiles/drawsvg.dir/svg.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/drawsvg.dir/svg.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/src/svg.cpp" -o CMakeFiles/drawsvg.dir/svg.cpp.s

CMakeFiles/drawsvg.dir/svg.cpp.o.requires:
.PHONY : CMakeFiles/drawsvg.dir/svg.cpp.o.requires

CMakeFiles/drawsvg.dir/svg.cpp.o.provides: CMakeFiles/drawsvg.dir/svg.cpp.o.requires
	$(MAKE) -f CMakeFiles/drawsvg.dir/build.make CMakeFiles/drawsvg.dir/svg.cpp.o.provides.build
.PHONY : CMakeFiles/drawsvg.dir/svg.cpp.o.provides

CMakeFiles/drawsvg.dir/svg.cpp.o.provides.build: CMakeFiles/drawsvg.dir/svg.cpp.o

CMakeFiles/drawsvg.dir/png.cpp.o: CMakeFiles/drawsvg.dir/flags.make
CMakeFiles/drawsvg.dir/png.cpp.o: /Users/Hongyu1/Google\ Drive/Courses/2015\ Fall/15-462/asst1_drawsvg/src/png.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/build/CMakeFiles" $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/drawsvg.dir/png.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/drawsvg.dir/png.cpp.o -c "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/src/png.cpp"

CMakeFiles/drawsvg.dir/png.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/drawsvg.dir/png.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/src/png.cpp" > CMakeFiles/drawsvg.dir/png.cpp.i

CMakeFiles/drawsvg.dir/png.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/drawsvg.dir/png.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/src/png.cpp" -o CMakeFiles/drawsvg.dir/png.cpp.s

CMakeFiles/drawsvg.dir/png.cpp.o.requires:
.PHONY : CMakeFiles/drawsvg.dir/png.cpp.o.requires

CMakeFiles/drawsvg.dir/png.cpp.o.provides: CMakeFiles/drawsvg.dir/png.cpp.o.requires
	$(MAKE) -f CMakeFiles/drawsvg.dir/build.make CMakeFiles/drawsvg.dir/png.cpp.o.provides.build
.PHONY : CMakeFiles/drawsvg.dir/png.cpp.o.provides

CMakeFiles/drawsvg.dir/png.cpp.o.provides.build: CMakeFiles/drawsvg.dir/png.cpp.o

CMakeFiles/drawsvg.dir/texture.cpp.o: CMakeFiles/drawsvg.dir/flags.make
CMakeFiles/drawsvg.dir/texture.cpp.o: /Users/Hongyu1/Google\ Drive/Courses/2015\ Fall/15-462/asst1_drawsvg/src/texture.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/build/CMakeFiles" $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/drawsvg.dir/texture.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/drawsvg.dir/texture.cpp.o -c "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/src/texture.cpp"

CMakeFiles/drawsvg.dir/texture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/drawsvg.dir/texture.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/src/texture.cpp" > CMakeFiles/drawsvg.dir/texture.cpp.i

CMakeFiles/drawsvg.dir/texture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/drawsvg.dir/texture.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/src/texture.cpp" -o CMakeFiles/drawsvg.dir/texture.cpp.s

CMakeFiles/drawsvg.dir/texture.cpp.o.requires:
.PHONY : CMakeFiles/drawsvg.dir/texture.cpp.o.requires

CMakeFiles/drawsvg.dir/texture.cpp.o.provides: CMakeFiles/drawsvg.dir/texture.cpp.o.requires
	$(MAKE) -f CMakeFiles/drawsvg.dir/build.make CMakeFiles/drawsvg.dir/texture.cpp.o.provides.build
.PHONY : CMakeFiles/drawsvg.dir/texture.cpp.o.provides

CMakeFiles/drawsvg.dir/texture.cpp.o.provides.build: CMakeFiles/drawsvg.dir/texture.cpp.o

CMakeFiles/drawsvg.dir/viewport.cpp.o: CMakeFiles/drawsvg.dir/flags.make
CMakeFiles/drawsvg.dir/viewport.cpp.o: /Users/Hongyu1/Google\ Drive/Courses/2015\ Fall/15-462/asst1_drawsvg/src/viewport.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/build/CMakeFiles" $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/drawsvg.dir/viewport.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/drawsvg.dir/viewport.cpp.o -c "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/src/viewport.cpp"

CMakeFiles/drawsvg.dir/viewport.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/drawsvg.dir/viewport.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/src/viewport.cpp" > CMakeFiles/drawsvg.dir/viewport.cpp.i

CMakeFiles/drawsvg.dir/viewport.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/drawsvg.dir/viewport.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/src/viewport.cpp" -o CMakeFiles/drawsvg.dir/viewport.cpp.s

CMakeFiles/drawsvg.dir/viewport.cpp.o.requires:
.PHONY : CMakeFiles/drawsvg.dir/viewport.cpp.o.requires

CMakeFiles/drawsvg.dir/viewport.cpp.o.provides: CMakeFiles/drawsvg.dir/viewport.cpp.o.requires
	$(MAKE) -f CMakeFiles/drawsvg.dir/build.make CMakeFiles/drawsvg.dir/viewport.cpp.o.provides.build
.PHONY : CMakeFiles/drawsvg.dir/viewport.cpp.o.provides

CMakeFiles/drawsvg.dir/viewport.cpp.o.provides.build: CMakeFiles/drawsvg.dir/viewport.cpp.o

CMakeFiles/drawsvg.dir/triangulation.cpp.o: CMakeFiles/drawsvg.dir/flags.make
CMakeFiles/drawsvg.dir/triangulation.cpp.o: /Users/Hongyu1/Google\ Drive/Courses/2015\ Fall/15-462/asst1_drawsvg/src/triangulation.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/build/CMakeFiles" $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/drawsvg.dir/triangulation.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/drawsvg.dir/triangulation.cpp.o -c "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/src/triangulation.cpp"

CMakeFiles/drawsvg.dir/triangulation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/drawsvg.dir/triangulation.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/src/triangulation.cpp" > CMakeFiles/drawsvg.dir/triangulation.cpp.i

CMakeFiles/drawsvg.dir/triangulation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/drawsvg.dir/triangulation.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/src/triangulation.cpp" -o CMakeFiles/drawsvg.dir/triangulation.cpp.s

CMakeFiles/drawsvg.dir/triangulation.cpp.o.requires:
.PHONY : CMakeFiles/drawsvg.dir/triangulation.cpp.o.requires

CMakeFiles/drawsvg.dir/triangulation.cpp.o.provides: CMakeFiles/drawsvg.dir/triangulation.cpp.o.requires
	$(MAKE) -f CMakeFiles/drawsvg.dir/build.make CMakeFiles/drawsvg.dir/triangulation.cpp.o.provides.build
.PHONY : CMakeFiles/drawsvg.dir/triangulation.cpp.o.provides

CMakeFiles/drawsvg.dir/triangulation.cpp.o.provides.build: CMakeFiles/drawsvg.dir/triangulation.cpp.o

CMakeFiles/drawsvg.dir/software_renderer.cpp.o: CMakeFiles/drawsvg.dir/flags.make
CMakeFiles/drawsvg.dir/software_renderer.cpp.o: /Users/Hongyu1/Google\ Drive/Courses/2015\ Fall/15-462/asst1_drawsvg/src/software_renderer.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/build/CMakeFiles" $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/drawsvg.dir/software_renderer.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/drawsvg.dir/software_renderer.cpp.o -c "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/src/software_renderer.cpp"

CMakeFiles/drawsvg.dir/software_renderer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/drawsvg.dir/software_renderer.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/src/software_renderer.cpp" > CMakeFiles/drawsvg.dir/software_renderer.cpp.i

CMakeFiles/drawsvg.dir/software_renderer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/drawsvg.dir/software_renderer.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/src/software_renderer.cpp" -o CMakeFiles/drawsvg.dir/software_renderer.cpp.s

CMakeFiles/drawsvg.dir/software_renderer.cpp.o.requires:
.PHONY : CMakeFiles/drawsvg.dir/software_renderer.cpp.o.requires

CMakeFiles/drawsvg.dir/software_renderer.cpp.o.provides: CMakeFiles/drawsvg.dir/software_renderer.cpp.o.requires
	$(MAKE) -f CMakeFiles/drawsvg.dir/build.make CMakeFiles/drawsvg.dir/software_renderer.cpp.o.provides.build
.PHONY : CMakeFiles/drawsvg.dir/software_renderer.cpp.o.provides

CMakeFiles/drawsvg.dir/software_renderer.cpp.o.provides.build: CMakeFiles/drawsvg.dir/software_renderer.cpp.o

CMakeFiles/drawsvg.dir/drawsvg.cpp.o: CMakeFiles/drawsvg.dir/flags.make
CMakeFiles/drawsvg.dir/drawsvg.cpp.o: /Users/Hongyu1/Google\ Drive/Courses/2015\ Fall/15-462/asst1_drawsvg/src/drawsvg.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/build/CMakeFiles" $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/drawsvg.dir/drawsvg.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/drawsvg.dir/drawsvg.cpp.o -c "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/src/drawsvg.cpp"

CMakeFiles/drawsvg.dir/drawsvg.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/drawsvg.dir/drawsvg.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/src/drawsvg.cpp" > CMakeFiles/drawsvg.dir/drawsvg.cpp.i

CMakeFiles/drawsvg.dir/drawsvg.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/drawsvg.dir/drawsvg.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/src/drawsvg.cpp" -o CMakeFiles/drawsvg.dir/drawsvg.cpp.s

CMakeFiles/drawsvg.dir/drawsvg.cpp.o.requires:
.PHONY : CMakeFiles/drawsvg.dir/drawsvg.cpp.o.requires

CMakeFiles/drawsvg.dir/drawsvg.cpp.o.provides: CMakeFiles/drawsvg.dir/drawsvg.cpp.o.requires
	$(MAKE) -f CMakeFiles/drawsvg.dir/build.make CMakeFiles/drawsvg.dir/drawsvg.cpp.o.provides.build
.PHONY : CMakeFiles/drawsvg.dir/drawsvg.cpp.o.provides

CMakeFiles/drawsvg.dir/drawsvg.cpp.o.provides.build: CMakeFiles/drawsvg.dir/drawsvg.cpp.o

CMakeFiles/drawsvg.dir/main.cpp.o: CMakeFiles/drawsvg.dir/flags.make
CMakeFiles/drawsvg.dir/main.cpp.o: /Users/Hongyu1/Google\ Drive/Courses/2015\ Fall/15-462/asst1_drawsvg/src/main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/build/CMakeFiles" $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/drawsvg.dir/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/drawsvg.dir/main.cpp.o -c "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/src/main.cpp"

CMakeFiles/drawsvg.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/drawsvg.dir/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/src/main.cpp" > CMakeFiles/drawsvg.dir/main.cpp.i

CMakeFiles/drawsvg.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/drawsvg.dir/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/src/main.cpp" -o CMakeFiles/drawsvg.dir/main.cpp.s

CMakeFiles/drawsvg.dir/main.cpp.o.requires:
.PHONY : CMakeFiles/drawsvg.dir/main.cpp.o.requires

CMakeFiles/drawsvg.dir/main.cpp.o.provides: CMakeFiles/drawsvg.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/drawsvg.dir/build.make CMakeFiles/drawsvg.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/drawsvg.dir/main.cpp.o.provides

CMakeFiles/drawsvg.dir/main.cpp.o.provides.build: CMakeFiles/drawsvg.dir/main.cpp.o

# Object files for target drawsvg
drawsvg_OBJECTS = \
"CMakeFiles/drawsvg.dir/svg.cpp.o" \
"CMakeFiles/drawsvg.dir/png.cpp.o" \
"CMakeFiles/drawsvg.dir/texture.cpp.o" \
"CMakeFiles/drawsvg.dir/viewport.cpp.o" \
"CMakeFiles/drawsvg.dir/triangulation.cpp.o" \
"CMakeFiles/drawsvg.dir/software_renderer.cpp.o" \
"CMakeFiles/drawsvg.dir/drawsvg.cpp.o" \
"CMakeFiles/drawsvg.dir/main.cpp.o"

# External object files for target drawsvg
drawsvg_EXTERNAL_OBJECTS =

drawsvg: CMakeFiles/drawsvg.dir/svg.cpp.o
drawsvg: CMakeFiles/drawsvg.dir/png.cpp.o
drawsvg: CMakeFiles/drawsvg.dir/texture.cpp.o
drawsvg: CMakeFiles/drawsvg.dir/viewport.cpp.o
drawsvg: CMakeFiles/drawsvg.dir/triangulation.cpp.o
drawsvg: CMakeFiles/drawsvg.dir/software_renderer.cpp.o
drawsvg: CMakeFiles/drawsvg.dir/drawsvg.cpp.o
drawsvg: CMakeFiles/drawsvg.dir/main.cpp.o
drawsvg: CMakeFiles/drawsvg.dir/build.make
drawsvg: /Users/Hongyu1/Google\ Drive/Courses/2015\ Fall/15-462/asst1_drawsvg/src/hardware/libdrawsvghdwr_osx.a
drawsvg: /Users/Hongyu1/Google\ Drive/Courses/2015\ Fall/15-462/asst1_drawsvg/src/reference/libdrawsvgref_osx.a
drawsvg: /usr/local/lib/libfreetype.dylib
drawsvg: /Users/Hongyu1/Google\ Drive/Courses/2015\ Fall/15-462/asst1_drawsvg/lib/libCMU462_osx.a
drawsvg: /Users/Hongyu1/Google\ Drive/Courses/2015\ Fall/15-462/asst1_drawsvg/lib/libglew_osx.a
drawsvg: /Users/Hongyu1/Google\ Drive/Courses/2015\ Fall/15-462/asst1_drawsvg/lib/libglfw_osx.a
drawsvg: CMakeFiles/drawsvg.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable drawsvg"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/drawsvg.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/drawsvg.dir/build: drawsvg
.PHONY : CMakeFiles/drawsvg.dir/build

CMakeFiles/drawsvg.dir/requires: CMakeFiles/drawsvg.dir/svg.cpp.o.requires
CMakeFiles/drawsvg.dir/requires: CMakeFiles/drawsvg.dir/png.cpp.o.requires
CMakeFiles/drawsvg.dir/requires: CMakeFiles/drawsvg.dir/texture.cpp.o.requires
CMakeFiles/drawsvg.dir/requires: CMakeFiles/drawsvg.dir/viewport.cpp.o.requires
CMakeFiles/drawsvg.dir/requires: CMakeFiles/drawsvg.dir/triangulation.cpp.o.requires
CMakeFiles/drawsvg.dir/requires: CMakeFiles/drawsvg.dir/software_renderer.cpp.o.requires
CMakeFiles/drawsvg.dir/requires: CMakeFiles/drawsvg.dir/drawsvg.cpp.o.requires
CMakeFiles/drawsvg.dir/requires: CMakeFiles/drawsvg.dir/main.cpp.o.requires
.PHONY : CMakeFiles/drawsvg.dir/requires

CMakeFiles/drawsvg.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/drawsvg.dir/cmake_clean.cmake
.PHONY : CMakeFiles/drawsvg.dir/clean

CMakeFiles/drawsvg.dir/depend:
	cd "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/src" "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/src" "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/build" "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/build" "/Users/Hongyu1/Google Drive/Courses/2015 Fall/15-462/asst1_drawsvg/build/CMakeFiles/drawsvg.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/drawsvg.dir/depend

