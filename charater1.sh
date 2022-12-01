#! /bin/bash

echo "enter the string"
read STR
echo "enter from which prosition"
read START
echo "enter where to end"
read END
SUB_STR=${STR:$START:$END}
echo "$SUB_STR"
