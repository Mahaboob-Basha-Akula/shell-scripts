#!/bin/bash

USERIDD=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USERIDD -ne 0 ]; then 
    echo -e "This user need $R ROOT $N persmission to run the command "
    exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ]; then 
        echo -e "Installation of $2 is $R failed $N "
        exit 1
    else
        echo -e "Installation of nginx is $G success $N "
    fi
    
}

# dnf install nginx
# VALIDATE $? "nginx"

# if [ $? -ne 0 ]; then 
#     echo "Installation of nginx is failed"
#     exit 1
# else
#     echo -e "Installation of nginx is $G success $N "
# fi

dnf list installed nginx

if [ $? -ne 0 ]; then 
    dnf install nginx -y
    VALIDATE $? "nginx"
else
    echo "Nginx already installed"
fi


