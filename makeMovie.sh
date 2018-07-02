#!/bin/bash
w=$1
h=$2
rm output/*
num=0
for img in data/*; do
	printf -v numf "%05d" $num
	((num+=1))
	n="output/$name$numf.txt"
	python3 convert.py $img -o $n --width $w --height $h
done
