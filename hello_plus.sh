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
echo
#####################################
# exit, let, expr, test, ${#variable}

test -z $abc # see if length of abc variable=0 it exits 0 and else dont exit 0. we can see exit result by $?
echo exit code of test -z $abc: $?

length_of_name=${#name} # show length of variable
echo length of name: $length_of_name

let num=3+$age
echo "result of 3+age operation (with let): $num"

# exit 0 # 0 for success and else for fail. to see last result, type this in terminal: $?
echo
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
echo
##################################
# user inputs:

name=$1 # nane=first argument user sent. (user sends argument like this when execute the file): ./hello_plus.sh username
age=$2
echo username is: $name and age is: $age

if test -z $name; then read -p "what is your name? " name; fi
if test -z $age; then read -p "what is your age? " age; fi
echo given name is $name and age is $age

echo
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

echo
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

echo
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

echo
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
	# exit 0
fi

echo
############################
# user input handling

# we can know number of inputs user send us with: $#
echo "inputs number: $#"
# we can see file name with #0
echo "file name is: $0"

echo
############################
# while do done

# we want to check $4 be y or n


while true; do
	read -p "do you like this? " reply

	if [[ $reply == "y" ]];then
		echo "great!!"
		break
	elif [[ $reply == "n" ]];then
		echo "sorry!!!"
		break
	else
		echo "please try again"
		sleep 1
	fi
done

echo
########################
# until do done
# just like while but in until loop continue while condition is false:
counter=0
echo "until loop: "
until [[ $counter -gt 5 ]]; do
	echo $counter
	(( counter++ ))
done

echo
#######################
# for _ in _ do done

# bash syntax:
echo "names with for loop:"
namos="ali reza mohammad amir"
for name in $names; do
	echo $name
done

# c-style:
echo "counter with for loop:"
for (( counter=0; counter<5; counter++ )); do # or we can use: "for num in {0..4..1}; do" (from 0 to 4 with steps 1)
	echo $counter
done

echo {A..z}

# we can use "continue" and "break" in our loops like python.

echo
##########################
# redirect

# if we exec this program from another directory, it create title.txt in that directory. but we want to create here. to do that we should first come to this directory (dirname is a command to show file directory):
cd `dirname $0`
echo "this file is in this directory: `dirname $0`"
read -p "print yout title: " title
echo $title &>> titles.txt
echo title redirected to tetles.txt
# using /dev/null

# if we use this command "find / -name titles.txt" we have too many permission denied. to remove them we can redirect them to /dev/null:
# find / -name titles.txt 2> /dev/null # I comment this line because is takes some time.

echo
# using /dev/zero

# test_file is 0 b.
ls -l ./test_file
# we want to make it 240 b.
head -c 240 /dev/zero &> test_file
ls -l ./test_file
echo

###########################
# redirect input

# create password with len 10:
# tr is a command to translate or delete charactors
# /dev/urandom gives us a random string.

pass_len=10
tr -dc "a-zA-Z0-9" < /dev/urandom | head -c $pass_len
# this command get a random str from /dev/urandom and gives it as input to tr to remove non alphabet and non numeric characters and get 10 character of it. 
echo
echo

###########################
# function
say_hello(){
	echo "Hello (a func to say hello)"
}
say_hello
# if we have a variable in func, after call func we can use that variable as global variable. if we want to variable be just local and we cant use out of func, we should use 'local'.
echo

###########################
# function args

colorful(){
	if [[ $# -ne 2 ]]; then
		echo "colorful function get 2 inputs."
		return 1 # we can use 0 to 255 to show func status. exit ends program but return ends just function.
		#exit 1
	fi

	local string=$1
	local color=$2
	
	if [[ $color == "red" ]]; then
		local color_code="\e[31m"
	elif [[ $color == "blue" ]]; then
		local color_code="\e[34m"
	elif [[ $color == "green" ]]; then
		local color_code="\e[32m"
	else # white
		local color_code="\e[39m"
	fi

	echo -e ${color_code}${string}
	return 0
	#exit 0
}

colorful "error"
colorful "This is red" "red"
colorful "This is blue" "blue"
colorful "This is green" "green"
colorful "This is white" "x"

echo

########################
# return 
add(){
	x=$1
	y=$2
	(( sum = x+y ))
	echo $sum
}

result=`add 5 10`
echo $result

echo

######################
# source and $@

# import another file to use functions inside that script(for example):
source ./hello.sh

# show all inputs:
echo "inputs: $@"

echo
