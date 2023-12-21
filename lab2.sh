#1
# Creates file1 and waits for input from the keyboard until Ctrl+D is pressed. The input is saved in file1.
cat > file1
# Displays the contents of file1.
cat file1
# Also displays the contents of file1. The '<' symbol is redundant here as 'cat' reads from the file by default.
cat < file1

#2
# Creates file1.txt, file2.txt, file3.txt and waits for input. After creating each, contents are appended to Final.txt.
cat > file1.txt
cat > file2.txt
cat > file3.txt
cat file1.txt file2.txt file3.txt > Final.txt

#3
# Counts the number of .txt files in the current directory
ls ./*.txt | wc -l

#4
# Sorts the combined contents of file1.txt, file2.txt, and file3.txt and writes to sorted.txt
cat file1.txt file2.txt file3.txt | sort > sorted.txt

#5
# Lists the first 15 files in descending order by size
ls -S | head -n 15

#6
# Lists all files and directories in the current directory and saves the list in ls.txt
ls > ls.txt

#7
# Encrypts "secret text" using the ROT13 algorithm
echo "secret text" | tr 'a-zA-Z' 'n-za-mN-ZA-M'
# Decrypts the encrypted message
echo "frperg grkg" | tr 'a-zA-Z' 'n-za-mN-ZA-M'

#8
# Creates home.txt with a placeholder for the home directory
echo "Student’s home directory is {home_dir}." > home.txt
# Replaces {home_dir} with '/home/student' in home.txt and writes to home_modified.txt
sed 's/{home_dir}/\/home\/student/' home.txt > home_modified.txt

#9
# Creates file4.txt with 5 lines of content
echo "Line 1" > file4.txt
echo "Line 2" >> file4.txt
echo "Line 3" >> file4.txt
echo "Line 4" >> file4.txt
echo "Line 5" >> file4.txt
# Extracts and displays lines 2 to 4 from file4.txt
sed -n '2,4p' file4.txt

#10
# Deletes lines 2 to 4 from file4.txt
sed -i '2,4d' file4.txt