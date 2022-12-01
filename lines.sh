#! /bin/bash

echo "using AWK"


A=`cat /home/ec2-user/SHELL_SCRIPTS/ip | awk '/webserver/,/appserver/'`
echo "$A"

echo "using sed"

B=`cat /home/ec2-user/SHELL_SCRIPTS/ip | sed -n '/webserver/,/appserver/p'`
echo "$B"
