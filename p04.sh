#!/bin/bash
#root
if [ $EUID != 0 ]
then
	echo "Aquest script s'ha d'executar amb prilegis de l'usuari root"
	exit 1
fi
#1r
clear
#2n
while [[ location ]]
do
	echo "Escriu qualsevol fitxer del directori /etc"
read Fitxer

	cp /etc/$Fitxer $Fitxer.orig

	gzip $Fitxer.orig

	ls -ll $Fitxer.orig.gz

echo "Vols Continuar?"
read Cont

if ((Cont==0))
then
echo ""
else
exit
fi
done

exit 15
