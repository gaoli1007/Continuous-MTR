#!/bin/bash

IP=$1

#Check the passed value from run_mtr is valid or not
if [ "$#" -ne 1 ]
then
        echo "Please specify target IP"
        exit 1
fi

#Check is there a file to record the MTR result for certain IP

if [ ! -d output/$IP ]
then
        mkdir output/$IP
fi

#Each day one file to record the whole day MTR result
target_file=output/$IP/$(date +%Y%m%d)
echo `date`>>$target_file
mtr -w -c 10 $IP >>$target_file
#some of the system version not support -w then can use --report instead
echo "==========================================================">>$target_file