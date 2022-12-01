#! /bin/bash

for i in $( echo "$*" | tr ' ' '\n' | sort -r)
do
	echo "$i"
done

VAR= `head -2 $i | tail -1`
echo "$VAR"
