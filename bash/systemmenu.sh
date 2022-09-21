#!/bin/bash
#Author: Allison Billing
#This file will take everything we've learned so far, including some new items, and combine it all into functions that will work in a menu.

#This function will display all server related commands including who is logged in, how much memory the computer has among others and display it.

serverInfo()
{
if [ "$answer" = "1" ]; then
echo lsb_release -a
cat /proc/meminfo
echo whoami
df
uptime -p
fi
}

#This function shows files filtered with only a given extension that we get from the user

fileFilter()
{
if [ "$answer" = "2" ]; then
echo "Give us a file extension."
read -r extension
grep --include= "$extension" /home/abilling/Github/pp-03-walkthru
echo "All files shown with given extension."
fi
}

#This function removes all file names containing a couple of certain, predetermined extensions from a directory

removeFiles()
{
if [ "$answer" = "3" ]; then
rm /home/abilling/Wastebasket/*.mp3
rm /home/abilling/Wastebasket/*.jpg
rm /home/abilling/Wastebasket/*.gif
rm /home/abilling/Wastebasket/*.o
rm /home/abilling/Wastebasket/core
echo "All files with given extensions in directory Wastebasket deleted!"
fi
}

#This function creates a new directory (in home for simplicity), with full read, write, execute access and with a stickybit to keep from deleting

stickyBits()
{
if [ "$answer" = "4" ]; then
mkdir Stickybits
sudo chmod 1777 /home/abilling/Scripts/Stickybits
mv /home/abilling/Scripts/Stickybits /home/abilling/
echo "Directory Stickybits in home has Stickybits set."
fi
}

#This function will call a shell script created in a previous project

callScript()
{
if [ "$answer" = "5" ]; then
/bin/bash ./task
echo "Shell script task is called!"
fi
}

#This function compresses all the files in the home directory and then saves it to the home directory

compressHome()
{
if [ "$answer" = "6" ]; then
tar -czvf archivedhome.tar.gz /home/abilling/
mv home/abilling/Scripts/Menu.sh /home/abilling/
echo "Home directory is compressed and living in home directory."
fi
}
echo "Hi, please input your name."
read -r name
echo "Hi $name, please use the menu here."
while :
do
echo "1. Display server information, logged in users, memory information, disk usage and server status."
echo "2. Display files with given extension."
echo "3. Remove unneeded file extensions."
echo "4. Create a new directory that can't be deleted."
echo "5. Call a previously made shell script."
echo "6. Compress the home directory and save it there."
echo "7. Quit."

echo "Put in a number between 1 and 7."
read -r answer

serverInfo
fileFilter
removeFiles
stickyBits
callScript
compressHome

if [ "$answer" = "7" ]; then
echo "Thanks for testing this menu!"
echo "Quitting...."
exit 0;
fi
done
