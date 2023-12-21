#!/bin/bash

#1
str="HelloWorld"
echo str2    # Outputs the string "str2".
echo ${str}2 # Expands the variable 'str', resulting in "Hello2".

#2
echo $((5 ** 2 * 4 / 10))

#3
echo "The balance for user $USER is: $5,00" # Interprets "$5" as a variable, resulting in a missing value.
echo "The balance for user $USER: \$5,00"   # Correctly displays "$5,00" as a literal string.


#4
echo '$USER $((2 + 2)) $(ls)' # Treats everything as a literal string.
echo "$USER $((2 + 2)) $(ls)" # Interprets variables and commands.


#5
current_dir=$(pwd)
num_files=$(ls -l | grep -c "^-")
cat <<EOF
Current directory: $current_dir
Number of files: $num_files
EOF

#6
sum_numbers() {
	result=$(($1 + $2))
	echo "The summary $1 and $2 is equal to $result"
}
sum_numbers 5 7


#7
count_files() {
	dir_name=$1
	num_files=$(ls -l $dir_name | grep -c "^-")
	echo "Number of files in the directory $dir_name: $num_files"
}
count_files ./

#8
touch new_file.txt
if [ -e new_file.txt ]; then
	chmod +rwx new_file.txt
	echo "File new_file.txt has been created, and permissions for read, write, and execute are set."
else
	echo "Error: File new_file.txt was not created."
fi

#9
find_max() {
	if [ $1 -gt $2 ]; then
		echo "The largest number is: $1"
	else
		echo "The largest number is: $2"
	fi
}
find_max 12 8


#10
check_even_odd() {
	if [ $(($1 % 2)) -eq 0 ]; then
		echo "$1 is an even number."
	else
		echo "$1 is an odd number."
	fi
}
check_even_odd 7
check_even_odd 8