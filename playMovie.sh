#!/bin/bash
root=/home/logtenk/Desktop/img2txt/
cd $root
#. changefont.sh 4
#resize -s 80 150
. changefont.sh 12
resize -s 30 60
dur=0.01
for f in output/*; do
	clear
	#sleep $dur
	#printf '\033c'
	cat $f
	sleep $dur
done
#clear
#resize -s 36 72
#sleep 1
#cat last.txt
