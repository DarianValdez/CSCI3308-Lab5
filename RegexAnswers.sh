#!/bin/bash
#Darian Valdez

FILE=$1

grep -P '[0-9]$' $FILE | wc -l
grep -P '^(?![aAeEiIoOuU]).{1,}' $FILE | wc -l
grep -P '^[a-zA-Z]{12}$' $FILE | wc -l
grep -P '^[0-9]{3}-[0-9]{3}-[0-9]{4}$' $FILE | wc -l
grep -P '^303-[0-9]{3}-[0-9]{4}$' $FILE | wc -l
grep -P '^[aAeEiIoOuU].*[0-9]$' $FILE | wc -l
grep -P 'geocities\.com$' $FILE | wc -l
grep -P '^[a-mA-M][a-zA-z]*\.[a-zA-z]*@[a-zA-z]*\.[a-zA-z]*' $FILE | wc -l