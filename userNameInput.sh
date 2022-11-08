#! /bin/bash

# Single user input
echo "Enter your name : " 
read name
echo "The name is : $name"

# Multiple user input
echo "Enter user names :"
read name1 name2 name3
echo "Following are the user names entered: -"
echo "$name1"
echo "$name2"
echo "$name3"

# Same line user input
read -p "Enter username : " name
echo "Name entered : " $name

# Same line silent input
read -sp "Enter password : " password
echo "Shhh! This is the password that was entered : " $password

# Reading into an array
echo "Enter names : "
read -a names
echo "Following are the names that were entered : -"
echo "${names[0]}"
echo "${names[1]}"
echo "${names[2]}"