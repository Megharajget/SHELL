#! /bin/bash

echo -n "enter the number  "
read VAR

case $VAR  in
	1) 
		echo "ONE"
		;;
	2) 
		echo "TWO"
		;;
	3)
		echo "THREE"
		;;
	4)
		echo "FOUR"
		;;
	*)
		echo "NO INPUT"
		;;
esac
