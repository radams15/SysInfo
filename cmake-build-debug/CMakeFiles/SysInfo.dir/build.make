# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

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
CMAKE_COMMAND = /home/rhys/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/202.7660.37/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/rhys/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/202.7660.37/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/rhys/scripts/c/SysInfo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/rhys/scripts/c/SysInfo/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/SysInfo.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/SysInfo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SysInfo.dir/flags.make

CMakeFiles/SysInfo.dir/main.c.o: CMakeFiles/SysInfo.dir/flags.make
CMakeFiles/SysInfo.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rhys/scripts/c/SysInfo/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/SysInfo.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/SysInfo.dir/main.c.o   -c /home/rhys/scripts/c/SysInfo/main.c

CMakeFiles/SysInfo.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/SysInfo.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/rhys/scripts/c/SysInfo/main.c > CMakeFiles/SysInfo.dir/main.c.i

CMakeFiles/SysInfo.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/SysInfo.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/rhys/scripts/c/SysInfo/main.c -o CMakeFiles/SysInfo.dir/main.c.s

# Object files for target SysInfo
SysInfo_OBJECTS = \
"CMakeFiles/SysInfo.dir/main.c.o"

# External object files for target SysInfo
SysInfo_EXTERNAL_OBJECTS =

SysInfo: CMakeFiles/SysInfo.dir/main.c.o
SysInfo: CMakeFiles/SysInfo.dir/build.make
SysInfo: CMakeFiles/SysInfo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/rhys/scripts/c/SysInfo/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable SysInfo"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SysInfo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SysInfo.dir/build: SysInfo

.PHONY : CMakeFiles/SysInfo.dir/build

CMakeFiles/SysInfo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/SysInfo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/SysInfo.dir/clean

CMakeFiles/SysInfo.dir/depend:
	cd /home/rhys/scripts/c/SysInfo/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rhys/scripts/c/SysInfo /home/rhys/scripts/c/SysInfo /home/rhys/scripts/c/SysInfo/cmake-build-debug /home/rhys/scripts/c/SysInfo/cmake-build-debug /home/rhys/scripts/c/SysInfo/cmake-build-debug/CMakeFiles/SysInfo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/SysInfo.dir/depend

