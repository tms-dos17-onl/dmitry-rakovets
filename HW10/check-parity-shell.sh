#!/bin/sh

if [ $(expr "$1" % "2") -eq 0 ]; then
	echo "$1: Четное"
elif [ $(expr "$1" % "2") -ne 0 ]; then
	echo "$1: Не четное"
else
	echo "Введите число!"
	echo 1
fi