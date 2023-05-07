#!/bin/bash

if [[ "$#" -ne 2 ]]; then
	echo "Incorrect number of arguments, give exactly two arguments"
	exit 1
fi

if ! [[ "$1" =~ ^[0-9]+$  ]] || ! [[ "$2" =~ ^[0-9]+$ ]]; then
	echo "Both arguments must be whole numbers"
	exit 1
fi

if [[ "$1" -lt "$2"  ]]; then
	echo "-1"
elif [[ "$1" -gt "$2"  ]]; then
	echo "1"
else
	echo "0"
fi
