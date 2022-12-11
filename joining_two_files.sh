#! /bin/bash

echo "enter one file"
read A
echo "enter another file"
read B

J=`paste  $A  $B`
echo "Both files are"
echo $J
