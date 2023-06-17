#!/bin/bash

echo "RSync Remote Copy Script"
echo "This script will generate the command to copy a file or folder remotely"
read -p "Enter the SSH Port Number: " port
read -p "Enter the Remote Server IP: " ip
read -p "Enter the Remote UserName: " uname
read -p "Enter the File or Folder Name: " file
printf "\n"
echo "RSync Command Details:"
echo "FILE COPY:"
echo "rsync -av -e 'ssh -p $port ' --progress $file $uname@$ip: "
echo "FOLDER COPY:"
echo "rsync -avr -e 'ssh -p $port ' --progress $file/ $uname@$ip:~/Downloads/$file"
