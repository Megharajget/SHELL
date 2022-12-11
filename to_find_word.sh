#! /bin/bash

echo "find the file"
read file
echo "word to find"
read WORD
F1=`ls $file | grep $WORD`
for A in $F1
do
	echo $A
done
