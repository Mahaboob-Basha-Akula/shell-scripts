#!/bin/bash

Start_Time=$(date )
End_Time=$(date )
Exe_time=$(Total_Time)

echo "$Start_Time"

echo "script execution started "


sleep 10s

echo "$End_Time"

Total_Time=$(($End_Time-$Start_Time))


echo "Timestamp : $Exe_time"