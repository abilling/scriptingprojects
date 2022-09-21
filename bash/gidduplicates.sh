#!/bin/bash
#Author: Allison Billing
#This program checks for duplicate GIDs in etc/passwd

cat /etc/passwd | awk -F : '
{
if ($3==$4) {
print $0
}
}'
OR
cat /etc/passwd | awk -F : '{ if ($3==$4) { print $0 } }'

