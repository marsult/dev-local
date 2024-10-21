#!/bin/bash

echo "CONNECT TO MWCONFIG; " >db2-mwconfig/cicd/migrate.sql
cat db2-mwconfig/cicd/$1 >>db2-mwconfig/cicd/migrate.sql
echo -e "\n\nTERMINATE;" >>db2-mwconfig/cicd/migrate.sql

docker compose exec db2-mwconfig bash -c "su - \$DB2INSTANCE -c 'db2 -tvf /var/cicd/migrate.sql'"
