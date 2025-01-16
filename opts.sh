#!/bin/bash

###############################
# Author: Alireza Taaty
# Version: v1.0.0
# Date: 2025-01-16
# Description: working with getopts.
# Usage: ./opts.sh [flags]
##############################

# we will learn about getopts command... (we can use "man getopts")

# a function to show help
print_help(){
	echo "Usage: $0 [flags]" # if we forced to use flags we should write like this: <flags> , but if we don't, we should write like this: [flags]
	echo "Flags:"
	echo "-h for help"
	echo "-b for male greeting"
	echo "-g for female greeting"
}

# we should give all flags to a variable. ( : before arguments is because that we handle errors ourselves. but if we write after an arguman it means this arguman needs an option. for example :hb:g means b arguman need an option.)
optstring=":hbg"

# to use getopts command we should create a while loop: (options is user flag. for example if user send -bg first option will be b and in second round of while will be g)
while getopts ${optstring} options; do
	case ${options} in
		b)
			gender="boy";;
		g)
			gender="girl";;
		h)
			print_help
			exit 0;;
		?) # if user send an option that isn't in flags. ( we can see what user sent with: "$OPTARG" )
			echo "Invalid option: -${OPTARG}"
			exit 1;;
	esac
done

if [[ -n ${gender} ]]; then
	echo "Hey ${gender}"
else
	echo "Hey there"
fi


