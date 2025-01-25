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




