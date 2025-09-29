#!/bin/bash

ID=$( id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"


if [ $ID -ne 0 ]; then 
    echo "Root access reuqired"
    exit 1
fi

VALIDATE(){
    if [ $? -ne 0 ]; then
        echo -e "$2 installation \e[32m failed "
        exit 1

    else 
        echo -e "$2 installation is   \e[32m success"

    fi


}

dnf install nginx -y
VALIDATE $? "nginx"

dnf install python3 -y
VALIDATE $? "python3"

