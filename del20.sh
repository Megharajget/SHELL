#! /bin/bash

DIR_PATH="/home/ec2-user/SHELL_SCRIPTS/AA"
TOTAL=`ls ${DIR_PATH} | wc -l`
DEL=`expr $TOTAL - 20`
if [ $DEL -gt 0 ];
then
	cd $DIR_PATH
	ls -rt | head -${DEL} | xargs rm
	echo "number of files"
	ls | wc -l
fi
