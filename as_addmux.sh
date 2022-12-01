#! /bin/bash

SUM=`expr $1 + $2`
echo "sum of numbers is $SUM"

if [ $1 -gt $2 ];
then
	SUB=`expr $1 - $2`
	DIV=`expr $1 / $2`
else
	SUB=`expr $2 - $1`
	DIV=`expr $2 / $1`
fi
echo "substration of number is $SUB"
MUX=`expr $1 \* $2`
echo "multiplication of  number is $MUX"

echo "division of numbers is $DIV"
