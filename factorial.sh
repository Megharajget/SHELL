#! /bin/bash

echo "enter the number"
read NUM
VAR=$NUM
FACT=1

while [ $NUM -gt 1 ];
do
       FACT=`expr $FACT \* $NUM`
       NUM=`expr $NUM - 1`
done
echo "factorial of $VAR is $FACT"
