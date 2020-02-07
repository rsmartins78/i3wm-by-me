#!/bin/bash

STATUS=$(synclient -l | grep TouchpadOff | awk '{print $3}')
MOUSE=$(lsusb | grep Mouse)
if [ "$STATUS" == 0 ] && [ ! -z "$MOUSE" ]; then
	synclient TouchpadOff=1
else
	synclient TouchpadOff=0
fi

