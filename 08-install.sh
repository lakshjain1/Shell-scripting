#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:Please run this script with root user"
else
    #echo " you are root user"
fi