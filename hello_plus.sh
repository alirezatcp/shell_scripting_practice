#!/bin/bash
# shebang: write in first of script to run script with that (starts with #!). we can use #!/usr/bin/python3 or ... (after add shebang we dont need to write bash or ... to exec file)

###############################
# Author: Alireza Taaty
# Version: v1.0.0
# Date: 2025-01-06
# Description: our practice script.
# Usage: ./hello_plus.sh
##############################

echo "Hello!!"

# write variables like one of this examps: _lowercase  myName  MY_NAME  my_name
# if we use uppercase to our variables, we should not change them. like AGE=23
name="Alireza"
age=22 # linux save all variables as str

echo "my name is $name."
echo my age is ${age}.

echo $age+2 # result is: 22+2
echo result of age+2 operation: $(( age+2 )) # result is: 24

# exit, let, expr, test, ${#variable}

test -z $abc # see if length of abc variable=0 it exits 0 and else dont exit 0. we can see exit result by $?
echo exit code of test -z $abc: $?

length_of_name=${#name} # show length of variable
echo length of name: $length_of_name

let num=3+$age
echo "result of 3+age operation (with let): $num"

# exit 0 # 0 for success and else for fail. to see last result, type this in terminal: $?

# if, then, else, elif

my_name=reza


if [ $my_name == "ali" ]
then
	echo "my name is ali."

elif [ $my_name == "reza" ]
then
	echo "my name is reza."

else
	echo "unknown"
fi
