#!/bin/bash

TEMP=""

for FILE in `ls -1 /var/migrate/mwconfig/storeprocedure/*.db2 | sort -g`
do
    TEMP+="echo $FILE;"
    TEMP+="db2 -td@ -f $FILE;"
done

TEMP=${TEMP%;}

su - db2inst1 -c "db2 connect to mwconfig > /dev/null 2>&1;
                  db2 set schema mwconfig > /dev/null 2>&1;
                  $TEMP; 
                  db2 terminate > /dev/null 2>&1;"


FILE_PATH="/var/migrate/mwconfig/SP/cardless.sql"
DB_NAME='MWCONFIG'

su - db2inst1 -c "
    db2 connect to $DB_NAME;
    db2 -tvf \"$FILE_PATH\";
    db2 terminate;
" 2>&1 | while read -r line; do
    if [[ $line == INSERT* || $line == C ]]; then
        echo "$line"
    elif [[ $line == *SQLSTATE* || 
            $line == *SQL0601N* || 
            $line == *SQL0117N* || 
            $line == *SQL0100W* || 
            $line == *SQL0530N* || 
            $line == *SQL0087N* || 
            $line == *SQL0010N* || 
            $line == *"is not equal to any value of"* || 
            $line == *"does not have an ending string"* || 
            ($line == *DB2*ERROR* && $line != *DB20000I*) ]]; then
        echo -e "\e[91m$line\e[39m"
    elif [[ $line == *DB20000I* ]]; then
        echo -e "\e[92m$line\e[39m"
    else
        echo "$line"
    fi
done
