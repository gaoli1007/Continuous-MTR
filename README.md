# Continuous-MTR
#Continuous-MTR

Backgroud:

These bash scripts are used to set up continuous MTR
Sometimes when the packet loss happened in short period it is hard for us to record the MTR result on time
So for critical project we may need set up continuous MTR on server to make sure can capture the connection issue on time

There are three bash scripts/files needed：

1. ping_host.sh: Record the target IP we need to record the MTR result
2. run_mtr.sh: Read the ping_host line by line and pass the IP to mtr_record.sh to do the MTR command 
3. mtr_record.sh: Run the MTR command base on the IP and record into certain files.

Other requirement:

1. After upload the three scripts above, you need to add crontab for run_mtr.sh (every min to run or every 5 min)
2. You can install the nginx on the server and locate to the output file for easy reading.
