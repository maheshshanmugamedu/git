#!/bin/bash

# File to modify
FILE="input.txt"

# Using awk to replace 'give' with 'learning' from the 5th line onward in lines containing 'welcome'
awk 'NR < 5 { print; next } /welcome/ { gsub(/give/, "learning") } { print }' "$FILE" > temp.txt && mv temp.txt "$FILE"

