#!/bin/bash

if [[ $# == 0 ]]; then
	echo "Формат: ./expand-variables.sh [-f <FILE>] <KEY_VALUE_PAIR> ..."
	exit 1
fi

if [[ $1 != "-f" ]]; then
	echo "Должен быть формат -f имя файла"
	exit 1
fi

if [[ $2 == 0 ]]; then
	echo "Должен быть формат -f ./имя файла"
	exit 1
fi

PARAM=()
count=1
for param in "$@"; do
	if [[ $count -lt 3 ]]; then
		count=$(($count + 1))
	else
		PARAM+=("$param")
		count=$(($count + 1))
	fi
done

for item in ${PARAM[@]}; do
	export $item
done

envsubst <$2