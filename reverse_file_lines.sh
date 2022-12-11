#! /bin/bash

LINE=`cat $1 | wc -l`

while [ $LINE -gt 0 ] ;
do
	head -$LINE $1 | tail -1
	LINE=`expr $LINE - 1`
done
