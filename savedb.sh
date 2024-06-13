#!/bin/bash

database="monitoring_data.db"

backup_file="file.txt"

sqlite3 $database <<EOF
.output $backup_file
SELECT date  , cpu , mem , users FROM sdata;
EOF

# Check if the command was executed successfully
if [ $? -eq 0 ]; then
    echo "Database saved successfully"
else
    echo "An error occurred while creating the backup"
fi





#sqlite3 $database ".dump sdata" > $backup_file


# si la dernier instruction est executer 

#if [ $? -eq 0 ]; then 
	#echo " data base saved successfully "
#else
       #echo " une erreur s'est produit lors de la creation de la sauvgarde"
#fi       


#sdata info  

# PRAGMA table_info(sdata);
#0|id|INTEGER|0||1
#1|date|TIMESTAMP|0|CURRENT_TIMESTAMP|0
#2|descri|TEXT|0||0
#3|cpu|FLOAT|0||0
#4|mem|FLOAT|0||0
#5|users|INTEGER|0||0

