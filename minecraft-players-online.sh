#!/bin/sh

count=$(lsof -iTCP:25565 -sTCP:ESTABLISHED | tail -n +2 | wc -l)

case $count in
        1)
                echo "1 Player Online";;
        0)
                echo "No Players Online";;
        *)
                echo "$count Players Online";;
esac