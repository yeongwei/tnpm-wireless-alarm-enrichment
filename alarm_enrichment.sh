#!/bin/bash

LOG_DIR="/tmp/"
LOG_FILE=$LOG_DIR"alarm_enrichment.log"

ARGS=("$@")

# echo ${#ARGS[@]}# length of array

# consolidate input arguements
INPUT=""
for i in ${ARGS[@]}; do
	#echo $i;
	INPUT=$INPUT::$i;
done;

#echo `date` $INPUT >> $LOG_FILE;

# Printing input arguement as it is
echo `date` $@ >> $LOG_FILE;
