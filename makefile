#!/usr/bin/env bash

touch README.md
echo "# Peer-graded Assignment: Bash, Make, Git, and GitHub" >> README.md
dateNow=$(date +%c)
echo "makefile was run on $dateNow " >> README.md
numL=$(wc guessinggame.sh -l)
echo "The number of code-lines in guessinggame.sh. is $numL" >> README.md

