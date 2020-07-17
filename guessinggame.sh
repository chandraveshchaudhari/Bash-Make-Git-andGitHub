#!/bin/bash bash
# File: guessinggame.sh

function Question {
echo "how many files are in the current directory?"
}

Question

FilesNo=$(pwd | ls | wc -l)

until [[ $Answer -eq $FilesNo ]]; 
do
	read Answer
	if [[ $Answer -gt $FilesNo ]]
	then
		echo "You entered $Answer, which is too high than the mystery number, try again"
	elif [[ $Answer -lt $FilesNo ]]
	then
		echo "You entered $Answer, which is too low than the mystery numner, try again"
	fi
done

echo "Bravo, You have guessed the correct number of files: $Answer"
echo "End Program."
