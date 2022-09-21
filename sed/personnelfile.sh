#Author: Allison Billing
#This file acts as a script for SED and takes all the command line commands
 #needed for SED to work the way it does and puts them all in one file for people
#to use one at a time to make the changes desired in the homework.

sed -i '1 i/PERSONNEL FILE' sedDatafile.txt
sed -i '500$/d' sedDatafile.txt
sed -i 's/\([[:alpha:]]\+\) \([[:alpha:]]\+\)/\2 \1/' sedDatafile.txt
sed -i '$a THE END' sedDatafile.txt
