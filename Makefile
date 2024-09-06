########################### SIMPLE AUTOMATIC MAKEFILE ##########################
# This is the Simple Automatic Makefile! Put your source files into Core/src and
# your header files into the Core/inc directory. If you want to have separate 
# directory for your sources and includes, you need to make your implementation
# of this Makefile. This is a simple Makefile, made for simple projects :)
# Author: filipembedded
################################################################################

# Compiler
CC = gcc

# Linker
LD = gcc

# Paths
SOURCES_PATH = Core/src
INCLUDE_PATH = Core/inc
LIBRARY_PATH = Core/lib
TARGET_PATH = build

# Sources 
SOURCES = $(wildcard $(SOURCES_PATH)/*.c)

# Objects
OBJECTS = $(patsubst $(SOURCES_PATH)/%.c, $(TARGET_PATH)/%.o, $(SOURCES))

# Libraries
LIBRARIES = $(wildcard $(LIBRARY_PATH)/*.a)

# Target executable named 'program'
TARGET = program

# Compiler flags
CFLAGS = -I$(INCLUDE_PATH) -Wall -g

# Link object files into executable
$(TARGET_PATH)/$(TARGET) : $(OBJECTS) $(LIBRARIES) # This line is improved
	@echo "Linking object files into target executable:"
	$(LD) $^ -o $@

# Compile source files into object files
$(TARGET_PATH)/%.o : $(SOURCES_PATH)/%.c build_dir
	@echo "Compiling $< file:"
	$(CC) $(CFLAGS) -c $< -o $@

# Create build directory
build_dir:
	mkdir -p $(TARGET_PATH)

# Clean target
.PHONY: clean
clean:
	rm -rf $(TARGET_PATH)

# Run executable target
.PHONY: run
run:
	@build/program

