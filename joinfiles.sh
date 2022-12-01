#! /bin/bash

FILE_PATH="/home/ec2-user/SHELL_SCRIPTS"

(while IFS= read -r a <&6 && IFS= read -r b <&7;
do
	echo "$a"
	echo "$b"
done)6<${FILE_PATH}/join1.csv  7<${FILE_PATH}/join2.csv
