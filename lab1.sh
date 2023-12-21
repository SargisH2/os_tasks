# Հունանյան Սարգիս
# Մկրտչյան Արգիշտ
# Ղազարյան Մհեր

#1
mkdir lab1
cd lab1
touch file.txt file1.txt file2.txt file3.txt
mkdir dir1 dir2


#2
# This lists all files ending in .txt in the current directory
ls *.txt

# This command is incorrect, it should be 'ls *.txt'
# 'ls * .txt' tries to list all files and then a file named '.txt' which likely doesn't exist
ls * .txt


#3
# Lists files starting with 'f' and having exactly 3 more characters
ls f???.txt

#4
# Lists files starting with 'file' followed by any number and ending with '.txt'
ls file[0-9]*.txt

#5
# Lists files ending with a lowercase letter, 0, or 1
ls *[a-z01].txt

#6
# Copies the /etc/passwd file to the lab1 directory
cp /etc/passwd lab1/

#7
# Rename the copied passwd file to 'new' and move it to dir1 then dir2
mv lab1/passwd lab1/new
mv lab1/new lab1/dir1/
mv lab1/dir1/new lab1/dir2/

#8
# Rename dir2 to dir3 and move dir3 into dir1
mv dir2 dir3
mv dir3 dir1/

#9
# Move the file 'new' from dir3 (inside dir1) back to lab1
mv dir1/dir3/new .

#10
# Deletes the lab1 directory and all its contents
rm -r lab1
