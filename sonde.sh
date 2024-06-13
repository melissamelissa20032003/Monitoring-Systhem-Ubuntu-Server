#!/bin/bash

cpu=$(python3 cpu.py)
user=$(bash user.sh)
ram=$(bash me.sh)
echo $cpu
echo $ram
echo $user


#function get info 

get_info() {
 
	cpu=$(python3 cpu.py)
	user=$(bash user.sh)
	ram=$(bash me.sh)

	echo "$cpu"
	echo "$ram"
	echo "$user"



}





#function to insert in the data base 


sqlite3 monitoring_data.db <<EOF
# chque 1 minute je suprime une ligne encien et j'ajoute une nouvelle ligne 
#The rowid is a special column in SQLite tables that uniquely identifies each row. It automatically increments with each insertion if not explicitly specified.
DELETE FROM sdata WHERE rowid = (SELECT min(rowid) FROM sdata);
INSERT INTO sdata (cpu, mem, users) VALUES ('$cpu', '$ram', '$user');


EOF


#fonction pour ajouter un esonde sans modifier la base ou le code de fichier bash

#addColumn () {

 #  if ["$#" -lt 0 ]; then
#	   echo "le nom de la  colomn ou le type n'est pas  specifier"
#	
 #  else
#	   sqlite3 monitoring_data <<EOF
 #             ALTER TABLE $sdata ADD COLUMN $1 TYPE $2 ;
#EOF

#cette command $? veut dire si le resulat de la dernier instruction est fait return 0 sinon retourn une autre chose 

# if [ $? -eq 0 ]; then
 #           echo "La colonne '$1' de type '$2' a été ajoutée avec succès à la table 'sdata'."

# fi


 #   fi
           # }

#addColumn new_column INTEGER
