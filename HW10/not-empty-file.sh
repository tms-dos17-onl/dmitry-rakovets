#!/bin/bash

index=0
while read line; do
	array[$index]="$line"
	index=$(($index + 1))
done

for ((a = 0; a < ${#array[*]}; a++)); do
	if test -s ${array[$a]}; then
		echo ${array[$a]}
	fi
done