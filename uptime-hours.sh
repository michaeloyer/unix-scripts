#!/bin/sh

UPTIME="$(uptime --pretty), 0 days, 0 hours"
DAYS=$(echo $UPTIME | grep -oE "[0-9]+ days" | head -1 | cut -d ' ' -f 1)
HOURS=$(echo $UPTIME | grep -oE "[0-9]+ hours" | head -1 | cut -d ' ' -f 1)
HOURS_UP=$((DAYS * 24 + HOURS))

echo $HOURS_UP