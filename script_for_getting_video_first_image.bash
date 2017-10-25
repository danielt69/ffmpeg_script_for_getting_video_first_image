#!/bin/bash
ls -1 *.mp4 | while read LINE;
do
	echo $LINE
	ffmpeg/bin/ffmpeg.exe -n -i "$LINE" -frames 1 -ss 4 "$LINE".jpeg
done