#!/bin/bash

DATE=$($date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log

VALIDATE(){
    if [ $? -ne 0 ]
    then
        echo "Error installing $2"
        exit 1
    else
        echo "Installed success $2"
    fi
}

USERID=$(id -u)


if [ $USERID -ne 0 ] #give space in [ in this ]
then
    echo "ERROR:Please run this script with root user"
    exit 1
else
    echo " you are root user"
fi

apt install git -y

VALIDATE $?
