#!/bin/bash

Start_Time=$(date +%s)
End_Time=$(date +%s )


echo "$Start_Time"

echo "script execution started "


sleep 20s

echo "$End_Time"

Total_Time=$(($End_Time-$Start_Time))


echo "Timestamp : $Total_Time in seconds"