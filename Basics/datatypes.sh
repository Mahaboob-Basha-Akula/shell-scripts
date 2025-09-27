#!/bin/bash

NUMBER1=100
NUMBER2=200

SUM=$(($NUMBER1+$NUMBER2))

echo "$SUM"

LEADERS=("BASHA" "SHAHID" "JAHID")

echo "All leaders are ${LEADERS[@]}"

echo "Frist person is : ${LEADERS[0]}"