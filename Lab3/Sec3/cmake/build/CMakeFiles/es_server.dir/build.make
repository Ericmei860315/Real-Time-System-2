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
CMAKE_COMMAND = /home/mei/local/bin/cmake

# The command to remove a file.
RM = /home/mei/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/mei/tutorial/Lab3/Sec3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mei/tutorial/Lab3/Sec3/cmake/build

# Include any dependencies generated for this target.
include CMakeFiles/es_server.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/es_server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/es_server.dir/flags.make

es.pb.cc: /home/mei/tutorial/Lab3/protos/es.proto
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/mei/tutorial/Lab3/Sec3/cmake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating es.pb.cc, es.pb.h, es.grpc.pb.cc, es.grpc.pb.h"
	/home/mei/local/bin/protoc-3.11.2.0 --grpc_out /home/mei/tutorial/Lab3/Sec3/cmake/build --cpp_out /home/mei/tutorial/Lab3/Sec3/cmake/build -I /home/mei/tutorial/Lab3/protos --plugin=protoc-gen-grpc="/home/mei/local/bin/grpc_cpp_plugin" /home/mei/tutorial/Lab3/protos/es.proto

es.pb.h: es.pb.cc
	@$(CMAKE_COMMAND) -E touch_nocreate es.pb.h

es.grpc.pb.cc: es.pb.cc
	@$(CMAKE_COMMAND) -E touch_nocreate es.grpc.pb.cc

es.grpc.pb.h: es.pb.cc
	@$(CMAKE_COMMAND) -E touch_nocreate es.grpc.pb.h

CMakeFiles/es_server.dir/es_server.cc.o: CMakeFiles/es_server.dir/flags.make
CMakeFiles/es_server.dir/es_server.cc.o: ../../es_server.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mei/tutorial/Lab3/Sec3/cmake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/es_server.dir/es_server.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/es_server.dir/es_server.cc.o -c /home/mei/tutorial/Lab3/Sec3/es_server.cc

CMakeFiles/es_server.dir/es_server.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/es_server.dir/es_server.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mei/tutorial/Lab3/Sec3/es_server.cc > CMakeFiles/es_server.dir/es_server.cc.i

CMakeFiles/es_server.dir/es_server.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/es_server.dir/es_server.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mei/tutorial/Lab3/Sec3/es_server.cc -o CMakeFiles/es_server.dir/es_server.cc.s

CMakeFiles/es_server.dir/es.pb.cc.o: CMakeFiles/es_server.dir/flags.make
CMakeFiles/es_server.dir/es.pb.cc.o: es.pb.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mei/tutorial/Lab3/Sec3/cmake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/es_server.dir/es.pb.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/es_server.dir/es.pb.cc.o -c /home/mei/tutorial/Lab3/Sec3/cmake/build/es.pb.cc

CMakeFiles/es_server.dir/es.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/es_server.dir/es.pb.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mei/tutorial/Lab3/Sec3/cmake/build/es.pb.cc > CMakeFiles/es_server.dir/es.pb.cc.i

CMakeFiles/es_server.dir/es.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/es_server.dir/es.pb.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mei/tutorial/Lab3/Sec3/cmake/build/es.pb.cc -o CMakeFiles/es_server.dir/es.pb.cc.s

CMakeFiles/es_server.dir/es.grpc.pb.cc.o: CMakeFiles/es_server.dir/flags.make
CMakeFiles/es_server.dir/es.grpc.pb.cc.o: es.grpc.pb.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mei/tutorial/Lab3/Sec3/cmake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/es_server.dir/es.grpc.pb.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/es_server.dir/es.grpc.pb.cc.o -c /home/mei/tutorial/Lab3/Sec3/cmake/build/es.grpc.pb.cc

CMakeFiles/es_server.dir/es.grpc.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/es_server.dir/es.grpc.pb.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mei/tutorial/Lab3/Sec3/cmake/build/es.grpc.pb.cc > CMakeFiles/es_server.dir/es.grpc.pb.cc.i

CMakeFiles/es_server.dir/es.grpc.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/es_server.dir/es.grpc.pb.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mei/tutorial/Lab3/Sec3/cmake/build/es.grpc.pb.cc -o CMakeFiles/es_server.dir/es.grpc.pb.cc.s

# Object files for target es_server
es_server_OBJECTS = \
"CMakeFiles/es_server.dir/es_server.cc.o" \
"CMakeFiles/es_server.dir/es.pb.cc.o" \
"CMakeFiles/es_server.dir/es.grpc.pb.cc.o"

# External object files for target es_server
es_server_EXTERNAL_OBJECTS =

es_server: CMakeFiles/es_server.dir/es_server.cc.o
es_server: CMakeFiles/es_server.dir/es.pb.cc.o
es_server: CMakeFiles/es_server.dir/es.grpc.pb.cc.o
es_server: CMakeFiles/es_server.dir/build.make
es_server: /home/mei/local/lib/libgrpc++_reflection.a
es_server: /home/mei/local/lib/libgrpc++.a
es_server: /home/mei/local/lib/libprotobuf.a
es_server: /home/mei/local/lib/libgrpc.a
es_server: /home/mei/local/lib/libssl.a
es_server: /home/mei/local/lib/libcrypto.a
es_server: /home/mei/local/lib/libgpr.a
es_server: /home/mei/local/lib/libabsl_str_format_internal.a
es_server: /home/mei/local/lib/libabsl_strings.a
es_server: /home/mei/local/lib/libabsl_throw_delegate.a
es_server: /home/mei/local/lib/libabsl_strings_internal.a
es_server: /home/mei/local/lib/libabsl_base.a
es_server: /home/mei/local/lib/libabsl_dynamic_annotations.a
es_server: /home/mei/local/lib/libabsl_spinlock_wait.a
es_server: /usr/lib/x86_64-linux-gnu/librt.so
es_server: /home/mei/local/lib/libabsl_int128.a
es_server: /home/mei/local/lib/libabsl_bad_optional_access.a
es_server: /home/mei/local/lib/libabsl_raw_logging_internal.a
es_server: /home/mei/local/lib/libabsl_log_severity.a
es_server: /home/mei/local/lib/libupb.a
es_server: /home/mei/local/lib/libz.a
es_server: /home/mei/local/lib/libcares.a
es_server: /home/mei/local/lib/libaddress_sorting.a
es_server: CMakeFiles/es_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mei/tutorial/Lab3/Sec3/cmake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable es_server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/es_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/es_server.dir/build: es_server

.PHONY : CMakeFiles/es_server.dir/build

CMakeFiles/es_server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/es_server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/es_server.dir/clean

CMakeFiles/es_server.dir/depend: es.pb.cc
CMakeFiles/es_server.dir/depend: es.pb.h
CMakeFiles/es_server.dir/depend: es.grpc.pb.cc
CMakeFiles/es_server.dir/depend: es.grpc.pb.h
	cd /home/mei/tutorial/Lab3/Sec3/cmake/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mei/tutorial/Lab3/Sec3 /home/mei/tutorial/Lab3/Sec3 /home/mei/tutorial/Lab3/Sec3/cmake/build /home/mei/tutorial/Lab3/Sec3/cmake/build /home/mei/tutorial/Lab3/Sec3/cmake/build/CMakeFiles/es_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/es_server.dir/depend

