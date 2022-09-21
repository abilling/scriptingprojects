#!/bin/bash
#Author:Allison Billing
#This program shows us who is on the system and how long the system has been running.

date_user=$(
who | awk '{ if ($1 ~ user) {print $3, $4, $5}}' user="$1"
)

date_different=$((
$(date +%s) - $(date -d "$date_user" +%s)
))
printf "%s %s \n" "$((date_different/3600)) hours" \ "$((date_different%3600/60)) minutes.";
exit 0;
