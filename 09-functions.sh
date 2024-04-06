#!/bin/bash

USERID=$(id -u)
VALIDATE(){
    if [ $? -ne 0 ]
    then
        echo "Error installing git"
        exit 1
    else
        echo "Installed success"
    fi
}

if [ $USERID -ne 0 ] #give space in [ in this ]
then
    echo "ERROR:Please run this script with root user"
    exit 1
else
    echo " you are root user"
fi

apt install git -y

VALIDATE $?
