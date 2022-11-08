#! /bin/bash

# Outputing the script name with $0, the first second and third arguments of the script with $1, $2 and $3 variables respectively.
echo $0 $1 $2 $3 ' > echo $1 $2 $3'

# Taking in the arguments into an array and then printing the same.
args=("$@")
echo "Following are the arguments : -"
echo "${args[0]}, ${args[1]}, ${args[2]}"

# Printing all the arguments in the array at once
echo $@

#Printing the number of arguments passed
echo $#