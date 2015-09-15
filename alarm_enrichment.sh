##
## Author: YeongWei
## Last Updated: 2015.09.15
##

#!/bin/bash

LOG_DIR="/tmp/"
LOG_FILE=$LOG_DIR
LOG_FILE+="alarm_enrichment.log"

ARGS=("$@")

# echo ${#ARGS[@]}# length of array

# consolidate input arguements
INPUT=""
for i in ${ARGS[@]}; do
	#echo $i;
	INPUT=$INPUT::$i;
done;
# echo `date` $INPUT >> $LOG_FILE;

# Printing input arguement as it is
echo `date` "Received: " $@ >> $LOG_FILE;

JAVA="/appl/virtuo/jre/bin/java"
JARS=("TestForwarder.jar")
CLS_PATH="/var/tmp/alarm_enrichment/"

FULL_CLS_PATH=""
for j in ${JARS[@]}; do
	FULL_CLS_PATH+=$CLS_PATH
	FULL_CLS_PATH+=$j:
done;
# echo $FULL_CLS_PATH

JAVA_UTIL_LOGGING_FILE="/var/tmp/alarm_enrichment/logging.properties"
JVM_LOGGING+="-Djava.util.logging.config.file="
JVM_LOGGING+=$JAVA_UTIL_LOGGING_FILE

JVM_MAIN_CLS="com.psl.TestForwarder"
JVM_ARG=$JVM_LOGGING

# $JAVA -version
CMD=$JAVA
CMD+=" -cp "$FULL_CLS_PATH
CMD+=" "$JVM_ARG
CMD+=" "$JVM_MAIN_CLS
CMD+=" "$@

eval $CMD
