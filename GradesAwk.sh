#!/bin/bash
#Darian Valdez

FILE=$1
awk '{ sum = 0; sum+=$4; sum+=$5; sum+=$6; print int(sum/3) " ["$1"] " $3", "$2}' $FILE | sort -k3,3 -k 4,4