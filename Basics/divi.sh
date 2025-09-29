#!/bin/bash

NUMBER=$1

echo "Please enter the number"
read NUMBER

if [ $(($NUMBER & 2)) -eq 0 ]; then
    echo "The given $NUMBER is even number"

else 
    echo "The given $NUMBER is odd number"

fi     