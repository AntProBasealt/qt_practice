# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/antpro/Develop/qt_practice/test-example

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/antpro/Develop/qt_practice/test-example/build-test-example

# Include any dependencies generated for this target.
include CMakeFiles/test_example.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test_example.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_example.dir/flags.make

CMakeFiles/test_example.dir/test_example_autogen/mocs_compilation.cpp.o: CMakeFiles/test_example.dir/flags.make
CMakeFiles/test_example.dir/test_example_autogen/mocs_compilation.cpp.o: test_example_autogen/mocs_compilation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/antpro/Develop/qt_practice/test-example/build-test-example/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test_example.dir/test_example_autogen/mocs_compilation.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_example.dir/test_example_autogen/mocs_compilation.cpp.o -c /home/antpro/Develop/qt_practice/test-example/build-test-example/test_example_autogen/mocs_compilation.cpp

CMakeFiles/test_example.dir/test_example_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_example.dir/test_example_autogen/mocs_compilation.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/antpro/Develop/qt_practice/test-example/build-test-example/test_example_autogen/mocs_compilation.cpp > CMakeFiles/test_example.dir/test_example_autogen/mocs_compilation.cpp.i

CMakeFiles/test_example.dir/test_example_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_example.dir/test_example_autogen/mocs_compilation.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/antpro/Develop/qt_practice/test-example/build-test-example/test_example_autogen/mocs_compilation.cpp -o CMakeFiles/test_example.dir/test_example_autogen/mocs_compilation.cpp.s

CMakeFiles/test_example.dir/test.cpp.o: CMakeFiles/test_example.dir/flags.make
CMakeFiles/test_example.dir/test.cpp.o: ../test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/antpro/Develop/qt_practice/test-example/build-test-example/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/test_example.dir/test.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_example.dir/test.cpp.o -c /home/antpro/Develop/qt_practice/test-example/test.cpp

CMakeFiles/test_example.dir/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_example.dir/test.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/antpro/Develop/qt_practice/test-example/test.cpp > CMakeFiles/test_example.dir/test.cpp.i

CMakeFiles/test_example.dir/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_example.dir/test.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/antpro/Develop/qt_practice/test-example/test.cpp -o CMakeFiles/test_example.dir/test.cpp.s

# Object files for target test_example
test_example_OBJECTS = \
"CMakeFiles/test_example.dir/test_example_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/test_example.dir/test.cpp.o"

# External object files for target test_example
test_example_EXTERNAL_OBJECTS =

test_example: CMakeFiles/test_example.dir/test_example_autogen/mocs_compilation.cpp.o
test_example: CMakeFiles/test_example.dir/test.cpp.o
test_example: CMakeFiles/test_example.dir/build.make
test_example: /usr/lib64/libQt5Widgets.so.5.12.12
test_example: /usr/lib64/libQt5Test.so.5.12.12
test_example: /usr/lib64/libQt5Gui.so.5.12.12
test_example: /usr/lib64/libQt5Core.so.5.12.12
test_example: CMakeFiles/test_example.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/antpro/Develop/qt_practice/test-example/build-test-example/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable test_example"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_example.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_example.dir/build: test_example

.PHONY : CMakeFiles/test_example.dir/build

CMakeFiles/test_example.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_example.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_example.dir/clean

CMakeFiles/test_example.dir/depend:
	cd /home/antpro/Develop/qt_practice/test-example/build-test-example && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/antpro/Develop/qt_practice/test-example /home/antpro/Develop/qt_practice/test-example /home/antpro/Develop/qt_practice/test-example/build-test-example /home/antpro/Develop/qt_practice/test-example/build-test-example /home/antpro/Develop/qt_practice/test-example/build-test-example/CMakeFiles/test_example.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_example.dir/depend
