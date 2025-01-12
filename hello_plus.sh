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

#####################################
# exit, let, expr, test, ${#variable}

test -z $abc # see if length of abc variable=0 it exits 0 and else dont exit 0. we can see exit result by $?
echo exit code of test -z $abc: $?

length_of_name=${#name} # show length of variable
echo length of name: $length_of_name

let num=3+$age
echo "result of 3+age operation (with let): $num"

# exit 0 # 0 for success and else for fail. to see last result, type this in terminal: $?

###################################
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

##################################
# user inputs:

name=$1 # nane=first argument user sent. (user sends argument like this when execute the file): ./hello_plus.sh username
age=$2
echo username is: $name and age is: $age

if test -z $name; then read -p "what is your name? " name; fi
if test -z $age; then read -p "what is your age? " age; fi
echo given name is $name and age is $age


################################
# tips:

unset name age; echo hey $name $age # remove variables with unset and write multi command in one line.

str=hello
echo "$str"; echo '$str' # deference between ' and "

str="many       spaces"
echo $str; echo "$str" 

command1=`ls /`
echo ls / result: $command1

command2=$(ls /)
echo "ls / result (with second way): $command2" # defference is just because using " in here


################################
# comparison operations

# integer: -eq, -ne, -gt, -ge, -lt, -le, ==, =
# string: ==, =, !=, -z, -n

# in integers: = use to know 2 variables is equal or not like == and -eq:

a=4
b=4
if [ $a = $b ]
then
	echo Done...
fi

# in strings: -z use to know is a variable empty or not. -n shows variable is not empty and we should use "

empty=
nempty='not empty'
if [ -z $empty ]
then
	echo "empty variable is empty"
fi

if [ -n "$nempty" ]  # we can use: ! -z $nempty
then
	echo "nempty variable is not empty"
fi


#############################
# (( )) -> c-style and [[ ]]
# with (( )) we can use c syntax:
(( a = 5 ))
(( a++ ))
echo c-style: $a


# [[ ]] is better than [ ]
a=15 #decimal
a_o=017 #octal
a_h=0x0f #hex
if [[ a_h -eq a_o  ]]; then # [ ] result wrong
	echo a_octal is equal a_hex
fi


############################
# &&: and    ||: or
# we can use 'man test' to know operations.
if [[ 0==1 || 1 = 1 && 2 -eq 2 ]]; then
	echo operation is true
fi

# we can use debug mode. to do this we should exec file like this: bash -x file.sh

# we want to write a program to get third variable of user and if it is not exist touch it and if it is exists make that empty:

file=$3

if [[ -f $file ]]; then
	cp /dev/null $file
else
	touch $file
fi

# we check code is right or not

if [[ $? -ne 0 ]]; then
	echo "something went wrong"
	exit 1
else
	echo "everything is ok"
	exit 0
fi


