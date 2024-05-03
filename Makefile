# Tool definitions 
CC ?= gcc
CXX ?= g++

#settings
SRC_DIR = ./src
TEST_DIR = ./tests
BUILD_DIR = .
NAME = app.elf

# Search for the header files 
CFLAGS += -I$(SRC_DIR)/addition

# List the module scource file 
CSOURCES = $(SRC_DIR)/main.c
CSOURCES += $(wildcard $(SRC_DIR)/addition/*.c)

# Compiler flag 
CFLAGS += -Wall

# Linker Flags
LDFLAGS += 

#Generate names for output object file (*.o)
COBJECTS = $(patsubst %.c, %.o, $(CSOURCES))

# Default rules for building application 
.PHONY: all
all: $(NAME)

#Building individual components 
$(COBJECTS) : %.o : %.c
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@
	
# Build the target application
.PHONY: $(NAME)
$(NAME): $(COBJECTS)
	$(CC) $(COBJECTS) -o $(BUILD_DIR)/$(NAME) $(LDFLAGS)
	
# Remove compiled object files 
.PHONY: clean
clean:
	rm -f $(COBJECTS)
	
# Run tests
.PHONY: test
test:
	make -C $(TEST_DIR)
	
#Clean the tests 
.PHONY: test_clean
test_clean:
	make -C $(TEST_DIR) clean
