#!/bin/bash

ID=$( id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\E[0m"


if [ $ID -ne 0 ]; then 
    echo -e " $R Root access reuqired $N"
    exit 1
fi

VALIDATE(){
    if [ $? -ne 0 ]; then
        echo -e "$2 installation $R failed $N"
        exit 1

    else 
        echo -e "$2 installation is $Y success $N"

    fi


}

CHECK_INSTALL(){
    dnf list installed $4

    if [$? -ne 0 ]; then

        dnf install nginx -y
        VALIDATE $? "nginx"
    else
        echo -e "$4 is already installed... $Y .... SKIPPING"
    fi

}

dnf install mysql -y

dnf install python3 -y
VALIDATE $? "python3"

