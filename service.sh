#! bin/bash

echo "enter the name of service"
read NAME
VAR=$(ps -ef | grep -i $NAME | grep -v "grep" | wc -l)

if [ "$VAR" -gt 0 ];
then
	echo "service is running"
else
	echo "service is not running"
fi
