#! /bin/bash

echo "enter the name"
read NAME

if [ -f $NAME ];
then 
	echo "$(<$NAME)"
elif [ -d $NAME ];
then
	find . NAME
	echo "the content of directory are $find"
else
	echo "enter only file or directory"
fi
