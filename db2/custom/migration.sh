#!/bin/bash

# for FILE in `ls -1 /home/mwconfig/init/*.sql | sort -g`
# do
#     echo "CONNECT TO MWCONFIG~" > /tmp/migrate.sql
#     cat $FILE >> /tmp/migrate.sql
#     echo -e "\n\nTERMINATE~" >> /tmp/migrate.sql
#     su - db2inst1 -c "db2 -td~ -qvf /tmp/migrate.sql"
# done

# TEMP=""

# for FILE in `ls -1 /home/mwconfig/storeprocedure/*.db2 | sort -g`
# do
#     TEMP+="echo $FILE;"
#     TEMP+="db2 -td@ -f $FILE;"
# done

# TEMP=${TEMP%;}

# su - db2inst1 -c "db2 connect to mwconfig > /dev/null 2>&1;
#                   db2 set schema mwconfig > /dev/null 2>&1;
#                   $TEMP; 
#                   db2 terminate > /dev/null 2>&1;"

# for FILE in `ls -1 /home/mwconfig/migration/*.sql | sort -g`
# do
#     echo "CONNECT TO MWCONFIG;" > /tmp/migrate.sql
#     cat $FILE >> /tmp/migrate.sql
#     echo -e "\n\nTERMINATE;" >> /tmp/migrate.sql
#     su - db2inst1 -c "db2 -qtvf /tmp/migrate.sql"
# done
# touch /var/migrate.done






rm -rf /var/migrate.done
# init table
for FILE_PATH in `ls -1 /var/migrate/*/init/*.sql | sort -g`
do
    DB_NAME=$(echo "$FILE_PATH" | cut -d'/' -f4)
    echo "$DB_NAME"
    echo "" > /tmp/migrate.sql
    echo "CONNECT TO $DB_NAME~" >> /tmp/migrate.sql
    cat $FILE_PATH >> /tmp/migrate.sql
    echo -e "\n\nTERMINATE~" >> /tmp/migrate.sql

    su - db2inst1 -c "db2 -td~ -qvf /tmp/migrate.sql" 2>&1 | while read -r line; do
        if [[ $line == *SQLSTATE* || $line == *valid* || $line == *SQL0601N* || $line == *DB2*E* && $line != *DB20000I* ]]; then
            echo -e "\e[91m$line\e[39m"  
        elif [[ $line == *DB20000I* ]]; then
            echo -e "\e[92m$line\e[39m" 
        else
            echo "$line"
        fi
    done
done

# migrate data
for FILE_PATH in $(find /var/migrate/*/data -name '*.sql' | sort -g)
do
    echo -e "\n\033[1;34m💡 $FILE_PATH\033[0m";
    DB_NAME=$(echo "$FILE_PATH" | cut -d'/' -f4)
    echo "" > /tmp/migrate.sql
    echo "CONNECT TO $DB_NAME;" >> /tmp/migrate.sql
    cat $FILE_PATH >> /tmp/migrate.sql
    echo -e "\n\nTERMINATE;" >> /tmp/migrate.sql

    su - db2inst1 -c "db2 -qtvf /tmp/migrate.sql" 2>&1 | while read -r line; do
        if [[ $line == INSERT* ]]; then
            echo "$line"
        elif [[ $line == *SQLSTATE* || 
            $line == *valid* || 
            $line == *SQL0601N* || 
            $line == *SQL0117N* || 
            $line == *SQL0100W* || 
            ($line == *DB2*E* && $line != *DB20000I*) ]]; then
            echo -e "\e[91m$line\e[39m"
        elif [[ $line == *DB20000I* ]]; then
            echo -e "\e[92m$line\e[39m"
        else
            echo "$line"
        fi
    done
done
touch /var/migrate.done