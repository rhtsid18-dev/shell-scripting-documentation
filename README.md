# Bash Shell Scripting Documentation

## [Link](https://www.youtube.com/playlist?list=PLS1QulWo1RIYmaxcEqw5JhK3b-6rgdWO_) to youtube tutorial playlist on shell scripting

## What is a shell

- A unix shell, interprets user commands or a shell script containing a set of commands.
- Shell scripts are not compiled but interpretted.
- To see what all kind of shells your system supports, run `cat /etc/shells` in your terminal.
- As you can see from the result of the above command, there are different types of shells but the knowledge documented in this README is for bash shell scripting.
- sh is the original unix shell.
- bash stands for borne again shell which is the better version of sh which is also used by macOS.
- To know where bash is located, just run the command `which bash` and you will get the directory path of where bash is located.

## Creating and running our first bash script

- Create a file called `hello.sh` in your preferred directory.
- Now open the file `./hello.sh` in your vscode and at the top type `#! /bin/bash`.
- The `#!` is called a shabang or hash bang. This is used to denote for which shell this script is intended for.
- So by putting `#! /bin/bash` we clearly specify that this script is intended only for bash shell.
- It works the same as an actual shell so you can write any shell command here.
- In the next line add `echo "Hello World"`
- Now to run the script, go to your terminal and `CD` into the directory where the script is and run the script with this command `./hello.sh`
- Now you will see the "permission denied" error.
- This error is coming up because your file only has the read and write permission and not the execute permission.
- You can verify this by listing the files in your directory using the `ls -la` command and seeing the permission for the hello.sh file in the left.
- Now to make your hello.sh file executable, run the command `chmod +x hello.sh`
- Now if you try to run the script using `./hello.sh` you will see that hello world is printed in the terminal

## How do comments and variables work in bash shell scripts

- To write a comment in a bash shell script, just start the line with a `#` and anything you write post that in that line will be part of a comment.
- For a comment the `#` does not have to start at the line. If you place it anywhere in the line, it will also work.
- In bash shell scripts, there are 2 types of variables: -
    - System Variables
        - These are created and maintained by the linux ( or macOS in my case ) Operating System.
        - The standard naming convention for these variables is that they are defined in all uppercase.
        - Examples of system variables: -
            - $BASH ( Gives the bash shell name )
            - $BASH_VERSION ( Gives the current bash version )
            - $HOME ( Gives the path to the home directory )
            - $PWD ( Gives the path to the current working directory )
    - User defined variables.
        - Are created and maintained by the user.
        - The standard naming convention for these variables is lowercase but there is no such strict rule and they can also be written in uppercase.
        - To create a user defined variable, just type the variable name with an equal to and then the value. Example : `name=Mark`
        - To use the variable, just use it with $ sign. Example : `$name`.
        - You can also easily concatenate variables into other strings. Example : `The name is $name`
        - Variable name should not start with a number.

## How to read user inputs

- For example if you want the user to enter their name, you do `echo "Enter name :`.
- Then in the next line you can use the read command in this manner `read name`.
- Now in the above command name is a variable that can be further used in the script.
- After this you can display the user entered name using `read "The name that was entered : $name"`
- You can also read multiple inputs bu just adding more variables names after the first one in the read command in this manner : `read name1 name2 name3`.
- Now when actually entering those names, don't press enter after entering the first name, just after a space enter the other names and then press enter.
- After this you can use these name variables in any way you want.
- By adding the `-p` flag to the read command, you can make the input in the shell happen on the same line.
- After the `-p` flag will come the string before the input to show and then the variable name.
    - Example : `read -p "Enter user name : " name`
- Some times we want to not show what the user is typing in the input. For example when the user is inputing their password.
- To do this we can use the `-s` flag.
    - Example : `read -sp "Enter password : " password`
- To take inputs in an array, you can use the `-a` flag.
    - Example code : `read -a names`.
- To read the array, you can read it with the index in the following manner: -
    - Example code : `Names entered : ${names[0]}, ${names[1]}, ${names[2]}`
- If you don't pass any variable name after read, you can receive the input in a default system variable called `$REPLY`

## How to pass arguments into a bash script

- The arguments that you pass into a bash script are by default stored in the following variables: -
    - 1st argument passed will be stored in variable `$1`
    - 2nd argument passed will be stored in variable `$2`
    - You know where this is going....
- With the `$0` variable, you get the name of the shell script you are running.
- We can also take in the arguments into an array using the following code : `args=("@")`
- With this ^ code, the args variable will have an array of arguments.
- Also if you want to print the whole array at once, you can do that like this : `echo $@`
- If you want to know the number of arguments passed, then to get that there is a default variable called `$#`

## Where I am in the tutorial at the moment

- I have completed the first 4 videos. I am at video 5 now which I am yet to make notes on.
