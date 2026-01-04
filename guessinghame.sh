count_files() {
    echo $(ls -1 | wc -l)
}


prompt_guess() {
    read -p "Guess the number of files in the current directory: " guess
}

echo "Welcome to the Guessing Game!"
echo "Try to guess how many files are in the current directory."

file_count=$(count_files)
guess=-1

while [ "$guess" -ne "$file_count" ]; do
    prompt_guess
    if [ "$guess" -lt "$file_count" ]; then
        echo "Too low! Try again."
    elif [ "$guess" -gt "$file_count" ]; then
        echo "Too high! Try again."
    else
        echo "Congratulations! You guessed the correct number of files: $file_count"
    fi
done
