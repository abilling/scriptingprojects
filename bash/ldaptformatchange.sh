#!/bin/bash
#Author: Allison Billing
#This program translates a file into LDAP format from a different format.

cat logininfo.txt | awk -F : '
{
print "dn: uid=" $1 ", dc=example, dc=com"
print "cn:" $2" " $3
print "sn:" $3
print "telephoneNumber:" $4
}'  
