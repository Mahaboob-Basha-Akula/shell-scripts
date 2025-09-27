#!/bin/bash

# Start_Time=$(date +%s)
# End_Time=$(date +%s )


Start_Time=$(date +%s)

echo "script execution started "


sleep 20

End_Time=$(date +%s )

Total_Time=$(($End_Time-$Start_Time))


echo "Timestamp : $Total_Time in seconds"

echo "All variable used are $@"