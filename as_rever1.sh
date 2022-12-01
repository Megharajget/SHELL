#! /bin/bash

echo "enter the word"
read WORD
A=$(rev <<< "$WORD")
echo "revered word is "
echo "$A"
