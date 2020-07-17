echo "# Guessing Game" > README.md
echo "## Bash,Make,Git,andGitHub" >> README.md
date "+Date: %Y-%m-%d, Time: %H:%M:%S%n" >> README.md
echo "Lines of code in guessinggame.sh:" >> README.md
wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
