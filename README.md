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
- <p><h4>Variables:</h4> Creating and manipulating variables.</p>
- <h4>Conditionals:</h4> Using `if`, `elif`, and `else` statements to handle conditions.
- <h4>Loops:</h4> Using `while`, `until`, and `for` loops for repetitive tasks.
- <h4>Functions:</h4> Defining and using functions for code reusability.
- <h4>File Manipulation:</h4> Basic file operations like `ls`, `rm`, `cp`, `mv`, and `touch`.
- <h4>User Input Handling:</h4> Taking user inputs via command-line arguments or `read` command.
- <h4>Error Handling:</h4> Using `exit`, `test`, and other techniques to handle errors gracefully.
- <h4>Redirection:</h4> Output redirection to files and devices like `/dev/null` and `/dev/zero`.
- <h4>Parameter Expansion and Substitution:</h4> Expanding and substituting variables for dynamic scripting.
- <h4>Regular Expressions:</h4> Matching patterns using regular expressions.
- <h4>Arrays:</h4> Using arrays to store and manipulate multiple values.
- <h4>Flags and Options:</h4> Handling command-line flags with `getopts` for flexible script usage.
## Installation
You don't need to install anything to run these scripts. Just clone the repository, and you'll be able to execute the scripts directly from the command line.
