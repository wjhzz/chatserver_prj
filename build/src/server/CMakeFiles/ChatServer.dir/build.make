# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/wjh/chat_prj

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wjh/chat_prj/build

# Include any dependencies generated for this target.
include src/server/CMakeFiles/ChatServer.dir/depend.make

# Include the progress variables for this target.
include src/server/CMakeFiles/ChatServer.dir/progress.make

# Include the compile flags for this target's objects.
include src/server/CMakeFiles/ChatServer.dir/flags.make

src/server/CMakeFiles/ChatServer.dir/main.cpp.o: src/server/CMakeFiles/ChatServer.dir/flags.make
src/server/CMakeFiles/ChatServer.dir/main.cpp.o: ../src/server/main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/wjh/chat_prj/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/server/CMakeFiles/ChatServer.dir/main.cpp.o"
	cd /home/wjh/chat_prj/build/src/server && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/ChatServer.dir/main.cpp.o -c /home/wjh/chat_prj/src/server/main.cpp

src/server/CMakeFiles/ChatServer.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatServer.dir/main.cpp.i"
	cd /home/wjh/chat_prj/build/src/server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/wjh/chat_prj/src/server/main.cpp > CMakeFiles/ChatServer.dir/main.cpp.i

src/server/CMakeFiles/ChatServer.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatServer.dir/main.cpp.s"
	cd /home/wjh/chat_prj/build/src/server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/wjh/chat_prj/src/server/main.cpp -o CMakeFiles/ChatServer.dir/main.cpp.s

src/server/CMakeFiles/ChatServer.dir/main.cpp.o.requires:
.PHONY : src/server/CMakeFiles/ChatServer.dir/main.cpp.o.requires

src/server/CMakeFiles/ChatServer.dir/main.cpp.o.provides: src/server/CMakeFiles/ChatServer.dir/main.cpp.o.requires
	$(MAKE) -f src/server/CMakeFiles/ChatServer.dir/build.make src/server/CMakeFiles/ChatServer.dir/main.cpp.o.provides.build
.PHONY : src/server/CMakeFiles/ChatServer.dir/main.cpp.o.provides

src/server/CMakeFiles/ChatServer.dir/main.cpp.o.provides.build: src/server/CMakeFiles/ChatServer.dir/main.cpp.o

src/server/CMakeFiles/ChatServer.dir/chatserver.cpp.o: src/server/CMakeFiles/ChatServer.dir/flags.make
src/server/CMakeFiles/ChatServer.dir/chatserver.cpp.o: ../src/server/chatserver.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/wjh/chat_prj/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/server/CMakeFiles/ChatServer.dir/chatserver.cpp.o"
	cd /home/wjh/chat_prj/build/src/server && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/ChatServer.dir/chatserver.cpp.o -c /home/wjh/chat_prj/src/server/chatserver.cpp

src/server/CMakeFiles/ChatServer.dir/chatserver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatServer.dir/chatserver.cpp.i"
	cd /home/wjh/chat_prj/build/src/server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/wjh/chat_prj/src/server/chatserver.cpp > CMakeFiles/ChatServer.dir/chatserver.cpp.i

src/server/CMakeFiles/ChatServer.dir/chatserver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatServer.dir/chatserver.cpp.s"
	cd /home/wjh/chat_prj/build/src/server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/wjh/chat_prj/src/server/chatserver.cpp -o CMakeFiles/ChatServer.dir/chatserver.cpp.s

src/server/CMakeFiles/ChatServer.dir/chatserver.cpp.o.requires:
.PHONY : src/server/CMakeFiles/ChatServer.dir/chatserver.cpp.o.requires

src/server/CMakeFiles/ChatServer.dir/chatserver.cpp.o.provides: src/server/CMakeFiles/ChatServer.dir/chatserver.cpp.o.requires
	$(MAKE) -f src/server/CMakeFiles/ChatServer.dir/build.make src/server/CMakeFiles/ChatServer.dir/chatserver.cpp.o.provides.build
.PHONY : src/server/CMakeFiles/ChatServer.dir/chatserver.cpp.o.provides

src/server/CMakeFiles/ChatServer.dir/chatserver.cpp.o.provides.build: src/server/CMakeFiles/ChatServer.dir/chatserver.cpp.o

src/server/CMakeFiles/ChatServer.dir/charservice.cpp.o: src/server/CMakeFiles/ChatServer.dir/flags.make
src/server/CMakeFiles/ChatServer.dir/charservice.cpp.o: ../src/server/charservice.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/wjh/chat_prj/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/server/CMakeFiles/ChatServer.dir/charservice.cpp.o"
	cd /home/wjh/chat_prj/build/src/server && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/ChatServer.dir/charservice.cpp.o -c /home/wjh/chat_prj/src/server/charservice.cpp

src/server/CMakeFiles/ChatServer.dir/charservice.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatServer.dir/charservice.cpp.i"
	cd /home/wjh/chat_prj/build/src/server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/wjh/chat_prj/src/server/charservice.cpp > CMakeFiles/ChatServer.dir/charservice.cpp.i

src/server/CMakeFiles/ChatServer.dir/charservice.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatServer.dir/charservice.cpp.s"
	cd /home/wjh/chat_prj/build/src/server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/wjh/chat_prj/src/server/charservice.cpp -o CMakeFiles/ChatServer.dir/charservice.cpp.s

src/server/CMakeFiles/ChatServer.dir/charservice.cpp.o.requires:
.PHONY : src/server/CMakeFiles/ChatServer.dir/charservice.cpp.o.requires

src/server/CMakeFiles/ChatServer.dir/charservice.cpp.o.provides: src/server/CMakeFiles/ChatServer.dir/charservice.cpp.o.requires
	$(MAKE) -f src/server/CMakeFiles/ChatServer.dir/build.make src/server/CMakeFiles/ChatServer.dir/charservice.cpp.o.provides.build
.PHONY : src/server/CMakeFiles/ChatServer.dir/charservice.cpp.o.provides

src/server/CMakeFiles/ChatServer.dir/charservice.cpp.o.provides.build: src/server/CMakeFiles/ChatServer.dir/charservice.cpp.o

src/server/CMakeFiles/ChatServer.dir/model/user.cpp.o: src/server/CMakeFiles/ChatServer.dir/flags.make
src/server/CMakeFiles/ChatServer.dir/model/user.cpp.o: ../src/server/model/user.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/wjh/chat_prj/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/server/CMakeFiles/ChatServer.dir/model/user.cpp.o"
	cd /home/wjh/chat_prj/build/src/server && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/ChatServer.dir/model/user.cpp.o -c /home/wjh/chat_prj/src/server/model/user.cpp

src/server/CMakeFiles/ChatServer.dir/model/user.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatServer.dir/model/user.cpp.i"
	cd /home/wjh/chat_prj/build/src/server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/wjh/chat_prj/src/server/model/user.cpp > CMakeFiles/ChatServer.dir/model/user.cpp.i

src/server/CMakeFiles/ChatServer.dir/model/user.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatServer.dir/model/user.cpp.s"
	cd /home/wjh/chat_prj/build/src/server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/wjh/chat_prj/src/server/model/user.cpp -o CMakeFiles/ChatServer.dir/model/user.cpp.s

src/server/CMakeFiles/ChatServer.dir/model/user.cpp.o.requires:
.PHONY : src/server/CMakeFiles/ChatServer.dir/model/user.cpp.o.requires

src/server/CMakeFiles/ChatServer.dir/model/user.cpp.o.provides: src/server/CMakeFiles/ChatServer.dir/model/user.cpp.o.requires
	$(MAKE) -f src/server/CMakeFiles/ChatServer.dir/build.make src/server/CMakeFiles/ChatServer.dir/model/user.cpp.o.provides.build
.PHONY : src/server/CMakeFiles/ChatServer.dir/model/user.cpp.o.provides

src/server/CMakeFiles/ChatServer.dir/model/user.cpp.o.provides.build: src/server/CMakeFiles/ChatServer.dir/model/user.cpp.o

src/server/CMakeFiles/ChatServer.dir/model/offlinemessage.cpp.o: src/server/CMakeFiles/ChatServer.dir/flags.make
src/server/CMakeFiles/ChatServer.dir/model/offlinemessage.cpp.o: ../src/server/model/offlinemessage.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/wjh/chat_prj/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/server/CMakeFiles/ChatServer.dir/model/offlinemessage.cpp.o"
	cd /home/wjh/chat_prj/build/src/server && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/ChatServer.dir/model/offlinemessage.cpp.o -c /home/wjh/chat_prj/src/server/model/offlinemessage.cpp

src/server/CMakeFiles/ChatServer.dir/model/offlinemessage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatServer.dir/model/offlinemessage.cpp.i"
	cd /home/wjh/chat_prj/build/src/server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/wjh/chat_prj/src/server/model/offlinemessage.cpp > CMakeFiles/ChatServer.dir/model/offlinemessage.cpp.i

src/server/CMakeFiles/ChatServer.dir/model/offlinemessage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatServer.dir/model/offlinemessage.cpp.s"
	cd /home/wjh/chat_prj/build/src/server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/wjh/chat_prj/src/server/model/offlinemessage.cpp -o CMakeFiles/ChatServer.dir/model/offlinemessage.cpp.s

src/server/CMakeFiles/ChatServer.dir/model/offlinemessage.cpp.o.requires:
.PHONY : src/server/CMakeFiles/ChatServer.dir/model/offlinemessage.cpp.o.requires

src/server/CMakeFiles/ChatServer.dir/model/offlinemessage.cpp.o.provides: src/server/CMakeFiles/ChatServer.dir/model/offlinemessage.cpp.o.requires
	$(MAKE) -f src/server/CMakeFiles/ChatServer.dir/build.make src/server/CMakeFiles/ChatServer.dir/model/offlinemessage.cpp.o.provides.build
.PHONY : src/server/CMakeFiles/ChatServer.dir/model/offlinemessage.cpp.o.provides

src/server/CMakeFiles/ChatServer.dir/model/offlinemessage.cpp.o.provides.build: src/server/CMakeFiles/ChatServer.dir/model/offlinemessage.cpp.o

src/server/CMakeFiles/ChatServer.dir/model/friend.cpp.o: src/server/CMakeFiles/ChatServer.dir/flags.make
src/server/CMakeFiles/ChatServer.dir/model/friend.cpp.o: ../src/server/model/friend.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/wjh/chat_prj/build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/server/CMakeFiles/ChatServer.dir/model/friend.cpp.o"
	cd /home/wjh/chat_prj/build/src/server && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/ChatServer.dir/model/friend.cpp.o -c /home/wjh/chat_prj/src/server/model/friend.cpp

src/server/CMakeFiles/ChatServer.dir/model/friend.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatServer.dir/model/friend.cpp.i"
	cd /home/wjh/chat_prj/build/src/server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/wjh/chat_prj/src/server/model/friend.cpp > CMakeFiles/ChatServer.dir/model/friend.cpp.i

src/server/CMakeFiles/ChatServer.dir/model/friend.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatServer.dir/model/friend.cpp.s"
	cd /home/wjh/chat_prj/build/src/server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/wjh/chat_prj/src/server/model/friend.cpp -o CMakeFiles/ChatServer.dir/model/friend.cpp.s

src/server/CMakeFiles/ChatServer.dir/model/friend.cpp.o.requires:
.PHONY : src/server/CMakeFiles/ChatServer.dir/model/friend.cpp.o.requires

src/server/CMakeFiles/ChatServer.dir/model/friend.cpp.o.provides: src/server/CMakeFiles/ChatServer.dir/model/friend.cpp.o.requires
	$(MAKE) -f src/server/CMakeFiles/ChatServer.dir/build.make src/server/CMakeFiles/ChatServer.dir/model/friend.cpp.o.provides.build
.PHONY : src/server/CMakeFiles/ChatServer.dir/model/friend.cpp.o.provides

src/server/CMakeFiles/ChatServer.dir/model/friend.cpp.o.provides.build: src/server/CMakeFiles/ChatServer.dir/model/friend.cpp.o

src/server/CMakeFiles/ChatServer.dir/model/group.cpp.o: src/server/CMakeFiles/ChatServer.dir/flags.make
src/server/CMakeFiles/ChatServer.dir/model/group.cpp.o: ../src/server/model/group.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/wjh/chat_prj/build/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/server/CMakeFiles/ChatServer.dir/model/group.cpp.o"
	cd /home/wjh/chat_prj/build/src/server && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/ChatServer.dir/model/group.cpp.o -c /home/wjh/chat_prj/src/server/model/group.cpp

src/server/CMakeFiles/ChatServer.dir/model/group.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatServer.dir/model/group.cpp.i"
	cd /home/wjh/chat_prj/build/src/server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/wjh/chat_prj/src/server/model/group.cpp > CMakeFiles/ChatServer.dir/model/group.cpp.i

src/server/CMakeFiles/ChatServer.dir/model/group.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatServer.dir/model/group.cpp.s"
	cd /home/wjh/chat_prj/build/src/server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/wjh/chat_prj/src/server/model/group.cpp -o CMakeFiles/ChatServer.dir/model/group.cpp.s

src/server/CMakeFiles/ChatServer.dir/model/group.cpp.o.requires:
.PHONY : src/server/CMakeFiles/ChatServer.dir/model/group.cpp.o.requires

src/server/CMakeFiles/ChatServer.dir/model/group.cpp.o.provides: src/server/CMakeFiles/ChatServer.dir/model/group.cpp.o.requires
	$(MAKE) -f src/server/CMakeFiles/ChatServer.dir/build.make src/server/CMakeFiles/ChatServer.dir/model/group.cpp.o.provides.build
.PHONY : src/server/CMakeFiles/ChatServer.dir/model/group.cpp.o.provides

src/server/CMakeFiles/ChatServer.dir/model/group.cpp.o.provides.build: src/server/CMakeFiles/ChatServer.dir/model/group.cpp.o

src/server/CMakeFiles/ChatServer.dir/redis/redis.cpp.o: src/server/CMakeFiles/ChatServer.dir/flags.make
src/server/CMakeFiles/ChatServer.dir/redis/redis.cpp.o: ../src/server/redis/redis.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/wjh/chat_prj/build/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/server/CMakeFiles/ChatServer.dir/redis/redis.cpp.o"
	cd /home/wjh/chat_prj/build/src/server && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/ChatServer.dir/redis/redis.cpp.o -c /home/wjh/chat_prj/src/server/redis/redis.cpp

src/server/CMakeFiles/ChatServer.dir/redis/redis.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatServer.dir/redis/redis.cpp.i"
	cd /home/wjh/chat_prj/build/src/server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/wjh/chat_prj/src/server/redis/redis.cpp > CMakeFiles/ChatServer.dir/redis/redis.cpp.i

src/server/CMakeFiles/ChatServer.dir/redis/redis.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatServer.dir/redis/redis.cpp.s"
	cd /home/wjh/chat_prj/build/src/server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/wjh/chat_prj/src/server/redis/redis.cpp -o CMakeFiles/ChatServer.dir/redis/redis.cpp.s

src/server/CMakeFiles/ChatServer.dir/redis/redis.cpp.o.requires:
.PHONY : src/server/CMakeFiles/ChatServer.dir/redis/redis.cpp.o.requires

src/server/CMakeFiles/ChatServer.dir/redis/redis.cpp.o.provides: src/server/CMakeFiles/ChatServer.dir/redis/redis.cpp.o.requires
	$(MAKE) -f src/server/CMakeFiles/ChatServer.dir/build.make src/server/CMakeFiles/ChatServer.dir/redis/redis.cpp.o.provides.build
.PHONY : src/server/CMakeFiles/ChatServer.dir/redis/redis.cpp.o.provides

src/server/CMakeFiles/ChatServer.dir/redis/redis.cpp.o.provides.build: src/server/CMakeFiles/ChatServer.dir/redis/redis.cpp.o

# Object files for target ChatServer
ChatServer_OBJECTS = \
"CMakeFiles/ChatServer.dir/main.cpp.o" \
"CMakeFiles/ChatServer.dir/chatserver.cpp.o" \
"CMakeFiles/ChatServer.dir/charservice.cpp.o" \
"CMakeFiles/ChatServer.dir/model/user.cpp.o" \
"CMakeFiles/ChatServer.dir/model/offlinemessage.cpp.o" \
"CMakeFiles/ChatServer.dir/model/friend.cpp.o" \
"CMakeFiles/ChatServer.dir/model/group.cpp.o" \
"CMakeFiles/ChatServer.dir/redis/redis.cpp.o"

# External object files for target ChatServer
ChatServer_EXTERNAL_OBJECTS =

../bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/main.cpp.o
../bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/chatserver.cpp.o
../bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/charservice.cpp.o
../bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/model/user.cpp.o
../bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/model/offlinemessage.cpp.o
../bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/model/friend.cpp.o
../bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/model/group.cpp.o
../bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/redis/redis.cpp.o
../bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/build.make
../bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../../bin/ChatServer"
	cd /home/wjh/chat_prj/build/src/server && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ChatServer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/server/CMakeFiles/ChatServer.dir/build: ../bin/ChatServer
.PHONY : src/server/CMakeFiles/ChatServer.dir/build

src/server/CMakeFiles/ChatServer.dir/requires: src/server/CMakeFiles/ChatServer.dir/main.cpp.o.requires
src/server/CMakeFiles/ChatServer.dir/requires: src/server/CMakeFiles/ChatServer.dir/chatserver.cpp.o.requires
src/server/CMakeFiles/ChatServer.dir/requires: src/server/CMakeFiles/ChatServer.dir/charservice.cpp.o.requires
src/server/CMakeFiles/ChatServer.dir/requires: src/server/CMakeFiles/ChatServer.dir/model/user.cpp.o.requires
src/server/CMakeFiles/ChatServer.dir/requires: src/server/CMakeFiles/ChatServer.dir/model/offlinemessage.cpp.o.requires
src/server/CMakeFiles/ChatServer.dir/requires: src/server/CMakeFiles/ChatServer.dir/model/friend.cpp.o.requires
src/server/CMakeFiles/ChatServer.dir/requires: src/server/CMakeFiles/ChatServer.dir/model/group.cpp.o.requires
src/server/CMakeFiles/ChatServer.dir/requires: src/server/CMakeFiles/ChatServer.dir/redis/redis.cpp.o.requires
.PHONY : src/server/CMakeFiles/ChatServer.dir/requires

src/server/CMakeFiles/ChatServer.dir/clean:
	cd /home/wjh/chat_prj/build/src/server && $(CMAKE_COMMAND) -P CMakeFiles/ChatServer.dir/cmake_clean.cmake
.PHONY : src/server/CMakeFiles/ChatServer.dir/clean

src/server/CMakeFiles/ChatServer.dir/depend:
	cd /home/wjh/chat_prj/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wjh/chat_prj /home/wjh/chat_prj/src/server /home/wjh/chat_prj/build /home/wjh/chat_prj/build/src/server /home/wjh/chat_prj/build/src/server/CMakeFiles/ChatServer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/server/CMakeFiles/ChatServer.dir/depend

