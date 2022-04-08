#!/bin/bash
# Root
if [ $EUID != 0 ]
then
	echo "Aquest script s'ha d'executar amb prilegis de l'usuari root"
	exit 3
fi

#1r
clear
#2n
echo "Escriu el nom del  grup que vols borrar: "
read gB

echo "Segur que vols borrar $gB, si es aixi posa s?"
read Sure


if  [[  $Sure  ==  "s" ]]
then
	sudo delgroup $gB
else
	echo "No s'ha pogut borrar $gB"
fi

exit 3
