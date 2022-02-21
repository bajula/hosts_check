#!/bin/bash
HOSTS="172.28.0.3 172.28.2.3 172.28.0.4"
# no ping request
COUNT=1
HOSTS_DOWN="/home/alex/hosts_check/hosts_down.txt"
HOSTS_UP="/home/alex/hosts_check/hosts_up.txt"

hosts_check () {

    for myHost in $HOSTS;
        do
           count=`ping -c $COUNT $myHost | grep 'received' | awk -F',' '{ print $2 }' | awk '{ print $1 }'`
              if [ $count -eq 0 ]
           then
           echo "Host : $myHost is down (ping failed) at $(date)" >> $HOSTS_DOWN 
           else
           echo "Host : $myHost is up (ping passed) at $(date)" >> $HOSTS_UP
           fi
   done
}

hosts_check
echo =============================================================================

tail -n 1 /home/alex/hosts_check/hosts_down.txt 

echo ====================================Done=====================================
