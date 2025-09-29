#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "This user need root previlages to run the command "
    exit 1
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "The installaion is failed "

    exit 1

else 
    echo "install completed "

 fi   



