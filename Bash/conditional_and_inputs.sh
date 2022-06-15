#!/bin/bash

# reference all provided variables 
echo $@

# read user input and assign it to variable name 
read -p "first name: " name
read -sp "secret code: " secret

# conditional logic
echo $secret
echo $name
if [ $secret = "mango" ]; then
  echo "you may enter"
else
  echo "incorrect password"
fi;

# interacting with stdin
# cat file representing stdin, cut with delimiter set to space 
cat /dev/stdin | cut -d' ' -f 1,2 | sort
#can pipe to stin by cat file.txt |
