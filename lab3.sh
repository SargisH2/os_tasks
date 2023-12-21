#!/bin/bash

#1
ls /etc | grep '[0-9]'

#2
echo -e "Hello\nWorld\nTestlo\nHillo\nOtherlo\n" > test_file.txt
grep -E '\b\w{3}lo$' test_file.txt


#3
grep -h '[A-Z]' список_каталогов*.txt  # Searches for lines containing at least one uppercase letter
grep -h '[-AZ]' список_каталогов*.txt  # Searches for lines containing a hyphen, 'A', or 'Z'
grep -h '^[A-Z]' список_каталогов*.txt # Searches for lines starting with an uppercase letter
grep -h '[^A-Z]' список_каталогов*.txt # Searches for lines containing any character except uppercase letters

#4
grep -E '^(bz|zip)' dirlist-bin.txt dirlist-sbin.txt

#5
grep -Eh '^(bz|gz|zip)' список_каталогов*.txt  # Searches for lines starting with 'bz', 'gz', or 'zip'
grep -Eh '^bz|gz|zip' список_каталогов*.txt    # Searches for lines starting with 'bz' or containing 'gz' or 'zip'


#6
echo "test@test.com" | grep -E '^([a-zA-Z0-9._%+-]+)@([a-zA-Z0-9.-]+)\.([a-zA-Z]{2,})$'


#7
echo "192.168.0.1" | grep -E '^([0-9]{1,3}\.){3}[0-9]{1,3}$'


#8
grep -E '\b([a-zA-Z])([a-zA-Z])([a-zA-Z])\2\1\b' file_lab3_task_8.txt


#9
echo "01/02/1970" | sed -E 's~([0-9]+)/([0-9]+)/([0-9]+)~\3-\2-\1~'


#10
echo "0xx 12-34-56" | sed -E 's~^(0xx) ([0-9]{2})-([0-9])([0-9])-([0-9]{2})$~(\1) \2\3-\4\5~'
