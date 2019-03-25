#!/bin/bash

makeFileName="Makefile"
PWD=$1
cd "$PWD"
depth=0

while [[ ! -f "$makeFileName" ]]
do
	cd ..
	depth=$depth+1
	if [[ $depth -gt 7 ]]
	then break
	fi
done

if [[ $depth -gt 7 ]]; then
	echo "ERROR --> no make file"
else
	make $2
fi

echo "Compiled Dir is : $PWD"