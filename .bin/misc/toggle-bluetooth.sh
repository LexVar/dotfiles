#!/bin/bash
if /sbin/rfkill list bluetooth | grep -q 'yes$' ; then 
    /sbin/rfkill unblock bluetooth
else
    /sbin/rfkill block bluetooth
fi
