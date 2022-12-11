#! /bin/bash

NUM=$1
SUM=0

while [ $NUM -gt 0 ];
do
	SUM=`expr $SUM + $NUM`
	NUM=`expr $NUM - 1`
done
echo "sum of numbers is $SUM"
