#! /bin/bash

echo "enter the number"
read NUM

A=0
B=1
COUNT=2
echo "fibanacci series"
echo $A
echo $B
while [ $COUNT -le $NUM ]
do
	FIB=`expr $A + $B`
	A=$B
	B=$FIB
	echo $FIB
	COUNT=`expr $COUNT + 1`
done
