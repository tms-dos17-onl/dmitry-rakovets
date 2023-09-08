#!/bin/bash

num=$1

case $num in
"$([[ $num =~ ^[0-9]+$ ]])")
	echo "Введите число!"
	;;
*)
	[[ $(("$1" % 2)) -eq 0 ]] && echo "Чётное" || echo "Не чётное"
	;;
esac