clear
##
if (( EUID != 0 ))
then
  echo "Aquest script s'ha d'executar amb prilegis de l'usuari root"
  exit 4
fi

if [[ ! -d /mnt/cpseg ]]
then
	echo -n "El directori no existeix. Ho vols crear s/S o n?: "
read opc
    if [[ $opc != "s" ]] && [[ $opc != "S" ]]
	then
		echo "No s'ha creat el directori"
		exit 3
	else
		mkdir /mnt/cpseg
		echo "S'ha creat el subdirectori i es crearan còpies de seguretat"
	fi
fi

cp /etc/hosts $nom_backup
cp /etc/crontab $nom_backup2
gzip $nom backup.$(date +"%Y%m%d%H%M")

echo "S'ha fet la copia correctament"


exit 0
