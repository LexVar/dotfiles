#!/bin/bash
awk '{printf("up %d days %02dh%02dm\n",($1/60/60/24),($1/60/60%24),($1/60%60))}' /proc/uptime
