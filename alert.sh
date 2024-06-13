#!/bin/bash
#source sonde.sh
#recuperer les info 

server_info() {
	info=$(source sonde.sh && get_info)
	echo "$info"
}


res=$(server_info)
echo "$res"

var1=$(echo "$res" | head -n 1)
var2=$(echo "$res" | sed -n '2p' )
var3=$(echo "$res" | tail -n 1)

# Affichage des valeurs récupérées
echo "cpu : $var1"
echo "ram : $var2"
echo "users : $var3"


#function to compaire les seuilles
seuille() {
    if [ "$#" -ne 3 ]; then
        echo "Spécifiez 3 arguments s'il vous plaît."
    else
        if [ "$1" -lt 0 ]; then
            echo "Alerte : Utilisation CPU excessive."
	    python3 mail_cpu.py
        fi
        if [ "$2" -gt 500 ]; then
            echo "Alerte : Utilisation RAM excessive."
	    python3 mail_ram.py
        fi
        if [ "$3" -eq 1 ]; then
            echo "Alerte : un utilisateur connecté."
	    python3 mail_user.py
        fi
    fi
}

seuille $var1 $var2 $var3



