#!/bin/bash
echo $1

DATE=`date '+%Y-%m-%d %H:%M:%S'`

echo "************************************" >> log.txt
echo "******* START Debug Session ********" >> log.txt
echo "****** " $DATE " *******" >> log.txt
echo "************************************" >> log.txt
printf "\n" >> log.txt

gdb -q -batch -ex run $1 >> log.txt

printf "\n" >> log.txt
echo "************************************" >> log.txt
echo "******* STOP Debug Session ********" >> log.txt
echo "************************************" >> log.txt
printf "\n\n\n\n" >> log.txt

