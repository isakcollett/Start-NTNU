#!/bin/sh

SLEEP="/bin/sleep"

PATH="/home/start/videos"
count=0
while true
do
for entry in $PATH/*
do
	count=$((count+1))
	echo $count
	VIDEO=${entry##*/}
	#echo $VIDEO
	$SLEEP 2
done
done
