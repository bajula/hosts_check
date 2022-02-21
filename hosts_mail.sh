#!/bin/bash
# email report
SUBJECT="Ping Failure Notice!"
EMAILID="alex@mitrus.eu"
HOSTS_DOWN="/home/alex/hosts_check/hosts_down.txt"
TAG="tail -n 1 /home/alex/hosts_check/hosts_down.txt"
echo "Alert ==== Hosts $TAG is down!======" | mail -s "$SUBJECT" $EMAILI
