#!/bin/bash

SUSPEND_LIMIT=30

capacity=`cat /sys/class/power_supply/BAT1/capacity`

if [ $capacity -lt $SUSPEND_LIMIT ]
then
systemctl suspend
fi

