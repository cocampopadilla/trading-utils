# ChatGPT helped generate this makefile
# Compiler and flags
CXX = g++
CXXFLAGS = -Wall -Wextra -g -Iinclude

# Directories
SRC_DIR = src
BUILD_DIR = build
INCLUDE_DIR = include

# Sub-projects
MARKET_DATA_COLLECTOR = market_data_collector.cpp
# You can define more sub-projects here
# PLACE_HOLDER_PROJECT = place_holder_project.cpp

# Build and link individual sub-project (market_data_collector)
$(BUILD_DIR)/market_data_collector: $(SRC_DIR)/$(MARKET_DATA_COLLECTOR)
	@mkdir -p $(BUILD_DIR)
	$(CXX) $(CXXFLAGS) $< -o $@ -I$(INCLUDE_DIR)
	@echo "Built: $@"

# Define other sub-projects here
# $(BUILD_DIR)/place_holder_project: $(SRC_DIR)/$(PLACE_HOLDER_PROJECT)
#	@mkdir -p $(BUILD_DIR)
#	$(CXX) $(CXXFLAGS) $< -o $@ -I$(INCLUDE_DIR)
#	@echo "Built: $@"

# Specific target to build market_data_collector
market_data_collector: $(BUILD_DIR)/market_data_collector

# Default rule (build all sub-projects)
all: \
	$(BUILD_DIR)/market_data_collector
	# Uncomment below to build other projects
	# $(BUILD_DIR)/place_holder_project

# Clean the build directory
clean:
	@rm -rf $(BUILD_DIR)
	@echo "Cleaned build directory."

# Phony targets
.PHONY: all clean
