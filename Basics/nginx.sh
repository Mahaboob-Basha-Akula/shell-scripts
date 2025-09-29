#!/bin/bash

ID=$( id -u)

if [ $ID -ne 0 ]; then 
    echo "Root access reuqired"
    exit 1
fi

VALIDATE(){
    if [ $? -ne 0 ]; then
        echo "$2 installation failed "
        exit 1

    else 
        echo "$2 installation is  -e \e[32m success"

    fi


}

dnf install nginx -y
VALIDATE $? "nginx"

dnf install python3 -y
VALIDATE $? "python3"

