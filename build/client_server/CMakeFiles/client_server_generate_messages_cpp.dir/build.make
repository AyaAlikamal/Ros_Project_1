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
CMAKE_SOURCE_DIR = /home/ayaali/Test/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ayaali/Test/build

# Utility rule file for client_server_generate_messages_cpp.

# Include the progress variables for this target.
include client_server/CMakeFiles/client_server_generate_messages_cpp.dir/progress.make

client_server/CMakeFiles/client_server_generate_messages_cpp: /home/ayaali/Test/devel/include/client_server/project1.h


/home/ayaali/Test/devel/include/client_server/project1.h: /opt/ros/noetic/lib/gencpp/gen_cpp.py
/home/ayaali/Test/devel/include/client_server/project1.h: /home/ayaali/Test/src/client_server/srv/project1.srv
/home/ayaali/Test/devel/include/client_server/project1.h: /opt/ros/noetic/share/gencpp/msg.h.template
/home/ayaali/Test/devel/include/client_server/project1.h: /opt/ros/noetic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ayaali/Test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating C++ code from client_server/project1.srv"
	cd /home/ayaali/Test/src/client_server && /home/ayaali/Test/build/catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/ayaali/Test/src/client_server/srv/project1.srv -Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg -p client_server -o /home/ayaali/Test/devel/include/client_server -e /opt/ros/noetic/share/gencpp/cmake/..

client_server_generate_messages_cpp: client_server/CMakeFiles/client_server_generate_messages_cpp
client_server_generate_messages_cpp: /home/ayaali/Test/devel/include/client_server/project1.h
client_server_generate_messages_cpp: client_server/CMakeFiles/client_server_generate_messages_cpp.dir/build.make

.PHONY : client_server_generate_messages_cpp

# Rule to build all files generated by this target.
client_server/CMakeFiles/client_server_generate_messages_cpp.dir/build: client_server_generate_messages_cpp

.PHONY : client_server/CMakeFiles/client_server_generate_messages_cpp.dir/build

client_server/CMakeFiles/client_server_generate_messages_cpp.dir/clean:
	cd /home/ayaali/Test/build/client_server && $(CMAKE_COMMAND) -P CMakeFiles/client_server_generate_messages_cpp.dir/cmake_clean.cmake
.PHONY : client_server/CMakeFiles/client_server_generate_messages_cpp.dir/clean

client_server/CMakeFiles/client_server_generate_messages_cpp.dir/depend:
	cd /home/ayaali/Test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ayaali/Test/src /home/ayaali/Test/src/client_server /home/ayaali/Test/build /home/ayaali/Test/build/client_server /home/ayaali/Test/build/client_server/CMakeFiles/client_server_generate_messages_cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : client_server/CMakeFiles/client_server_generate_messages_cpp.dir/depend

