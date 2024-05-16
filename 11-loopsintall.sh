#!/bin/bash
# all argument is $@
for i in $@
do
    yum install $i -y
done

