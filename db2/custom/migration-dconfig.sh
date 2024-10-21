rm -rf /var/migrate.done
# init table
for FILE_PATH in `ls -1 /var/migrate/dconfig/init/*.sql | sort -g`
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
for FILE_PATH in $(find /var/migrate/dconfig/data -name '*.sql' | sort -g)
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