# cronumerator

A common CTF tactic is to hide vulnerable scripts or binaries running with high permissions as cron jobs. This bash script checks for interesting crontab entries (entries that run every 1 - 5 minutes) and prints them for further evaluation.

It will expand as time permits.

# Usage

Upload script to target machine and run ./cronumerator.sh.
