# Heatmap Demo Script

This repository contains a Bash script that demonstrates the use of associative arrays (hashmaps) in Bash. The script showcases operations such as adding, updating, removing, and clearing hashmap entries.

## Features

- **Declare and initialize a hashmap**: Populate it with key-value pairs.
- **Access specific values**: Retrieve values using their keys.
- **Iterate through the hashmap**: Loop over keys and values.
- **Count entries**: Determine the total number of key-value pairs.
- **Update values**: Modify existing key-value pairs.
- **Remove entries**: Delete specific entries from the hashmap.
- **Clear the hashmap**: Reset the hashmap entirely.

## Script

```bash
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
```

## How to Use

### Clone the Repository

```bash
git clone https://github.com/tutut834834/heatmap_demo.git
cd heatmap_demo
```

### Make the Script Executable

```bash
chmod +x heatmap_demo.sh
```

### Run the Script

```bash
./heatmap_demo.sh
```

## Example Output

When you run the script, you should see the following output:

```
Heat level in the north: high
Heatmap regions and levels:
Region: east, Heat level: low
Region: south, Heat level: medium
Region: north, Heat level: high
Region: west, Heat level: high
Total regions: 4
Updated heat level in the south: low
Removed 'west' region. Current heatmap:
Region: east, Heat level: low
Region: south, Heat level: low
Region: north, Heat level: high
Cleared all regions. Total regions: 0
```

## License

This script is provided for demonstration purposes. Feel free to modify and use it as needed.
