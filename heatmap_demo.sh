#!/bin/bash

# Declare an associative array (hashmap)
declare -A HEATMAP

# Add key-value pairs to the hashmap
HEATMAP["north"]="high"
HEATMAP["south"]="medium"
HEATMAP["east"]="low"
HEATMAP["west"]="high"

# Print a single value
echo "Heat level in the north: ${HEATMAP["north"]}"

# Iterate over keys and values
echo "Heatmap regions and levels:"
for region in "${!HEATMAP[@]}"; do
  echo "Region: $region, Heat level: ${HEATMAP[$region]}"
done

# Count the total number of regions
echo "Total regions: ${#HEATMAP[@]}"

# Update a value
HEATMAP["south"]="low"
echo "Updated heat level in the south: ${HEATMAP["south"]}"

# Remove an entry
unset HEATMAP["west"]
echo "Removed 'west' region. Current heatmap:"
for region in "${!HEATMAP[@]}"; do
  echo "Region: $region, Heat level: ${HEATMAP[$region]}"
done

# Clear the entire hashmap
unset HEATMAP
echo "Cleared all regions. Total regions: ${#HEATMAP[@]}"

