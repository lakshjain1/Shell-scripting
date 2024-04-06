#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ] #give space in [ in this ]
then
    echo "ERROR:Please run this script with root user"
    exit 1
else
    echo " you are root user"
fi

yum install git -y