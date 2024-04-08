#!/bin/bash

DATE=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log

R="\e[31m"
G="\e[32m"
N="\e[0m"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$R Error installing $2 $N"
        exit 1
    else
        echo -e "$G Installed success $2 $N"
    fi
}

USERID=$(id -u)


if [ $USERID -ne 0 ] #give space in [ in this ]
then
    echo "ERROR:Please run this script with root user"
    exit 1
#else
#    echo " you are root user"
fi

yum install git -y &>>$LOGFILE

VALIDATE $? "Install GITLAB"

yum install tree -y &>>$LOGFILE

VALIDATE $? "INSTALL Tree"
