
#!/bin/bash  # shebang: write in first of script to run script with that (starts with #!). we can use #!/usr/bin/python3 or ... (after add shebang we dont need to write bash or ... to exec file)

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
echo $(( age+2 )) # result is: 24

# exit, let, expr, test, ${#variable}

test -z $abc # see if length of abc variable=0 it exits 0 and else dont exit 0. we can see exit result by $?
echo $?

length_of_name=${#name} # show length of variable
echo $length_of_name


exit 0 # 0 for success and else for fail. to see last result, type this in terminal: $?
