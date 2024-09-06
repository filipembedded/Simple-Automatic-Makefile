########################### SIMPLE AUTOMATIC MAKEFILE ##########################
# This is the Simple Automatic Makefile! Put your source files into Core/src and
# your header files into the Core/inc directory. If you want to have sepparate 
# directory for your sources and includes, you need to make your implementation
# of this Makefile. This is a simple Makefile, made for simple projects :)
# Author: filipembedded
################################################################################

# Compiler
CC = gcc
# Compiler flags
CFLAGS = -Wall -g

# Paths
SOURCES_PATH = Core/src
INCLUDE_PATH = Core/inc
TARGET_PATH = build

# Sources 
SOURCES = $(wildcard $(SOURCES_PATH)/*.c)

# Objects
OBJECTS = $(patsubst $(SOURCES_PATH)/%.c, $(TARGET_PATH)/%.o, $(SOURCES))

# Target executable named 'program'
TARGET = program

# Link object files into executable
$(TARGET_PATH)/$(TARGET) : $(OBJECTS) # This line is improved
	@echo "Linking object files into target executable:"
	$(CC) $(CFLAGS) -o $@ $^

# Compile source files into object files
$(TARGET_PATH)/%.o : $(SOURCES_PATH)/%.c
	@echo "Compiling $< file:"
	mkdir -p $(TARGET_PATH)
	$(CC) $(CFLAGS) -I$(INCLUDE_PATH) -c $< -o $@

# Clean target
.PHONY: clean
clean:
	rm -f $(TARGET) $(OBJECTS)
	rm -r $(TARGET_PATH)

# Run executable target
.PHONY: run
run:
	@build/program

