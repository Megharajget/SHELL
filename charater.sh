#! /bin/bash

STR="HELLOHOWAREYOU"
SUB_STR=${STR:$1:$2}
echo "$SUB_STR"
