#! /bin/bash

echo "Ascending order is"
for i in $( echo "$*" | tr ' ' '\n' | sort )
do
	echo "$i"
done

echo "Descending order is"
for i in $( echo "$*" | tr ' ' '\n' | sort -r)
do 
	echo "$i"
done
