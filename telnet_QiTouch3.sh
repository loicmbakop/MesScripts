#!/bin/sh

#lecture et comparaison du parametre dans le terminal 

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
) | telnet $HOST 2>/dev/null | grep value | cut -d":" -f8 |  cut -d"\"" -f2 > /home/loic/Documents/MesScripts/parametre





filename="$2"
variable="$3"
while read -r line
do
	parametre="$line" 
 	if [ "$variable" = "$parametre" ]
	then
		echo "le parametre lu $parametre correspond à celui saisi $variable"
	else
		echo "le parametre saisi $variable ne correspond pas à celui lu $parametre "
	fi

done < "$filename"

