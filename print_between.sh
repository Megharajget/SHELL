#! /bin/bash

echo "using AWK"


A=`cat /home/ec2-user/SHELL_SCRIPTS/ip | awk '/webserver/{ f=1; next } /appserver/{f=0}f'`
echo "$A"

echo "using sed"

B=`cat /home/ec2-user/SHELL_SCRIPTS/ip | sed -n '/webserver/,/appserver/{ /webserver/! { /appserver/! p } }'`
echo "$B"
