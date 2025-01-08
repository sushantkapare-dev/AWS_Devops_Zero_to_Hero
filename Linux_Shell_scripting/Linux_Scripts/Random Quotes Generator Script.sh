#!/bin/bash
quotes=("Quote 1" "Quote 2" "Quote 3" "Quote 4")
# Generate and display a random quote from the array
random_index=$((RANDOM % ${#quotes[@]}))
echo "Random Quote: ${quotes[$random_index]}"
