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

## How to comments and variables work in bash shell scripts

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

## Where I am in the tutorial at the moment

- I have completed the first 2 videos. I am at video 3 now which I am yet to make notes on.
