#!/bin/sh

if [ $# -eq 0 ]
then
	echo "you should input the file name"
	exit 0
fi
cat $1
