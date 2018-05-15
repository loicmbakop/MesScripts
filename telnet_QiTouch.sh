#!/bin/sh

HOST='192.168.44.201 55000'

ARGCMD=$1

case "$ARGCMD" in
        "version") CMD='[ {"id":1, "cmd":"GET", "index":"0x1008", "subindex":5 } ]'
        ;;
        "bsp") CMD='[ {"id":1, "cmd":"GET", "index":"0x1008", "subindex":6 } ]'
        ;;
esac

(
echo "$CMD"
sleep 0.3
echo "^]"
) | telnet $HOST 2>/dev/null | grep value | cut -d":" -f8 | cut -d"\"" -f2
