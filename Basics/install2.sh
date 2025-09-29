#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "This user need root previlages to run the command "
    exit 1
fi

