#! /bin/bash

echo "enter the number"
read NUM
for i in $(seq 1 $NUM)
do
	for j in $(seq 1 $i)
	do
		echo -n $j
	done
	echo
done
