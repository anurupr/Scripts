#!/bin/bash
# Script to randomly set Background from files in a directory
# Directory Containing Pictures
DIR=/home/anurup/backgrounds
LOG=/home/anurup/logs/backgrounds.log
# Command to Select a random file from directory
while true
do
PIC=$(
for p in [jJ][pP][gG] [pP][nN][gG] ; do
 ls $DIR/*.$p
done | shuf -n1
)
# Command to set Background Image
if [ -z "$DBUS_SESSION_BUS_ADDRESS" ] ; then
 # this is because of gconftool bug in cron
 TMP=~/.dbus/session-bus
 export $(grep -h DBUS_SESSION_BUS_ADDRESS= $TMP/$(ls -1t $TMP | head -n 1))
 echo $DBUS_SESSION_BUS_ADDRESS >> $LOG
fi
# Change the background
gconftool-2 -t string -s /desktop/gnome/background/picture_filename "$PIC"
sleep 3600
done
