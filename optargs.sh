#!/bin/bash

###############################
# Author: Alireza Taaty
# Version: v1.0.0
# Date: 2025-01-07
# Description: manipulate files.
# Usage: ./optarhs.sh [flags] <file-name>
##############################

# shift command shifts user inputs. for example if we exec like this: "./file 1 2 3" and we use shift in command, it skips 1 and if we echo $* we will see 2,3.
# we can say how many shifts we could have (default is 1). for example "shift 2" shifts 2 arguments.

print_help(){
	echo "Usage: $0 [flags] <file-name>"
	echo "Flags:"
	echo "No flag for file listing."
	echo "-d to delete the file."
	echo "-e to empty the file."
	echo "-m <new-file-name> to rename the file."
	echo "-h for help."
}

#default command:
command='ls -l'

# m get new-file-name. so we should use ':' after that.
optstring=":dem:h"

while getopts ${optstring} options; do
	case ${options} in
		d)
			command='rm -f';;
		e)
			command='cp /dev/null';;
		m) # if a flag get an argument we can see that argument with: ${OPTARG}
			new_file=${OPTARG}; command='mv';;
		h)
			print_help; exit 0;;
		:) #  if we don't send arguman to a flag that needs arguman. in here ${OPTARG} shows that flag needed argument.
			echo "-${OPTARG} requires an argument"; exit 1;;
		?)
			echo "Invalid option: -${OPTARG}"; exit 1;;
	esac
done


# now we want work with <file-name>. we will shift before that (${OPTIND} is like $# and shows arguments):
shift $(( ${OPTIND} - 1 ))

# now we skiped flags and we are reach file name in $1.
file_name=$1

# check if inputs != 1 or file is not writable:
if [[ $# != 1 || ! -w ${file_name} ]]; then
	echo "Supply a writable file to manipulate."
	exit 1
fi

# check to see we have new_file and we should rename or not.
if [[ -n ${new_file} ]]; then
	${command} ${file_name} `dirname ${file_name}`/${new_file}
else
	${command} ${file_name}
fi
