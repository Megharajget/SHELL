#! /bin/bash

for i in $*
do
	SUM=`expr $SUM + $i`
done
echo "sum fo this numbers is $SUM"
