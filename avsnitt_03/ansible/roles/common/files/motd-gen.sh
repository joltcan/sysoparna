#!/bin/bash
#define the filename to use as output
motd="/etc/motd"
# Collect useful information about your system
# $USER is automatically defined
HOSTNAME=`uname -n`
KERNEL=`uname -r`
CPU=`nproc` 
MEM=`cat /proc/meminfo |grep MemTotal|awk '{print $2'}`
INTERFACES=$(ip a l|grep eth |grep inet |awk '{ print $7, ": ", $2 }')
# The different colours as variables
clear > $motd # to clear the screen when showing up
echo -e "***************************" >> $motd
echo -e "***  $HOSTNAME" >> $motd
echo -e "***************************" >> $motd
echo -e "CPU(s): $CPU    " >> $motd
echo -e "MEM:    $MEM    " >> $motd
echo -e "$INTERFACES    " >> $motd
echo -e "" >> $motd
