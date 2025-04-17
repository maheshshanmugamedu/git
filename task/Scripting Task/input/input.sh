#!/bin/bash

# File to modify
FILE="input.txt"

# Using sed to replace 'give' with 'learning' from the 5th line onward in lines containing 'welcome'
sed -i '5,$ {/welcome/s/give/learning/g}' "$FILE"

