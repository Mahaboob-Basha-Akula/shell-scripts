#!/bin/bash

ID=$( id -u)

if [ $ID -ne 0 ]; then 
    echo "Root access reuqired"
    exit 1
fi

dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "Nginx installation failed "
    exit 1

else 
    echo "ngainx installation is success"

fi