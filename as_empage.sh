#! /bin/bash


while read line
do
	AGE=`echo $line | awk -F ":" '{print $3}'`
	if [ $AGE -gt 30 ]
	then
		NAME=`echo $line | awk -F " " '{print $1}'`
		echo "$NAME"
	fi
done < /home/ec2-user/SHELL_SCRIPTS/EMP
