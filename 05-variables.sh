#!/bin/bash

echo "Please enter your username"

read USERNAME

echo "Username entered is : $USERNAME"

echo "Please enter your Password"

read -s PASSWORD 
# this -s will hide the type password in terminal
echo "Password entered is : $PASSWORD"