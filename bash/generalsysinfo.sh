#!/bin/bash
# This is my first shell scripting assignment. The shell script is supposed to ask for general information about the system it's type and who is working on it and when.
#Author: Ali Billing

echo "What is your first and last name?"
read answer
echo "Hello $answer"
echo "Your linux log in ID is:"
logname
echo " The IP address for system abilling@hawk.iit.edu. is:"
curl ifconfig.me

echo " Your linux operating system and distribution type is:"
cat /etc/os-release
echo " You were logged in these times:"
last abilling
echo " Your total and free memory for this machine is: "
cat /proc/meminfo
echo " Your running processes in this Linux except for root are: "
ps -U root -u root -N
echo " Your file system in linux is: "
df
echo " The total log in IDs in the server is: "
lslogins -u
echo " Your linux system has been up and running since: "
uptime
