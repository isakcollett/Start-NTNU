#!/bin/sh

# get rid of the cursor so we don't see it when videos are running
setterm -cursor off

# set here the path to the directory containing your videos
VIDEOPATH="/home/start/videos" 

# you can normally leave this alone
SERVICE="omxplayer"

# counting the video number
count=0

# sleep path
SLEEP="/bin/sleep"

# now for our infinite loop!
while true; do
        if ps ax | grep -v grep | grep $SERVICE > /dev/null
        then
        $SLEEP 1;
else
        for entry in $VIDEOPATH/*
        do
                clear
		count=$((count+1))
		VIDEO=${entry##*/}
		echo Video number $count, currently playing $VIDEO
                omxplayer $entry > /dev/null
        done
fi
done
