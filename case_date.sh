#! /bin/bash

DAY=`date +%a | tr '[:lower:]'  '[:upper:]'`
TODAY=`date '+%Y%m%d'`
FILE_PATH="/home/ec2-user/SHELL_SCRIPTS"

case $DAY in
	MON) 
		echo "TAKING BACKUP OF ACCESS AND ERROR LOG FILES"
		cp $FILE_PATH/access_log $FILE_PATH/access_log-${TODAY}
		cp $FILE_PATH/error_log $FILE_PATH/error_log-${TODAY}
		;;

	TUE|WED)

		echo "COPYING ACCESS AND ERROR LOG FILES /temp"
		cp $FILE_PATH/access_log /tmp/access_log-${TODAY}
		cp $FILE_PATH/error_log /tmp/error_log-${TODAY}
		;;

	THU|FRI)

		echo "RENAMING ACCESS AND ERROR LOG FILES"
		mv $FILE_PATH/access_log $FILE_PATH/access_log-${TODAY}
		mv $FILE_PATH/error_log $FILE_PATH/error_log-${TODAY}
		;;

	SAT|SUN)

		echo "deleting the logs files"
		cd $FILE_PATH
		rm *log
		;;
esac
