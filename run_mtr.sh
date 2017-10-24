#!/bin/bash
#read the line of the ping_host and pass to mtr_record.sh to do the mtr and the recording

while read line
do
	[[ $line = \#* ]] && continue
	./mtr_record.sh $line &
done <ping_host

