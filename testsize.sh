#!/bin/bash

##12 -> 36x64
##4  -> 114 210
##m  -> 57x210 & l -> 18 x64

. changefont.sh 4
sleep 0.2
resize -s 80 150
sleep 1
. changefont.sh 12
sleep 0.2
resize -s 30 60
