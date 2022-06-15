#!/bin/bash

#loop through file system under specified path
for value in $1/*
do 
  # get disk free space info of this 
  used=$( df $1/$value | tail -1 | awk '{ print $5 }' | sed 's/%//' )
  echo $value
  echo $used
done