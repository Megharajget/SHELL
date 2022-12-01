#! /bin/bash

echo "enter the name"
read NAME

if [ -L $NAME ];
then
	echo "$NAME is a Link"
elif [ -f $NAME ];
then 
	echo "$NAME is a file"
elif [ -d $NAME ];
then 
	echo "$NAME is a directory"
else
	echo "$NAME not exist"
fi
