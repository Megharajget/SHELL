#! /bin/bash

for i in $*
do
	FACT=1
	NUM=$i
	VAR=$i
	while [ $NUM -gt 1 ];
	do
		FACT=`expr $FACT \* $NUM`
		NUM=$(( $NUM - 1))
	done 
	echo " factorial of $VAR is $FACT"
done
