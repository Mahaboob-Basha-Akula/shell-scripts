#!/bin/bash

# Start_Time=$(date +%s)
# End_Time=$(date +%s )


# Start_Time=$(date +%s)

# echo "script execution started "


# sleep 20

# End_Time=$(date +%s )

# Total_Time=$(($End_Time-$Start_Time))


# echo "Timestamp : $Total_Time in seconds"

echo "All variable used are: $@"

echo "script name is: $0"

echo "pwd is: $PWD"

echo "current user: $USER"

echo "location: $HOME"

echo "PID is : $$"

sleep 5&

echo "PID of last command in background is :$! "