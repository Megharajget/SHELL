#! /bin/bash


echo "enter one file"
read A
echo "enter another file"
read B

J=`cat $A $B`
echo "both files are"
echo $J
