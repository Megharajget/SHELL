#! /bin/bash

COUNT=1

while read LINE
do
	WORDS=`echo $LINE | wc -w`
	CHAR=`echo $LINE | wc -c`
	echo " line number $COUNT word count is $WORDS and charater count is $CHAR "
	COUNT=`expr $COUNT + 1`
done < $1
