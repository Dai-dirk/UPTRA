# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/build

# Include any dependencies generated for this target.
include CMakeFiles/cgra-compiler.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cgra-compiler.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cgra-compiler.dir/flags.make

CMakeFiles/cgra-compiler.dir/src/main.cpp.o: CMakeFiles/cgra-compiler.dir/flags.make
CMakeFiles/cgra-compiler.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/cgra-compiler.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cgra-compiler.dir/src/main.cpp.o -c /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/src/main.cpp

CMakeFiles/cgra-compiler.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cgra-compiler.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/src/main.cpp > CMakeFiles/cgra-compiler.dir/src/main.cpp.i

CMakeFiles/cgra-compiler.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cgra-compiler.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/src/main.cpp -o CMakeFiles/cgra-compiler.dir/src/main.cpp.s

CMakeFiles/cgra-compiler.dir/src/main.cpp.o.requires:

.PHONY : CMakeFiles/cgra-compiler.dir/src/main.cpp.o.requires

CMakeFiles/cgra-compiler.dir/src/main.cpp.o.provides: CMakeFiles/cgra-compiler.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/cgra-compiler.dir/build.make CMakeFiles/cgra-compiler.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/cgra-compiler.dir/src/main.cpp.o.provides

CMakeFiles/cgra-compiler.dir/src/main.cpp.o.provides.build: CMakeFiles/cgra-compiler.dir/src/main.cpp.o


CMakeFiles/cgra-compiler.dir/src/adg/adg.cpp.o: CMakeFiles/cgra-compiler.dir/flags.make
CMakeFiles/cgra-compiler.dir/src/adg/adg.cpp.o: ../src/adg/adg.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/cgra-compiler.dir/src/adg/adg.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cgra-compiler.dir/src/adg/adg.cpp.o -c /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/src/adg/adg.cpp

CMakeFiles/cgra-compiler.dir/src/adg/adg.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cgra-compiler.dir/src/adg/adg.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/src/adg/adg.cpp > CMakeFiles/cgra-compiler.dir/src/adg/adg.cpp.i

CMakeFiles/cgra-compiler.dir/src/adg/adg.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cgra-compiler.dir/src/adg/adg.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/src/adg/adg.cpp -o CMakeFiles/cgra-compiler.dir/src/adg/adg.cpp.s

CMakeFiles/cgra-compiler.dir/src/adg/adg.cpp.o.requires:

.PHONY : CMakeFiles/cgra-compiler.dir/src/adg/adg.cpp.o.requires

CMakeFiles/cgra-compiler.dir/src/adg/adg.cpp.o.provides: CMakeFiles/cgra-compiler.dir/src/adg/adg.cpp.o.requires
	$(MAKE) -f CMakeFiles/cgra-compiler.dir/build.make CMakeFiles/cgra-compiler.dir/src/adg/adg.cpp.o.provides.build
.PHONY : CMakeFiles/cgra-compiler.dir/src/adg/adg.cpp.o.provides

CMakeFiles/cgra-compiler.dir/src/adg/adg.cpp.o.provides.build: CMakeFiles/cgra-compiler.dir/src/adg/adg.cpp.o


CMakeFiles/cgra-compiler.dir/src/adg/adg_node.cpp.o: CMakeFiles/cgra-compiler.dir/flags.make
CMakeFiles/cgra-compiler.dir/src/adg/adg_node.cpp.o: ../src/adg/adg_node.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/cgra-compiler.dir/src/adg/adg_node.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cgra-compiler.dir/src/adg/adg_node.cpp.o -c /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/src/adg/adg_node.cpp

CMakeFiles/cgra-compiler.dir/src/adg/adg_node.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cgra-compiler.dir/src/adg/adg_node.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/src/adg/adg_node.cpp > CMakeFiles/cgra-compiler.dir/src/adg/adg_node.cpp.i

CMakeFiles/cgra-compiler.dir/src/adg/adg_node.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cgra-compiler.dir/src/adg/adg_node.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/src/adg/adg_node.cpp -o CMakeFiles/cgra-compiler.dir/src/adg/adg_node.cpp.s

CMakeFiles/cgra-compiler.dir/src/adg/adg_node.cpp.o.requires:

.PHONY : CMakeFiles/cgra-compiler.dir/src/adg/adg_node.cpp.o.requires

CMakeFiles/cgra-compiler.dir/src/adg/adg_node.cpp.o.provides: CMakeFiles/cgra-compiler.dir/src/adg/adg_node.cpp.o.requires
	$(MAKE) -f CMakeFiles/cgra-compiler.dir/build.make CMakeFiles/cgra-compiler.dir/src/adg/adg_node.cpp.o.provides.build
.PHONY : CMakeFiles/cgra-compiler.dir/src/adg/adg_node.cpp.o.provides

CMakeFiles/cgra-compiler.dir/src/adg/adg_node.cpp.o.provides.build: CMakeFiles/cgra-compiler.dir/src/adg/adg_node.cpp.o


CMakeFiles/cgra-compiler.dir/src/dfg/dfg.cpp.o: CMakeFiles/cgra-compiler.dir/flags.make
CMakeFiles/cgra-compiler.dir/src/dfg/dfg.cpp.o: ../src/dfg/dfg.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/cgra-compiler.dir/src/dfg/dfg.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cgra-compiler.dir/src/dfg/dfg.cpp.o -c /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/src/dfg/dfg.cpp

CMakeFiles/cgra-compiler.dir/src/dfg/dfg.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cgra-compiler.dir/src/dfg/dfg.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/src/dfg/dfg.cpp > CMakeFiles/cgra-compiler.dir/src/dfg/dfg.cpp.i

CMakeFiles/cgra-compiler.dir/src/dfg/dfg.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cgra-compiler.dir/src/dfg/dfg.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/src/dfg/dfg.cpp -o CMakeFiles/cgra-compiler.dir/src/dfg/dfg.cpp.s

CMakeFiles/cgra-compiler.dir/src/dfg/dfg.cpp.o.requires:

.PHONY : CMakeFiles/cgra-compiler.dir/src/dfg/dfg.cpp.o.requires

CMakeFiles/cgra-compiler.dir/src/dfg/dfg.cpp.o.provides: CMakeFiles/cgra-compiler.dir/src/dfg/dfg.cpp.o.requires
	$(MAKE) -f CMakeFiles/cgra-compiler.dir/build.make CMakeFiles/cgra-compiler.dir/src/dfg/dfg.cpp.o.provides.build
.PHONY : CMakeFiles/cgra-compiler.dir/src/dfg/dfg.cpp.o.provides

CMakeFiles/cgra-compiler.dir/src/dfg/dfg.cpp.o.provides.build: CMakeFiles/cgra-compiler.dir/src/dfg/dfg.cpp.o


CMakeFiles/cgra-compiler.dir/src/dfg/dfg_node.cpp.o: CMakeFiles/cgra-compiler.dir/flags.make
CMakeFiles/cgra-compiler.dir/src/dfg/dfg_node.cpp.o: ../src/dfg/dfg_node.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/cgra-compiler.dir/src/dfg/dfg_node.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cgra-compiler.dir/src/dfg/dfg_node.cpp.o -c /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/src/dfg/dfg_node.cpp

CMakeFiles/cgra-compiler.dir/src/dfg/dfg_node.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cgra-compiler.dir/src/dfg/dfg_node.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/src/dfg/dfg_node.cpp > CMakeFiles/cgra-compiler.dir/src/dfg/dfg_node.cpp.i

CMakeFiles/cgra-compiler.dir/src/dfg/dfg_node.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cgra-compiler.dir/src/dfg/dfg_node.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/src/dfg/dfg_node.cpp -o CMakeFiles/cgra-compiler.dir/src/dfg/dfg_node.cpp.s

CMakeFiles/cgra-compiler.dir/src/dfg/dfg_node.cpp.o.requires:

.PHONY : CMakeFiles/cgra-compiler.dir/src/dfg/dfg_node.cpp.o.requires

CMakeFiles/cgra-compiler.dir/src/dfg/dfg_node.cpp.o.provides: CMakeFiles/cgra-compiler.dir/src/dfg/dfg_node.cpp.o.requires
	$(MAKE) -f CMakeFiles/cgra-compiler.dir/build.make CMakeFiles/cgra-compiler.dir/src/dfg/dfg_node.cpp.o.provides.build
.PHONY : CMakeFiles/cgra-compiler.dir/src/dfg/dfg_node.cpp.o.provides

CMakeFiles/cgra-compiler.dir/src/dfg/dfg_node.cpp.o.provides.build: CMakeFiles/cgra-compiler.dir/src/dfg/dfg_node.cpp.o


CMakeFiles/cgra-compiler.dir/src/ir/adg_ir.cpp.o: CMakeFiles/cgra-compiler.dir/flags.make
CMakeFiles/cgra-compiler.dir/src/ir/adg_ir.cpp.o: ../src/ir/adg_ir.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/cgra-compiler.dir/src/ir/adg_ir.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cgra-compiler.dir/src/ir/adg_ir.cpp.o -c /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/src/ir/adg_ir.cpp

CMakeFiles/cgra-compiler.dir/src/ir/adg_ir.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cgra-compiler.dir/src/ir/adg_ir.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/src/ir/adg_ir.cpp > CMakeFiles/cgra-compiler.dir/src/ir/adg_ir.cpp.i

CMakeFiles/cgra-compiler.dir/src/ir/adg_ir.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cgra-compiler.dir/src/ir/adg_ir.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/src/ir/adg_ir.cpp -o CMakeFiles/cgra-compiler.dir/src/ir/adg_ir.cpp.s

CMakeFiles/cgra-compiler.dir/src/ir/adg_ir.cpp.o.requires:

.PHONY : CMakeFiles/cgra-compiler.dir/src/ir/adg_ir.cpp.o.requires

CMakeFiles/cgra-compiler.dir/src/ir/adg_ir.cpp.o.provides: CMakeFiles/cgra-compiler.dir/src/ir/adg_ir.cpp.o.requires
	$(MAKE) -f CMakeFiles/cgra-compiler.dir/build.make CMakeFiles/cgra-compiler.dir/src/ir/adg_ir.cpp.o.provides.build
.PHONY : CMakeFiles/cgra-compiler.dir/src/ir/adg_ir.cpp.o.provides

CMakeFiles/cgra-compiler.dir/src/ir/adg_ir.cpp.o.provides.build: CMakeFiles/cgra-compiler.dir/src/ir/adg_ir.cpp.o


CMakeFiles/cgra-compiler.dir/src/ir/dfg_ir.cpp.o: CMakeFiles/cgra-compiler.dir/flags.make
CMakeFiles/cgra-compiler.dir/src/ir/dfg_ir.cpp.o: ../src/ir/dfg_ir.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/cgra-compiler.dir/src/ir/dfg_ir.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cgra-compiler.dir/src/ir/dfg_ir.cpp.o -c /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/src/ir/dfg_ir.cpp

CMakeFiles/cgra-compiler.dir/src/ir/dfg_ir.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cgra-compiler.dir/src/ir/dfg_ir.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/src/ir/dfg_ir.cpp > CMakeFiles/cgra-compiler.dir/src/ir/dfg_ir.cpp.i

CMakeFiles/cgra-compiler.dir/src/ir/dfg_ir.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cgra-compiler.dir/src/ir/dfg_ir.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/src/ir/dfg_ir.cpp -o CMakeFiles/cgra-compiler.dir/src/ir/dfg_ir.cpp.s

CMakeFiles/cgra-compiler.dir/src/ir/dfg_ir.cpp.o.requires:

.PHONY : CMakeFiles/cgra-compiler.dir/src/ir/dfg_ir.cpp.o.requires

CMakeFiles/cgra-compiler.dir/src/ir/dfg_ir.cpp.o.provides: CMakeFiles/cgra-compiler.dir/src/ir/dfg_ir.cpp.o.requires
	$(MAKE) -f CMakeFiles/cgra-compiler.dir/build.make CMakeFiles/cgra-compiler.dir/src/ir/dfg_ir.cpp.o.provides.build
.PHONY : CMakeFiles/cgra-compiler.dir/src/ir/dfg_ir.cpp.o.provides

CMakeFiles/cgra-compiler.dir/src/ir/dfg_ir.cpp.o.provides.build: CMakeFiles/cgra-compiler.dir/src/ir/dfg_ir.cpp.o


CMakeFiles/cgra-compiler.dir/src/mapper/configuration.cpp.o: CMakeFiles/cgra-compiler.dir/flags.make
CMakeFiles/cgra-compiler.dir/src/mapper/configuration.cpp.o: ../src/mapper/configuration.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/cgra-compiler.dir/src/mapper/configuration.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cgra-compiler.dir/src/mapper/configuration.cpp.o -c /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/src/mapper/configuration.cpp

CMakeFiles/cgra-compiler.dir/src/mapper/configuration.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cgra-compiler.dir/src/mapper/configuration.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/src/mapper/configuration.cpp > CMakeFiles/cgra-compiler.dir/src/mapper/configuration.cpp.i

CMakeFiles/cgra-compiler.dir/src/mapper/configuration.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cgra-compiler.dir/src/mapper/configuration.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/src/mapper/configuration.cpp -o CMakeFiles/cgra-compiler.dir/src/mapper/configuration.cpp.s

CMakeFiles/cgra-compiler.dir/src/mapper/configuration.cpp.o.requires:

.PHONY : CMakeFiles/cgra-compiler.dir/src/mapper/configuration.cpp.o.requires

CMakeFiles/cgra-compiler.dir/src/mapper/configuration.cpp.o.provides: CMakeFiles/cgra-compiler.dir/src/mapper/configuration.cpp.o.requires
	$(MAKE) -f CMakeFiles/cgra-compiler.dir/build.make CMakeFiles/cgra-compiler.dir/src/mapper/configuration.cpp.o.provides.build
.PHONY : CMakeFiles/cgra-compiler.dir/src/mapper/configuration.cpp.o.provides

CMakeFiles/cgra-compiler.dir/src/mapper/configuration.cpp.o.provides.build: CMakeFiles/cgra-compiler.dir/src/mapper/configuration.cpp.o


CMakeFiles/cgra-compiler.dir/src/mapper/mapper.cpp.o: CMakeFiles/cgra-compiler.dir/flags.make
CMakeFiles/cgra-compiler.dir/src/mapper/mapper.cpp.o: ../src/mapper/mapper.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/cgra-compiler.dir/src/mapper/mapper.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cgra-compiler.dir/src/mapper/mapper.cpp.o -c /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/src/mapper/mapper.cpp

CMakeFiles/cgra-compiler.dir/src/mapper/mapper.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cgra-compiler.dir/src/mapper/mapper.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/src/mapper/mapper.cpp > CMakeFiles/cgra-compiler.dir/src/mapper/mapper.cpp.i

CMakeFiles/cgra-compiler.dir/src/mapper/mapper.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cgra-compiler.dir/src/mapper/mapper.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/src/mapper/mapper.cpp -o CMakeFiles/cgra-compiler.dir/src/mapper/mapper.cpp.s

CMakeFiles/cgra-compiler.dir/src/mapper/mapper.cpp.o.requires:

.PHONY : CMakeFiles/cgra-compiler.dir/src/mapper/mapper.cpp.o.requires

CMakeFiles/cgra-compiler.dir/src/mapper/mapper.cpp.o.provides: CMakeFiles/cgra-compiler.dir/src/mapper/mapper.cpp.o.requires
	$(MAKE) -f CMakeFiles/cgra-compiler.dir/build.make CMakeFiles/cgra-compiler.dir/src/mapper/mapper.cpp.o.provides.build
.PHONY : CMakeFiles/cgra-compiler.dir/src/mapper/mapper.cpp.o.provides

CMakeFiles/cgra-compiler.dir/src/mapper/mapper.cpp.o.provides.build: CMakeFiles/cgra-compiler.dir/src/mapper/mapper.cpp.o


CMakeFiles/cgra-compiler.dir/src/mapper/mapper_sa.cpp.o: CMakeFiles/cgra-compiler.dir/flags.make
CMakeFiles/cgra-compiler.dir/src/mapper/mapper_sa.cpp.o: ../src/mapper/mapper_sa.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/cgra-compiler.dir/src/mapper/mapper_sa.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cgra-compiler.dir/src/mapper/mapper_sa.cpp.o -c /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/src/mapper/mapper_sa.cpp

CMakeFiles/cgra-compiler.dir/src/mapper/mapper_sa.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cgra-compiler.dir/src/mapper/mapper_sa.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/src/mapper/mapper_sa.cpp > CMakeFiles/cgra-compiler.dir/src/mapper/mapper_sa.cpp.i

CMakeFiles/cgra-compiler.dir/src/mapper/mapper_sa.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cgra-compiler.dir/src/mapper/mapper_sa.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/src/mapper/mapper_sa.cpp -o CMakeFiles/cgra-compiler.dir/src/mapper/mapper_sa.cpp.s

CMakeFiles/cgra-compiler.dir/src/mapper/mapper_sa.cpp.o.requires:

.PHONY : CMakeFiles/cgra-compiler.dir/src/mapper/mapper_sa.cpp.o.requires

CMakeFiles/cgra-compiler.dir/src/mapper/mapper_sa.cpp.o.provides: CMakeFiles/cgra-compiler.dir/src/mapper/mapper_sa.cpp.o.requires
	$(MAKE) -f CMakeFiles/cgra-compiler.dir/build.make CMakeFiles/cgra-compiler.dir/src/mapper/mapper_sa.cpp.o.provides.build
.PHONY : CMakeFiles/cgra-compiler.dir/src/mapper/mapper_sa.cpp.o.provides

CMakeFiles/cgra-compiler.dir/src/mapper/mapper_sa.cpp.o.provides.build: CMakeFiles/cgra-compiler.dir/src/mapper/mapper_sa.cpp.o


CMakeFiles/cgra-compiler.dir/src/mapper/mapping.cpp.o: CMakeFiles/cgra-compiler.dir/flags.make
CMakeFiles/cgra-compiler.dir/src/mapper/mapping.cpp.o: ../src/mapper/mapping.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/cgra-compiler.dir/src/mapper/mapping.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cgra-compiler.dir/src/mapper/mapping.cpp.o -c /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/src/mapper/mapping.cpp

CMakeFiles/cgra-compiler.dir/src/mapper/mapping.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cgra-compiler.dir/src/mapper/mapping.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/src/mapper/mapping.cpp > CMakeFiles/cgra-compiler.dir/src/mapper/mapping.cpp.i

CMakeFiles/cgra-compiler.dir/src/mapper/mapping.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cgra-compiler.dir/src/mapper/mapping.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/src/mapper/mapping.cpp -o CMakeFiles/cgra-compiler.dir/src/mapper/mapping.cpp.s

CMakeFiles/cgra-compiler.dir/src/mapper/mapping.cpp.o.requires:

.PHONY : CMakeFiles/cgra-compiler.dir/src/mapper/mapping.cpp.o.requires

CMakeFiles/cgra-compiler.dir/src/mapper/mapping.cpp.o.provides: CMakeFiles/cgra-compiler.dir/src/mapper/mapping.cpp.o.requires
	$(MAKE) -f CMakeFiles/cgra-compiler.dir/build.make CMakeFiles/cgra-compiler.dir/src/mapper/mapping.cpp.o.provides.build
.PHONY : CMakeFiles/cgra-compiler.dir/src/mapper/mapping.cpp.o.provides

CMakeFiles/cgra-compiler.dir/src/mapper/mapping.cpp.o.provides.build: CMakeFiles/cgra-compiler.dir/src/mapper/mapping.cpp.o


CMakeFiles/cgra-compiler.dir/src/mapper/visualize.cpp.o: CMakeFiles/cgra-compiler.dir/flags.make
CMakeFiles/cgra-compiler.dir/src/mapper/visualize.cpp.o: ../src/mapper/visualize.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/cgra-compiler.dir/src/mapper/visualize.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cgra-compiler.dir/src/mapper/visualize.cpp.o -c /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/src/mapper/visualize.cpp

CMakeFiles/cgra-compiler.dir/src/mapper/visualize.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cgra-compiler.dir/src/mapper/visualize.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/src/mapper/visualize.cpp > CMakeFiles/cgra-compiler.dir/src/mapper/visualize.cpp.i

CMakeFiles/cgra-compiler.dir/src/mapper/visualize.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cgra-compiler.dir/src/mapper/visualize.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/src/mapper/visualize.cpp -o CMakeFiles/cgra-compiler.dir/src/mapper/visualize.cpp.s

CMakeFiles/cgra-compiler.dir/src/mapper/visualize.cpp.o.requires:

.PHONY : CMakeFiles/cgra-compiler.dir/src/mapper/visualize.cpp.o.requires

CMakeFiles/cgra-compiler.dir/src/mapper/visualize.cpp.o.provides: CMakeFiles/cgra-compiler.dir/src/mapper/visualize.cpp.o.requires
	$(MAKE) -f CMakeFiles/cgra-compiler.dir/build.make CMakeFiles/cgra-compiler.dir/src/mapper/visualize.cpp.o.provides.build
.PHONY : CMakeFiles/cgra-compiler.dir/src/mapper/visualize.cpp.o.provides

CMakeFiles/cgra-compiler.dir/src/mapper/visualize.cpp.o.provides.build: CMakeFiles/cgra-compiler.dir/src/mapper/visualize.cpp.o


CMakeFiles/cgra-compiler.dir/src/op/operations.cpp.o: CMakeFiles/cgra-compiler.dir/flags.make
CMakeFiles/cgra-compiler.dir/src/op/operations.cpp.o: ../src/op/operations.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/cgra-compiler.dir/src/op/operations.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cgra-compiler.dir/src/op/operations.cpp.o -c /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/src/op/operations.cpp

CMakeFiles/cgra-compiler.dir/src/op/operations.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cgra-compiler.dir/src/op/operations.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/src/op/operations.cpp > CMakeFiles/cgra-compiler.dir/src/op/operations.cpp.i

CMakeFiles/cgra-compiler.dir/src/op/operations.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cgra-compiler.dir/src/op/operations.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/src/op/operations.cpp -o CMakeFiles/cgra-compiler.dir/src/op/operations.cpp.s

CMakeFiles/cgra-compiler.dir/src/op/operations.cpp.o.requires:

.PHONY : CMakeFiles/cgra-compiler.dir/src/op/operations.cpp.o.requires

CMakeFiles/cgra-compiler.dir/src/op/operations.cpp.o.provides: CMakeFiles/cgra-compiler.dir/src/op/operations.cpp.o.requires
	$(MAKE) -f CMakeFiles/cgra-compiler.dir/build.make CMakeFiles/cgra-compiler.dir/src/op/operations.cpp.o.provides.build
.PHONY : CMakeFiles/cgra-compiler.dir/src/op/operations.cpp.o.provides

CMakeFiles/cgra-compiler.dir/src/op/operations.cpp.o.provides.build: CMakeFiles/cgra-compiler.dir/src/op/operations.cpp.o


# Object files for target cgra-compiler
cgra__compiler_OBJECTS = \
"CMakeFiles/cgra-compiler.dir/src/main.cpp.o" \
"CMakeFiles/cgra-compiler.dir/src/adg/adg.cpp.o" \
"CMakeFiles/cgra-compiler.dir/src/adg/adg_node.cpp.o" \
"CMakeFiles/cgra-compiler.dir/src/dfg/dfg.cpp.o" \
"CMakeFiles/cgra-compiler.dir/src/dfg/dfg_node.cpp.o" \
"CMakeFiles/cgra-compiler.dir/src/ir/adg_ir.cpp.o" \
"CMakeFiles/cgra-compiler.dir/src/ir/dfg_ir.cpp.o" \
"CMakeFiles/cgra-compiler.dir/src/mapper/configuration.cpp.o" \
"CMakeFiles/cgra-compiler.dir/src/mapper/mapper.cpp.o" \
"CMakeFiles/cgra-compiler.dir/src/mapper/mapper_sa.cpp.o" \
"CMakeFiles/cgra-compiler.dir/src/mapper/mapping.cpp.o" \
"CMakeFiles/cgra-compiler.dir/src/mapper/visualize.cpp.o" \
"CMakeFiles/cgra-compiler.dir/src/op/operations.cpp.o"

# External object files for target cgra-compiler
cgra__compiler_EXTERNAL_OBJECTS =

cgra-compiler: CMakeFiles/cgra-compiler.dir/src/main.cpp.o
cgra-compiler: CMakeFiles/cgra-compiler.dir/src/adg/adg.cpp.o
cgra-compiler: CMakeFiles/cgra-compiler.dir/src/adg/adg_node.cpp.o
cgra-compiler: CMakeFiles/cgra-compiler.dir/src/dfg/dfg.cpp.o
cgra-compiler: CMakeFiles/cgra-compiler.dir/src/dfg/dfg_node.cpp.o
cgra-compiler: CMakeFiles/cgra-compiler.dir/src/ir/adg_ir.cpp.o
cgra-compiler: CMakeFiles/cgra-compiler.dir/src/ir/dfg_ir.cpp.o
cgra-compiler: CMakeFiles/cgra-compiler.dir/src/mapper/configuration.cpp.o
cgra-compiler: CMakeFiles/cgra-compiler.dir/src/mapper/mapper.cpp.o
cgra-compiler: CMakeFiles/cgra-compiler.dir/src/mapper/mapper_sa.cpp.o
cgra-compiler: CMakeFiles/cgra-compiler.dir/src/mapper/mapping.cpp.o
cgra-compiler: CMakeFiles/cgra-compiler.dir/src/mapper/visualize.cpp.o
cgra-compiler: CMakeFiles/cgra-compiler.dir/src/op/operations.cpp.o
cgra-compiler: CMakeFiles/cgra-compiler.dir/build.make
cgra-compiler: CMakeFiles/cgra-compiler.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking CXX executable cgra-compiler"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cgra-compiler.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cgra-compiler.dir/build: cgra-compiler

.PHONY : CMakeFiles/cgra-compiler.dir/build

CMakeFiles/cgra-compiler.dir/requires: CMakeFiles/cgra-compiler.dir/src/main.cpp.o.requires
CMakeFiles/cgra-compiler.dir/requires: CMakeFiles/cgra-compiler.dir/src/adg/adg.cpp.o.requires
CMakeFiles/cgra-compiler.dir/requires: CMakeFiles/cgra-compiler.dir/src/adg/adg_node.cpp.o.requires
CMakeFiles/cgra-compiler.dir/requires: CMakeFiles/cgra-compiler.dir/src/dfg/dfg.cpp.o.requires
CMakeFiles/cgra-compiler.dir/requires: CMakeFiles/cgra-compiler.dir/src/dfg/dfg_node.cpp.o.requires
CMakeFiles/cgra-compiler.dir/requires: CMakeFiles/cgra-compiler.dir/src/ir/adg_ir.cpp.o.requires
CMakeFiles/cgra-compiler.dir/requires: CMakeFiles/cgra-compiler.dir/src/ir/dfg_ir.cpp.o.requires
CMakeFiles/cgra-compiler.dir/requires: CMakeFiles/cgra-compiler.dir/src/mapper/configuration.cpp.o.requires
CMakeFiles/cgra-compiler.dir/requires: CMakeFiles/cgra-compiler.dir/src/mapper/mapper.cpp.o.requires
CMakeFiles/cgra-compiler.dir/requires: CMakeFiles/cgra-compiler.dir/src/mapper/mapper_sa.cpp.o.requires
CMakeFiles/cgra-compiler.dir/requires: CMakeFiles/cgra-compiler.dir/src/mapper/mapping.cpp.o.requires
CMakeFiles/cgra-compiler.dir/requires: CMakeFiles/cgra-compiler.dir/src/mapper/visualize.cpp.o.requires
CMakeFiles/cgra-compiler.dir/requires: CMakeFiles/cgra-compiler.dir/src/op/operations.cpp.o.requires

.PHONY : CMakeFiles/cgra-compiler.dir/requires

CMakeFiles/cgra-compiler.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cgra-compiler.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cgra-compiler.dir/clean

CMakeFiles/cgra-compiler.dir/depend:
	cd /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/build /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/build /home/dy41/test/PTRA_ALAP/TTRAM_ALAP/TRAM-main/cgra-compiler/build/CMakeFiles/cgra-compiler.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cgra-compiler.dir/depend

