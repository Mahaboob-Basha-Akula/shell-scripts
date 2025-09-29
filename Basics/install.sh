#!/bin/bash


ID=$(id -u)

if [ $ID -ne 0 ]; then
    echo "The script needs to run with root privilages"
    exit 1
    
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "Installation of mysql is failed"
    exit 1 

else
    echo "Installation of mysql is success"

fi

