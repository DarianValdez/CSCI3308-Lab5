#!/bin/bash
#Darian Valdez

FILE=$1
while read -a rows
do
	score=0
	total=0
	for i in "${rows[@]}"
	do
		total=`expr $total + 1`
		if [ $total -gt 3 ]
		then
			score=`expr $score + $i`
		fi
	done
	score=`expr $score / 3`
	echo "$score [${rows[0]}] ${rows[2]}, ${rows[1]}"
done < $FILE | sort -k3,3 -k 4,4
