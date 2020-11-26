#!/bin/bash

# POSIX-friendly function for checking if string begins with a character
beginswith() { case $2 in "$1"*) true;; *) false;; esac; }

# Check system crontab (/etc/crontab)
while IFS= read -r line
do
    # Skip comment lines (starting with #)
    [[ $line =~ ^#.* ]] && continue

    #echo "$line"
    # If first character is *, */1, */2, */3, */4, or */5,
    # the job runs within every 5 minutes and should be
    # examined further.
    if beginswith \* "$line"; then
        echo "$line";
    fi

done < /etc/crontab

# Check system drop-in directory
# cat /etc/cron.d/*

# Check user crontabs
# Debian
# cat /var/spool/cron/crontabs/*
# Red Hat
# cat /var/spool/cron/*
