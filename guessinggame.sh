#!/bin/bash

# Function to count the number of files in the current directory
count_files() {
    local count=$(ls -l | grep -v ^total | wc -l)
    echo "$count"
}

# Main game loop
correct_count=$(count_files)
guessed=false

while [ "$guessed" = false ]; do
    echo "Guess the number of files in the current directory:"
    read user_guess

    if [[ $user_guess -lt $correct_count ]]; then
        echo "Your guess is too low."
    elif [[ $user_guess -gt $correct_count ]]; then
        echo "Your guess is too high."
    else
        echo "Congratulations! You guessed correctly. There are $correct_count files in the current directory."
        guessed=true
    fi
done
