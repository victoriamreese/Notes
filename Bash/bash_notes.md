
# Introduction
CCSS (cool computer science stuff)
- Program in Linux is nothing more than a blob of binary data that contains instructions for how the computer's CPU should behave. This binary data is then packaged and stored on the hard disk. 
- When we run a program, what we are really doing is running a process, or a copy of the program
- Running a process entails copying the binary data in the program into RAM (working memory). A program may consist of multiple processes./

## Quick Cheat Sheet
- echo $? to get output of last executed command 

## writing bash scripts
.sh extension (but not necessary as Linux is extensionless)

command line arguments
e.g. -l , /etc are command line arguments of ls

to run: either bash myscript.sh, /home/me/myscript.sh, ./myscript.sh


#!/bin/bash - shebang - includes the path to the interpreter that should be used to run the rest of the lines in the file. 
-shebang will be to bash for all bash programs, but every script type has its own interpreter. 

### process = running instance of a program
running/executing the script: 

### $PATH variable = individual user variable
many different versions of a program can be installed
absolute path- includes all directories and files in the path
e.g. /home/me/script.sh

## Absolute and Relative Paths

## referencing paths in the command line
   - tilde-  this is a shortcut for the home directory
   . dot- reference to teh current directory
   .. dot dot- reference to parent directory. ../../ lists root directory

## Command line arguments
- $0 - The name of the Bash script.
- $1 - $9 - The first 9 arguments to the Bash script. (As mentioned above.)
- $# - How many arguments were passed to the Bash script.
- $@ - All the arguments supplied to the Bash script.
- $? - The exit status of the most recently run process.
- $$ - The process ID of the current script.
- $USER - The username of the user running the script.
- $HOSTNAME - The hostname of the machine the script is running on.
- $SECONDS - The number of seconds since the script was started.
- $RANDOM - Returns a different random number each time is it referred to.
- $LINENO - Returns the current line number in the Bash script.

## setting variables:
- variable=value
- using quotes:
   - single quotes treats contents literally
   - double quotes allows variable interpolation within string

# variable interpolation
- $var
- ${var}_if_followed_by_chars
- $(date +%Y ) - define the structure of datetime output

- 0 = True
- 1 = false

## command substitution:
- myvar=$( ls )
- allows saving of command output as variable

## Navigating History
- history shows past commands used
- $? passes output of last run command
- !n runs past command n

## Redirections
- 1>&2 - redirect stdout to stderr 
- stderr 2>
- stdout > or &> 

## Comparison Operators
### For Numeric Comparison
- -lt -  less than 
- -gt - greater than
- -eq - equal to
- -ne - not equal to
- -le - less than or equal to
- -ge - greater than or equal to

### For String comparisons (length)
- > greater than
- < less than
- = equal to

### Command Line Argumet

### Conditional statements
```
if [condition]; then
  action
else
  action
fi
```
#### Boolean Operations
- and - &&
- or - ||

```
if [ -d bash_files ] && [ -e bash_files/file.txt ]
then
  echo "files are present"
else
  ls
fi
```

#### Case Statements
Good for conditional blocks with multiple possible routes based upon a variable matchin a series of patterns
```
case $1 in 
  start)
    echo starting
    ;;
  stop)
    echo stopping
    ;;
  restart)
    echo restarting
    ;;
  *)
    echo don\'t know
    ;;
esac
```

#### Test statements for if statements
- !expression - expression is false
- -n String - the length of the string is greater than zero
- -z STRING - the length of the string is zero
- STRING1 = STRING2 - string1 is equal to string2
- STRING! != STRING 2- string1 is not equal to string2
- -d FILE - file exists and is a directory
- -r file - file exists and read permission is granted
- -s file - file exists and it's size is greater than zero
- -w file - file exists and write permission is granted
- -x file - file exists and the execute permision is granted

* you can test a test statement using 
``` 
#test STATEMENT
test -e bash_variables
echo $?
```

### Functions 
```
function_name () {
   echo hello I am a function
   echo $1 1>&2
   return something
}
```
- note - variables declared within functions should be prepended with "local"
- introduce modularity into code with functions

### Looping
#### While loops
```
while [ test ]
do
  command
done
```
#### Until Loops
``` 
until [ test ] 
do
  command
done
``` 
#### For Loops
```
for var in list
do
  echo var
done
```
#### Ranges
{start..stop..step}
```
for i in {1..6..3}
do
  echo i
done
```

#### Break and Continue
- continue stops the activity on a current iteration of a loop and starts the next
- break exits the loop entirely

### scope - each variable is limited to the process they were created in. If we want to use the variable in more than one script, we need to export
- exporting makes a variable available to all process subprocesses

## LINUX - 
case sensitive
extensionless (in order to see file extension you need to use file m`y`directory)
hidden files -a


## Manual Pages:
Searching Manual pages: 
man -k <search term>
or hit / followed by term you wish to search then enter
scroll through multiple entries with "n" key
File Navigation:
listing files: ls 
options:
-l lists the access codes, the date of last modification, the user code, the size and the name
-a lists all the files and directories, including those beginning with . 
-t lists the files and directory in order of when they were last modified
File Manipulation:
directory creation:
mkdir [options] <Directory>
useful options:
-p creates parent directories as needed
-pv creates parent and prints outcome

## file removal:
rmdir [options] <Directory> 
-p removes parent directories as needed
-v 

## blank file:
touch [options] <filename>

## copying a file or directory:
   cp [options] <source1><source2>...<source n><destination>
   *many options:* 
   -r = recursive. looks at a directory and all files and directories within in, and for subdirectories go into them and do the same thing and keep doing this.

copying all files of a certain name - cp *.txt <destination> or cp m*.txt <destination> 
* is called wildcard. it will select all files in the working directory


## moving a file:
   mv [options] <source> <destinations>
   we can rename a file by including a destination name
   * e.g. mv foo2 backups/foo3 <- here we moved the file foo2 to backups directory under a new name "foo3"
   * e.g. 2 mv superman.txt batman.txt <--- this overwrites superman.txt to a new file of name "batman.txt"

Copy vs. Move
- use move to rename a file (the first file argument will be deleted and renamed to the second argument. ** this command will overwrite the contents of the destination file, or create a new file by that name if none currently exists. 
- use copy to rename a file and keep a copy of it with its original name. Good for version control! But, copy will overwrite the contents of the destination file name, so be careful not to overwrite a file you need. 


## renaming a file or directory:
e.g. mv linuxtutorialwork/testdir /home/me/linuxtutorialwork/fred
here, we moved renamed the file testdir to be named fred

## remove a file:
rm [options] <file> 
rm -r  - this will removed a file and all its contents
rm <directory>/* - this removes all files within a directory


## I/O
cat- reads the contents of a file
echo - prints the following argument to standard output
command [file1] > [file2] redirects output to <file>
less- similar to echo, but prints long files one page at a time.
options -N adds line numbers to a file
wc counts the words and characters
sort orders them alphabetically
uniq omits adjacent duplicate lines. 
grep "global regular expression print" searches for a pattern and prints entries matching the pattern.
grep [options] PATTERN file/directory
options : -i case insensitive 
-R searches all files in a directory for a certain term
sed - stream editor, similar to find and replace
options
s - substitution
snow-  search the string (text to be found)
rain- replacement string, text to add in one place
e.g. sed 's/snow/rain' rainforests.txt - all instances of snow are replaced with rain
history - prints the last 10 commands used 

nano text editor- based on Pico UW model of text 
invoke with the  nano [file name] 
to access variables and commands set in a nano file, use source [file name] command

# Environmental Variables:
used across programs and commands and store information about the environment. 
write them with the variable name
access them with $
USER- stores name of user
PS1 - defines the makeup and style of the command line prompt
HOME- displays the path of the home directory
PATH- stores a list of directories separated by a colon. these directories contain scripts for the command line to execute

## env- prints the environmenal varial

## piping:
command to command redirection

## reading from STDIN
- every process has a set of files for the following:
  - STDIN - referred to as dev/stdin - can use this in a script to reference a file piped via STDIN
  - STDOUT
  - STDERR

### Arithmetic operations
####  LET
use let to declare and execute an operation and assign to a variable
- + , - , \*, /
- var++
- var--
- % 

```
let a=5+4
```

#### EXPR
execute and print some arithmetic
```
expr 5+4
```
#### DOUBLE PARENTHESIS
execute arithmetic 
```
(( 5+3 ))
```
#### STRING LENGTH
```
${#var}
```

## shortcuts:
mkdir vue-cdn && vue-cdn -this makes the folder and enters it too. 

## bash profile:
.bash_profile - stores aliases, 
- system path provides a set of directories where linux will search for executables associated with command line commands.
