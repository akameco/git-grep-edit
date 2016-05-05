#!/bin/bash

P=$(git grep -n $1 | peco | awk -F: '{print "+"$2" "$1}')
if [ ${#P} -ne 0 ]; then
	$EDITOR $P;
fi
