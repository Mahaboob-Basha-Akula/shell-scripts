#!/bin/bash


ID=$(id -u)

if [ $ID -ne 0 ]; then
    echo "The script needs to run with root privilages"
    
fi

dnf install mysql -y

if [ $? -ne 0]; then
    echo "Installing mysql is success"

else
    echo "Installation of mysql is failed"

fi

