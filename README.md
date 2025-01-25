# Shell Scripting Practice

This repository contains a collection of shell scripts created for practicing and learning different concepts of shell scripting. The scripts include practical examples of variables, conditionals, loops, file manipulation, user input handling, functions, and more.

## Scripts in this Repository

### 1. `hello.sh`
This script prints a simple "Hello" message and lists the contents of the user's home directory.

**Content:**
```bash
echo "Hello"
echo "This is your home content:"
ls ~
```

### 2. `hello_plus.sh`

A more advanced script that covers several shell scripting concepts such as:

- Shebang (#!/bin/bash)
- Variables
- Arithmetic operations
- Conditional statements (if, elif, else)
- Loops (while, until, for)
- Functions
- User input handling

**Usage:**
```bash
./hello_plus.sh <name> <age>
```
It prints personalized greetings, performs arithmetic, checks for empty variables, uses loops, and more.

### 3. `optargs.sh`

A script for file manipulation using command-line flags. It handles file operations like listing, deleting, emptying, or renaming a file based on user input flags.

**Usage:**
```bash
./optargs.sh [flags] <file-name>
```
**Flags:**
- ``` -d ``` to delete the file.
- ``` -e ``` to empty the file.
- ``` -m <new-file-name> ``` to rename the file.
- ``` -h ``` to display help.

### 4. `opts.sh`
This script demonstrates how to use `getopts` to parse command-line options and flags. It provides personalized greetings based on the options chosen.
**Usage:**
```bash
./opts.sh [flags]
```
**Flags:**
- ``` -b ``` for male greeting.
- ``` -g ``` for female greeting.
- ``` -h ``` for help.

## Features Covered
- <b>Variables:</b> Creating and manipulating variables.
- <b>Conditionals:</b> Using `if`, `elif`, and `else` statements to handle conditions.
- <b>Loops:</b> Using `while`, `until`, and `for` loops for repetitive tasks.
- <b>Functions:</b> Defining and using functions for code reusability.
- <b>File Manipulation:</b> Basic file operations like `ls`, `rm`, `cp`, `mv`, and `touch`.
- <b>User Input Handling:</b> Taking user inputs via command-line arguments or `read` command.
- <b>Error Handling:</b> Using `exit`, `test`, and other techniques to handle errors gracefully.
- <b>Redirection:</b> Output redirection to files and devices like `/dev/null` and `/dev/zero`.
- <b>Parameter Expansion and Substitution:</b> Expanding and substituting variables for dynamic scripting.
- <b>Regular Expressions:</b> Matching patterns using regular expressions.
- <b>Arrays:</b> Using arrays to store and manipulate multiple values.
- <b>Flags and Options:</b> Handling command-line flags with `getopts` for flexible script usage.
## Installation
You don't need to install anything to run these scripts. Just clone the repository, and you'll be able to execute the scripts directly from the command line.
```bash
git clone https://github.com/alirezatcp/shell_scripting_practice.git
cd shell-scripting-practice
```
## Usage
Make sure the scripts are executable. You can do that by running:
```bash
chmod +x hello.sh hello_plus.sh optargs.sh opts.sh
```
Then, you can execute any script as follows:
```bash
./hello.sh
./hello_plus.sh John 25
./optargs.sh -d myfile.txt
./opts.sh -b
```
## License
This project is open-source and available under the <a href=''>MIT License</a>.
## Author
- <b>Name:</b> Alireza Taaty
- <b>Email:</b> alirezataaty02@gmail.com
## Contributions
Feel free to fork this repository, contribute, and submit pull requests if you find improvements or fixes.
