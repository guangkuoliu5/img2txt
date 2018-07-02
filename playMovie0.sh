#!/bin/bash
root=/home/logtenk/Desktop/img2txt/
cd $root
. changefont.sh 4
resize -s 80 150
dur=0.05
for f in output0/*; do
	clear
	#sleep $dur
	#printf '\033c'
	cat $f
	sleep $dur
done
sleep 0.01
#clear
#resize -s 36 72
#sleep 1
. changefont.sh 12
sleep 0.2
#clear
resize -s 30 60
clear
resize -s 30 60
clear
resize -s 30 60
clear
. changefont.sh 12
clear
. changefont.sh 12
clear
cat last.txt
