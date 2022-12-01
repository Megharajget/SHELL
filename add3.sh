#! /bin/bash

echo "enter numbers"
read NUM1 NUM2 NUM3

SUM=`expr $NUM1 + $NUM2 + $NUM3`

echo "sum of the number is $SUM"
