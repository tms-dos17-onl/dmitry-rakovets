#!/bin/bash

os=("Windows" "Linux" "MacOS")
arch=("x86" "x64" "arm" "x86_64")

for i in "${os[@]}"; do
	for j in "${arch[@]}"; do
		echo "$i" - "$j"
	done
done