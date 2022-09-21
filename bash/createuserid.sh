#!/bin/bash
#Author: Allison Billing
#This script will automatically create new userIDs when given user input and will make sure that certain checks are made to stop access and terminate the file.

if [ $EUID -ne 0 ]; then
echo " You have to be root to run this script."
exit 1
else
echo "What username would you like to use with your linux?"
read username
if [[ "$username" =~ [a-zA-Z0-9]{3,} ]]; then
echo "Username an accepted length! "
else
echo "Username needs to be atleast 3 letters."
exit 0
fi
if [ "$username" == "abilling" ]; then
echo "Username taken, terminating!"
exit 0
else
echo "Username accepted for use!"
fi
 
echo "What is your full name?"
read fullname
if [ "$fullname" = "" ]; then
echo "Please input your full name."
exit 0
else
echo "Full name accepted!"
fi

echo "What do you want to use as your UID?"
read userid
echo "What do you want to use as your GID?"
read groupid
echo "What shell do you want to use?"
read usershell
if [ "$usershell" == "c" ] || [ "$usershell" == "ksh" ] || [ "$usershell" == "sh" ] || [ "$usershell" == "bash" ]; then
echo "Shell accepted, will set shell."
else
echo "You need to set your shell to c, sh, ksh, or bash, no other shells accepted."
exit 1
fi

useradd "$username" -m -c "$fullname" -u "$userid" -g "$groupid" -s /bin/"$usershell"
passwd "$username"
fi
exit 0

