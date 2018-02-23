#!/bin/bash

# $1 - nazwa programu ktory bedzie nadzorowany
# $2 - nazwa pliku do ktorego zostanie zrobiony log

DATE=`date '+%Y-%m-%d %H:%M:%S'`
echo "************************************" >> $2
echo "******* START Debug Session ********" >> $2
echo "****** " $DATE " *******" >> $2
echo "************************************" >> $2
printf "\n" >> $2

gdb -q -batch -ex run $1 >> $2 \
	      -ex bt >> $2

DATE=`date '+%Y-%m-%d %H:%M:%S'`
printf "\n" >> $2
echo "************************************" >> $2
echo "******* STOP Debug Session ********" >> $2
echo "****** " $DATE " *******" >> $2
echo "************************************" >> $2
printf "\n\n\n\n" >> $2

