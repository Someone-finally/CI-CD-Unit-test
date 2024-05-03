# Name of the component under test 
COMPONENT_NAME = addition

#dynamically genarate absolute path 

MAKEFILE_DIR = $(dir $(realpath $(firstword $(MAKEFILE_LIST))))
PROJECT_DIR = $(realpath $(MAKEFILE_DIR)../..)
SRC_DIR = $(PROJECT_DIR)/src
TEST_DIR = $(PROJECT_DIR)/tests

# Location of the CppUTest (if not set)
CPPUTEST_HOME ?= $(PROJECT_DIR)/tools/cpputest

# include and source files for the component under test
INCLUDE_DIRS = $(SRC_DIR)/$(COMPONENT_NAME)
SRC_DIRS = $(SRC_DIR)/$(COMPONENT_NAME)

# include the CPPUTEST header files 
INCLUDE_DIRS += $(CPPUTEST_HOME)/include

# Directories containing the unit test
TEST_SRC_DIRS = $(TEST_DIR)/$(COMPONENT_NAME)

# Run the makefileworker.mk with the variables set in the makefile 
include $(CPPUTEST_HOME)/build/MakefileWorker.mk