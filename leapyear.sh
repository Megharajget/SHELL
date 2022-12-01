#! /bin/bash

echo "enter the year"
read YEAR

Y=$(( $YEAR % 4 ))

if [ $Y -eq 0 ];
then
	echo "$YEAR is a leap year"
else
	echo "$YEAR is a not a lap year"
fi
