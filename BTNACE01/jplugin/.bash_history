mqsilist
mqsilist DUMBROKER
mqsilist ITMBROKER
mqsilist ISOBROKER
mqsilist PAYBROKER
mqsireload -i ITMBROKER -e ITMROUTER
mqsireload -i ITMBROKER -e ITMITM1
mqsireload -i ITMBROKER -e ITMCORE1
mqsireload -i ITMBROKER -e ITMLOGDB
mqsireload -i ISOBROKER -e SYARIAH
mqsireload -i PAYBROKER -e PAYREST1
mqsideploy PAYBROKER -e PAYREST1 -a /MQHA/bar/PAYBROKER/PAYREST1/BACKEND_REST_APP.bar 
echo "GET QUEUE(STORE_CORECHANGE_RESP)" | runmqsc ITMBROKER.QM
amqsget STORE_CORECHANGE_RESP ITMBROKER.QM
/opt/mqm/samp/bin/amqsget STORE_CORECHANGE_RESP ITMBROKER.QM
cd /MQHA/bar/rmp
cd /MQHA/bar/rpm/
ls
sudo rpm -i /MQHA/bar/rpm/openssh-8.0p1-10.el8.x86_64.rpm
sudo rpssh-keygen -f "/home/marshall/.ssh/known_hosts" -R "10.10.10.61"m -i /MQHA/bar/rpm/openssh-server-8.0p1-10.el8.x86_64.rpm
sudo rpm -i /MQHA/bar/rpm/rsync-3.1.3-12.el8.x86_64.rpm
sudo rpm -i /MQHA/bar/rpm/openssh-8.0p1-10.el8.x86_64.rpm
sudo rpssh-keygen -f "/home/marshall/.ssh/known_hosts" -R "10.10.10.61"m -i /MQHA/bar/rpm/openssh-server-8.0p1-10.el8.x86_64.rpm
sudo rpm -i /MQHA/bar/rpm/rsync-3.1.3-12.el8.x86_64.rpm
netstat -an | grep 22
netstat -an | grep 22
netstat -an | grep LISTEN
sudo rpm -i /MQHA/bar/rpm/openssh-8.0p1-10.el8.x86_64.rpm
sudo rpm -i /MQHA/bar/rpm/rsync-3.1.3-12.el8.x86_64.rpm
sudo ssh-keygen -A 
echo "+:ALL:ALL" | sudo tee /etc/security/access.conf 
sudo rm -rf /run/nologin 
sudo /usr/sbin/sshd
/usr/sbin/sshd
sudo service ssh start
sudo service ssh start
sudo /usr/sbin/sshd
sudo yum reinstall openssh-server
sudo /usr/sbin/sshd
ls /usr/sbin/sshd
ls /usr/sbin/
sudo find / -name sshd
sudo yum install openssh-server
ls /usr/sbin/
ls /usr/sbin/sshd
sudo yum install openssh-server
ls /usr/sbin/sshd
netstat -an | grep 22 | grep LISTEN
netstat -an | grep 22
sudo ssh-keygen -A 
echo "+:ALL:ALL" | sudo tee /etc/security/access.conf 
sudo rm -rf /run/nologin 
sudo /usr/sbin/sshd
netstat -an | grep 22
exit
mqsilist
dspmq
ifconfig -a
java -version
dspmq
ifconfig -a
dspmqinf -o command ITMBROKER.QM
dspmqinf -o command ISOBROKER.QM
dspmqinf -o command DUMBROKER.QM #jalankann ini
dspmqinf -o command PAYBROKER.QM #jalankann ini
ls /MQHA
ls -l /MQHA
ifconfig -a
scp -rp /MQHA/*BROKER* admmdw@10.10.10.37:/MQHA/
mv /MQHA /MQHA_TMP
ls -l /
mqsilist
mqsistop PAYBROKER
mqsistop ISOBROKER
mqsistop DUMBROKER
mqsistop ITMBROKER
mqsilist
endmqm PAYBROKER.QM
endmqm ISOBROKER.QM
endmqm DUMBROKER.QM
endmqm ITMBROKER.QM
endmqlsr PAYBROKER.QM
endmqlsr -m PAYBROKER.QM
endmqlsr -m ISOBROKER.QM
endmqlsr -m DUMBROKER.QM
endmqlsr -m ITMBROKER.QM
dspmq
mv /MQHA /MQHA_TMP
sudo mv /MQHA /MQHA_TMP
ls -l /MQHA
ls -l /
 ls -l /MQHA_TMP/ITMBROKERQM/data/ITMBROKER\!QM/
 ls -l /MQHA_TMP/ITMBROKERQM/
 ls -l /MQHA_TMP/ITMBROKERQM/data/
chown -r /MQHA_TMP/ITMBROKERQM/data/ mqm:mqm
chown -r mqm:mqm /MQHA_TMP/ITMBROKERQM/data/ 
dspmq
mqsilist
ifconfig -a
dspmq
ifconfig -a
mqsilist
ls
cat init.sh 
ls
dspmq
ifconfig -a
scp --help
scp help
scp
sudo yum install openssh-clients
ls
cd /MQHA
ls
ifconfig
ls -al
cd ..
ls
mqsilist
ifconfig
mqsilist
dspmq
ls -al /
ls /var/mqm
ls /var/mqsi
ls /var/mqm/qmgrs/
dspmq
ls /
ls /QMHA
cp -r /MQHA_TMP/ /MQHA/
ls /MQHA
ls
cp -r /MQHA_TMP/* /MQHA/*
ls /MQHA
cd /MQHA
ls
rm MQHA_TMP/
rm -r MQHA_TMP/
ls
cd /MQHA_TMP/
ls
cp -r . /MQHA
ls /MQHA
mqsilist
mqsideletebroker ITMBROKER;
mqsideletebroker PAYBROKER;
mqsideletebroker DUMBROKER;
mqsideletebroker ISOBROKER;
mqsilist
dspmq
dltmqm DUMBROKER.QM
dltmqm ISOBROKER.QM
dltmqm PAYBROKER.QM
dltmqm ITMBROKER.QM
dspmq
cd ~
ls
clear
ifconfig
addmqinf -s QueueManager -v Name=ITMBROKER.QM -v Directory=ITMBROKER\!QM -v Prefix=/var/mqm -v DataPath=/MQHA/ITMBROKERQM/data/ITMBROKER\!QM
mqsilist
dspmq
dltmqm ITMBROKER.QM
ls /MQHA
ls
dspmq
dltmqm ITMBROKER.QM
dspmq
rm -rf /MQHA/ITMBROKERQM
ls /MQHA
rm -rf /MQHA/MQHA
ls /MQHA
addmqinf -s QueueManager -v Name=ITMBROKER.QM -v Directory=ITMBROKER\!QM -v Prefix=/var/mqm -v DataPath=/MQHA/ITMBROKERQM/data/ITMBROKER\!QM
dspmq
ls /MQHA
ls -l /MQHA/
ls -l /MQHA/ITMBROKERQM
chown -R mqm:mqm /MQHA/ITMBROKERQM/data/
clear
sudo chown -R mqm:mqm /MQHA/ITMBROKERQM/data/
sudo chown -R mqm:mqm /MQHA/ITMBROKERQM/log/
ls -l /MQHA/ITMBROKERQM
dspmq
strmqm ITMBROKER.QM
echo "display Q(*)" | runmqsc ITMBROKER.QM
rm -rf /MQHA/ITMBROKER
mqsiaddbrokerinstance ITMBROKER -e /MQHA/ITMBROKER
mqsilist
history
mqsilist
exit
ls
ls 
cd /var/mqsi
ls
ls -al
mkdir test
pwd
ls /opt
ls
cd mdw
cd /opt
ls
mkdir mdw
ls
sudo mkdir mdw
ls
cd mdw
ls
sudo ln -s /var/mqsi/test /opt/mdw/test
ls
ls -la
ls
cd ..
ls
ls /mdw
ls -l mdw
sudo ln -s /opt/mdw/test /var/mqsi
rm -rf /var/mqsi/test
ls
cd mdw
ls
ls -l
rm -rf test
sudo rm -rf test
ls
sudo mkdir test
sudo ln -s /opt/mdw/test /var/mqsi/test
ls
ls -l
cd /var/mqsi
ls -al
cd test
ls
pwd
exit
rm -rf /opt/mdw/test
sudo rm -rf /opt/mdw/test
sudo rm -rf /var/mqsi/test
sudo ln -s /opt/mdw/shared-classes /var/mqsi/shared-classes
ls -l /var/mqsi
sudo ln -s /opt/mdw/shared-classes /var/mqsi/shared-classes
cd /opt/mdw
ks
ls
sudo mkdir shared-classes
sudo ln -s /opt/mdw/shared-classes /var/mqsi/shared-classes
ls
rm -rf shared-classes/
sudo rm -rf shared-classes/
ls /var/mqsi/shared-classes/
ls /opt/mdw
cp /var/mqsi/shared-classes /opt/mdw/shared-classes
cp -r /var/mqsi/shared-classes /opt/mdw/shared-classes
sudo cp -r /var/mqsi/shared-classes /opt/mdw/shared-classes
ls -l /var/mqsi/
ls
ls -al
rm -rf /var/mqsi/shared-classes/
ls -al /var/mqsi
mqsilist
mqsistop PAYBROKER
mqsistop ISOBROKER
mqsistop ITMBROKER
mmqsistop DUMBROKER
mqsilist
mqsistop DUMBROKER
rm -rf /var/mqsi/shared-classes
sudo rm -rf /var/mqsi/shared-classes
mqsilist
mqsistart ITMBROKER
mqsistart DUMBROKER
mqsistart ISOBROKER
mqsilist
mqsilist PAYBROKER - PAYREST1
mqsilist PAYBROKER -e PAYREST1
mqsilist PAYBROKER -e PAYREST1 -d
mqsilist PAYBROKER -e PAYREST1 -d2
mqsilist ITMBROKER -e ITMROUTER -d2
mqsideploy -n ITMBROKER -e ITMROUTER -d ROUTER_TCP_BAR.bar CHANGE_GROUP_REVERSAL_APP.bar
mqsideploy -n ITMBROKER -e ITMROUTER -d ROUTER_TCP_BAR.bar /MQHA/bar/ITMBROKER/ITMROUTER/CHANGE_GROUP_REVERSAL_APP.bar
mqsideploy -n ITMBROKER -e ITMROUTER -d /MQHA/bar/ITMBROKER/ITMROUTER/CHANGE_GROUP_REVERSAL_APP.bar
mqsideploy -n ITMBROKER -e ITMROUTER -d CHANGE_GROUP_REVERSAL_APP.bar
mqsilist ITMBROKER -e ITMROUTER -d2
mqsideploy -n ITMBROKER -e ITMROUTER -d '/MQHA/bar/ITMBROKER/ITMROUTER/CHANGE_GROUP_REVERSAL_APP.bar'
ls /opt/mdw
ls
mqsideploy -n ITMBROKER -e ITMROUTER -d CHANGE_GROUP_REVERSAL_APP.bar
exit
ls
mqsilist
ifconfig
exit
mqsilist
exit
ls
cd ~
ls
. init.sh
mqsilist
exit
ls /var/mdw
ls
cd /opt/mdw
ls
cd /opt
ls
exit
netstat -an | grep LISTEN
cd /var/mqsi/shared-classes/
ls
exit
mqsilist
mqsistat ISOBROKER
mqsistart ISOBROKER
mqsilist
mqsistart paybroker
mqsistart PAYBROKER
exit
sudo ssh-keygen -A 
echo "+:ALL:ALL" | sudo tee /etc/security/access.conf 
sudo rm -rf /run/nologin 
sudo /usr/sbin/sshd
ps -ef | grep LISTEN
netstat -an | grep LISTEN
exit
netstat -an | grep 22
netstat -an | grep 'tcp|LISTEN'
netstat -an | grep -e'tcp|LISTEN'
netstat -an | grep -e 'tcp|LISTEN'
netstat -an | grep -E 'tcp|LISTEN'
netstat -an | grep -E '0.0.0.0|LISTEN'
netstat -an | grep -E '0.0.0.0'
netstat -an | grep -E '0.0.0.0:*'
sudo ssh-keygen -A 
echo "+:ALL:ALL" | sudo tee /etc/security/access.conf 
sudo rm -rf /run/nologin 
sudo /usr/sbin/sshd
sudo rm -rf /run/nologin 
netstat -an | grep -E '0.0.0.0'
exit
cd /opt/IBM/ace-12.0.9.0/tools/plugins
ls
exit
echo $MQSI_WORKPATH
ls $MQSI_WORKPATH/Components/
ls $MQSI_WORKPATH/
ls $MQSI_WORKPATH/components/
echo MQSI_MQTT_LOCAL_HOSTNAME
exit
date
exit
sudo yum install -y sshfs
sshfs
sudo yum install -y fuse-sshfs
sudo yum -y install epel-release
sudo yum install -y fuse-sshfs
sshfs
sudo yum config-manager --set-enabled PowerTools
sudo yum install -y fuse-sshfs
sudo dnf config-manager --set-enabled codeready-builder-for-rhel-8-x86_64-rpms
sudo dnf install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
sudo dnf config-manager --set-enabled codeready-builder-for-rhel-8-x86_64-rpms
sudo yum install -y fuse-sshfs
sshfs
sudo yum install cifs-utils
sudo mount -t cifs -o username=YOUR_USERNAME,password=YOUR_PASSWORD //SERVER/SHARENAME /mnt/samba_mount
sudo mount -t cifs -o username=marshall,password=P@ssw0rds //192.168.56.105/SHARE /MQHA
sudo mount -t cifs -o username=marshall,password=P@ssw0rds //192.168.56.
sudo mount -t cifs -o username=marshall,password=P@ssw0rds //192.168.56.105/SHARE /MQHA
exit
ls
mqsilist
dspmq
clear
ls
ls /MQHA
clear
ifconfig
clear
exit
sudo ssh-keygen -A 
echo "+:ALL:ALL" | sudo tee /etc/security/access.conf 
sudo rm -rf /run/nologin 
sudo /usr/sbin/sshd
exit
mqsilist
mqsicreateexecutiongroup ITMBROKER -e ITMREST
mqsilist ITMBROKER
mqsisetdbparms ITMBROKER -n odbc::MDW -u db2inst1 -p mdw4dm1n
mqsistopmsgflow ITMBROKER -e ITMREST
mqsistartmsgflow ITMBROKER -e ITMREST
ls
ls /opt/mdw/
ls /opt/mdw/bar
mqsideploy ITMBROKER -e ITMREST -a /opt/mdw/bar/DB_RA.bar 
mqsistopmsgflow ITMBROKER -e ITMREST
mqsistartmsgflow ITMBROKER -e ITMREST
mqsilist ITMBROKER 
ls /var/mdw
ls -l /var/mdw
mqsireload -i ITMBROKER -e ITMREST
mqsilist
mqsistop ITMBROKER
mqsistart ITMBROKER
mqsilist
mqsilist ITMBROKER
mqsireload -i ITMBROKER -e ITMREST
mqsilist ITMBROKER -e ITMREST -d2
ls /opt
exit
ifconfig
exit
ifconfig
exit
mqsisetdbparms DUMBROKER -n odbc::MDW -u db2inst1 -p mdw4dm1n
mqsireload -i DUMBROKER -e DUMMY
echo $ODBCSYSINI
ls /opt/IBM/ace-12.0.9.0/ie02/etc
curl --header "Content-Type: application/json" --request POST --data "{\"tableName\":\"MWCONFIG.ADAPTOR\"}" http://localhost:8080/db_ra/v1/retrieve
curl --header "Content-Type: application/json" --request POST --data "{\"tableName\":\"MWCONFIG.ADAPTOR\"}" http://localhost:7080/db_ra/v1/retrieve
clear
mkdir -m 775 -p /MQHA/RESTBROKERQM/data
mkdir -m 775 -p /MQHA/RESTBROKERQM/log
crtmqm -md /MQHA/RESTBROKERQM/data -ld /MQHA/RESTBROKERQM/log $1
strmqm RESTBROKER.QM
echo DEFINE LISTENER(RESTBROKER.QM.QM) TRPTYPE(TCP) PORT (1577) CONTROL(STARTONLY) | runmqsc RESTBROKER.QM
echo DEFINE CHANNEL(SYSTEM.ADMIN.SVRCONN) CHLTYPE(SVRCONN) | runmqsc RESTBROKER.QM
echo ALTER QMGR CHLAUTH(DISABLED) | runmqsc RESTBROKER.QM
echo START CHANNEL(SYSTEM.ADMIN.SVRCONN) | runmqsc RESTBROKER.QM
echo START LISTENER(RESTBROKER.QM.QM) | runmqsc RESTBROKER.QM
echo ALTER QMGR CONNAUTH(' ') | runmqsc RESTBROKER.QM
echo REFRESH SECURITY TYPE(CONNAUTH) | runmqsc RESTBROKER.QM
echo SET CHLAUTH(SYSTEM.ADMIN.SVRCONN) TYPE(ADDRESSMAP) ADDRESS(*) ACTION(REMOVE) | runmqsc RESTBROKER.QM
echo SET CHLAUTH(SYSTEM.*) TYPE(ADDRESSMAP) ADDRESS(*) ACTION(REMOVE) | runmqsc RESTBROKER.QM
echo SET CHLAUTH(*) TYPE(BLOCKUSER) USERLIST(*MQADMIN) ACTION(REMOVE) | runmqsc RESTBROKER.QM
echo ALTER CHANNEL(SYSTEM.ADMIN.SVRCONN) CHLTYPE(SVRCONN) MCAUSER('admmdw') | runmqsc RESTBROKER.QM
mkdir -m 775 -p /MQHA/RESTBROKER
mqsicreatebroker RESTBROKER -q RESTBROKER.QM -e /MQHA/RESTBROKER
mqsichangeproperties RESTBROKER -b webadmin -o HTTPConnector -n port -v 4577
mqsistart RESTBROKER
mqsicreateexecutiongroup RESTBROKER -e RESTROUTER
mqsichangeproperties RESTBROKER -e RESTROUTER -o ComIbmJVMManager -n jvmMaxHeapSize -v 1073741824
mqsistopmsgflow RESTBROKER -e RESTROUTER
mqsistartmsgflow RESTBROKER -e RESTROUTER
dspmq
ls -l /MQHA
crtmqm -md /MQHA/RESTBROKERQM/data -ld /MQHA/RESTBROKERQM/log RESTBROKER.QM
strmqm RESTBROKER.QM
echo "DEFINE LISTENER(RESTBROKER.QM.QM) TRPTYPE(TCP) PORT (1577) CONTROL(STARTONLY)" | runmqsc RESTBROKER.QM
echo "DEFINE CHANNEL(SYSTEM.ADMIN.SVRCONN) CHLTYPE(SVRCONN)" | runmqsc RESTBROKER.QM
echo "ALTER QMGR CHLAUTH(DISABLED)" | runmqsc RESTBROKER.QM
echo "START CHANNEL(SYSTEM.ADMIN.SVRCONN)" | runmqsc RESTBROKER.QM
echo "START LISTENER(RESTBROKER.QM.QM)" | runmqsc RESTBROKER.QM
echo "ALTER QMGR CONNAUTH(' ')" | runmqsc RESTBROKER.QM
echo "REFRESH SECURITY TYPE(CONNAUTH)" | runmqsc RESTBROKER.QM
echo "SET CHLAUTH(SYSTEM.ADMIN.SVRCONN) TYPE(ADDRESSMAP) ADDRESS(*) ACTION(REMOVE)" | runmqsc RESTBROKER.QM
echo "SET CHLAUTH(SYSTEM.*) TYPE(ADDRESSMAP) ADDRESS(*) ACTION(REMOVE)" | runmqsc RESTBROKER.QM
echo "SET CHLAUTH(*) TYPE(BLOCKUSER) USERLIST(*MQADMIN) ACTION(REMOVE)" | runmqsc RESTBROKER.QM
echo "ALTER CHANNEL(SYSTEM.ADMIN.SVRCONN) CHLTYPE(SVRCONN) MCAUSER('admmdw')" | runmqsc RESTBROKER.QM
clear
dspmq
mqsilist
mqsistart RESTBROKER 
ls
ls -l /opt/IBM/ace-12.0.9.0/server/ODBC/drivers/
ls -l /opt/IBM/ace-12.0.9.0/server/ODBC/
ls -l /opt/IBM/ace-12.0.9.0/server/ODBC/dsdriver/
ls -l /opt/IBM/ace-12.0.9.0/server/ODBC/dsdriver/odbc_cli/
ls -l /opt/IBM/ace-12.0.9.0/server/ODBC/dsdriver/odbc_cli/clidriver/
ls -l /opt/IBM/ace-12.0.9.0/server/ODBC/dsdriver/odbc_cli/clidriver/lib
ls
exit
ls
exit
mqsilist
mqsilist TESBROKER
telnet 10.42.0.1
curl DECLARE cache SHARED ROW;
DECLARE client_id EXTERNAL CHARACTER 'Default';
DECLARE client_secret EXTERNAL CHARACTER 'Default';
DECLARE scope EXTERNAL CHARACTER 'Default';
DECLARE grant_type EXTERNAL CHARACTER 'Default';
CREATE COMPUTE MODULE postPostKnowlledge_Compute
DECLARE BACKEND_URL CHARACTER 'http://localhost:3000/token';
CREATE FUNCTION Main() RETURNS BOOLEAN
BEGIN
vironment = InputLocalEnvironment;
FIG.TOKEN_3RD_PARTY AS A WHERE A.CODE = 'SHARE');
OT NULL AND res.data.EXPIRY > CURRENT_TIMESTAMP THEN
vironment.TOKEN = res.data.TOKEN;
AL 'out1';
.Data = InputLocalEnvironment.OriginalRequest.JSON.Data;
uestHeader.Host = SUBSTRING(SUBSTRING(BACKEND_URL AFTER '://') BEFORE '/');
    SET OutputRoot.HTTPRequestHeader.Accept = '*/*';
uestHeader."Content-Type" = 'application/json';
        SET OutputRoot.HTTPRequestHeader."User-Agent" = 'BTN-MDW';
    SET OutputRoot.HTTPRequestHeader."Content-Length" = LENGTH(InputRoot.JSON.Data);
vironment.Destination.HTTP.RequestURL = BACKEND_URL;
vironment.OriginalRequest = InputRoot;
AL 'out'; TRUE;
D IF;
END;
END MODULE;
curl -v
curl --v
curl --header "Content-Type: application/json" --request POST --data "{\"test\":\"java_type\", \"firstName\":\"John\", \"lastName\":\"Doe\"}" http://10.42.0.1:3000/token
mqsideploy TESBROKER -e TESROUTER -a /opt/mdw/bar/TESBROKER/REST_API.bar -w 3600
curl --header "Content-Type: application/json" --request POST --data "{\"test\":\"java_type\", \"firstName\":\"John\", \"lastName\":\"Doe\"}" http://10.42.0.1:8091/rest_api_share_knowledge/v1/PostKnowlledge
curl --header "Content-Type: application/json" --request POST --data "{\"test\":\"java_type\", \"firstName\":\"John\", \"lastName\":\"Doe\"}" http://localhost:8091/rest_api_share_knowledge/v1/PostKnowlledge
clearTM_APP -w 3600
mqsideploy TESBROKER -e TESROUTER -d REST_API -w 3600
mqsideploy TESBROKER -e TESROUTER -d REST_API_SHARE_KNOWLEDGE -w 3600
mqsideploy TESBROKER -e TESROUTER -d TEST_LIBRARY -w 3600
mqsideploy TESBROKER -e TESROUTER -a /opt/mdw/bar/TESBROKER/REST_API.bar -w 3600
mqsilist
mqsideploy TESBROKER -e TESROUTER -d REST_API_SHARE_KNOWLEDGE -w 3600
mqsideploy TESBROKER -e TESROUTER -d TEST_LIBRARY -w 3600
mqsideploy TESBROKER -e TESROUTER -a /opt/mdw/bar/TESBROKER/REST_API.bar -w 3600
curl --header "Content-Type: application/json" --request POST --data "{\"test\":\"java_type\", \"firstName\":\"John\", \"lastName\":\"Doe\"}" http://localhost:8091/rest_api_share_knowledge/v1/PostKnowlledge
mqsideploy TESBROKER -e TESROUTER -d REST_API_SHARE_KNOWLEDGE -w 3600
mqsideploy TESBROKER -e TESROUTER -d TEST_LIBRARY -w 3600
mqsideploy TESBROKER -e TESROUTER -a /opt/mdw/bar/TESBROKER/REST_API.bar -w 3600
curl --header "Content-Type: application/json" --request POST --data "{\"test\":\"java_type\", \"firstName\":\"John\", \"lastName\":\"Doe\"}" http://localhost:8091/rest_api_share_knowledge/v1/PostKnowlledge
tail -f -n 10000 /var/mdw/wmb-TESBROKER-TESROUTER.log 
curl --header "Content-Type: application/json" --request POST --data "{\"test\":\"java_type\", \"firstName\":\"John\", \"lastName\":\"Doe\"}" http://localhost:8091/rest_api_share_knowledge/v1/PostKnowlledge
tail -f -n 10000 /var/mdw/wmb-TESBROKER-TESROUTER.log 
curl --header "Content-Type: application/json" --request POST --data "{\"test\":\"java_type\", \"firstName\":\"John\", \"lastName\":\"Doe\"}" http://localhost:8091/rest_api_share_knowledge/v1/PostKnowlledge
tail -f -n 10000 /var/mdw/wmb-TESBROKER-TESROUTER.log 
curl --header "Content-Type: application/json" --request POST --data "{\"test\":\"java_type\", \"firstName\":\"John\", \"lastName\":\"Doe\"}" http://localhost:8091/rest_api_share_knowledge/v1/PostKnowlledge
tail -f -n 10000 /var/mdw/wmb-TESBROKER-TESROUTER.log 
curl --header "Content-Type: application/json" --request POST --data '{"phoneNumber":"08123456789","amount":"50000"}' http://localhost:8091/rest_api_share_knowledge/v1/PostKnowlledge -w "\n"
curl --header "Content-Type: application/json" --request POST --data "{\"test\":\"java_type\", \"firstName\":\"John\", \"lastName\":\"Doe\"}" http://localhost:3000/token
curl --header "Content-Type: application/json" --request POST --data "{\"test\":\"java_type\", \"firstName\":\"John\", \"lastName\":\"Doe\"}" http://192.168.200.247:3000/token
clear
curl --header "Content-Type: application/json" --request POST --data '{"phoneNumber":"08123456789","amount":"50000"}' http://localhost:8091/rest_api_share_knowledge/v1/PostKnowlledge -w "\n"
curl --header "Content-Type: application/json" --request POST --data "{\"test\":\"java_type\", \"firstName\":\"John\", \"lastName\":\"Doe\"}" http://localhost:3000/purchase
curl --header "Content-Type: application/json" --request POST --data "{\"test\":\"java_type\", \"firstName\":\"John\", \"lastName\":\"Doe\"}" http://192.168.200.247:3000/purchase
curl --header "Content-Type: application/json" --request POST --data '{"phoneNumber":"08123456789","amount":"50000"}' http://localhost:8091/rest_api_share_knowledge/v1/PostKnowlledge -w "\n"
curl --header "Content-Type: application/json" --request POST --data '{"phoneNumber":"08123456789","amount":"50000"}' http://10.1.207.27:3000/token -w "\n"
curl --header "Content-Type: application/json" --request POST --data '{"phoneNumber":"08123456789","amount":"50000"}' http://localhost:8091/rest_api_share_knowledge/v1/PostKnowlledge -w "\n"
curl --header "Content-Type: application/json" --request POST --data '{"phoneNumber":"08123456789","amount":"50000"}' http://10.1.207.27:3000/token -w "\n"
curl --header "Content-Type: application/json" --request POST --data '{"phoneNumber":"08123456789","amount":"50000"}' http://localhost:8091/rest_api_share_knowledge/v1/PostKnowlledge -w "\n"
db2 reorg table MWCONFIG.TOKEN_3RD_PARTY
db2 connect
ssh db2inst@10.10.10.36
curl --header "Content-Type: application/json" --request POST --data '{"phoneNumber":"08123456789","amount":"50000"}' http://localhost:8091/rest_api_share_knowledge/v1/PostKnowlledge -w "\n"
dspmq
runmqsc ITMBROKER.QM
mqsilist
exit
curl --header "Content-Type: application/json" --request POST --data '{"phoneNumber":"08123456789","amount":"50000"}' http://localhost:8091/rest_api_share_knowledge/v1/PostKnowlledge -w "\n"
curl --header "Content-Type: application/json" --request POST --data '{"phoneNumber":"08123456789","amount":"50000"}' http://localhost:8091/testretrieve/v1/MANDIRI/RETRIEVE -w "\n"
curl --header "Content-Type: application/json" --request POST --data '{"phoneNumber":"08123456789","amount":"50000"}' http://localhost:8091/rest_api_share_knowledge/v1/PostKnowlledge -w "\n"
mqsilist
curl --header "Content-Type: application/json" --request POST --data '{"phoneNumber":"08123456789","amount":"50000"}' http://localhost:8091/rest_api_share_knowledge/v1/PostKnowlledge -w "\n"
curl --header "Content-Type: application/json" --request POST --data '{"phoneNumber":"08123456789","amount":"50000"}' http://localhost:8091/dummyretrieve/v1/dummyretrieve -w "\n"
ks
ls
mqsilist
exit
mqsilist
ps -ef | grep TCP
runmqsc ITMBROKER.QM
clear
runmqsc ITMBROKER.QM
mqsilist
echo "SET AUTHREC PROFILE(*) OBJTYPE(QUEUE) GROUP('MQ_ACCESS_GROUP') +"
echo "AUTHADD(put,inq,get) +"
echo "REPLACE" | runmqsc QMGR_NAME
echo "SET AUTHREC PROFILE(*) OBJTYPE(QUEUE) GROUP('MQ_ACCESS_GROUP') +"
echo "AUTHUSER('$USER_NAME') +"
echo "REPLACE" | runmqsc QMGR_NAME
echo "SET AUTHREC PROFILE(*) OBJTYPE(QUEUE) PRINCIPAL('admmdw') +"
echo "AUTHADD(put,inq,get) +"
echo "REPLACE" | runmqsc QMGR_NAME
echo "SET AUTHREC PROFILE(*) OBJTYPE(QUEUE) GROUP('MQ_ACCESS_GROUP') +"
echo "AUTHADD(put,inq,get) +"
echo "REPLACE" | runmqsc ITMBROKER.QM
echo "SET AUTHREC PROFILE(*) OBJTYPE(QUEUE) GROUP('MQ_ACCESS_GROUP') +"
echo "AUTHUSER('$USER_NAME') +"
echo "REPLACE" | runmqsc ITMBROKER.QM
echo "SET AUTHREC PROFILE(*) OBJTYPE(QUEUE) PRINCIPAL('admmdw') +"
echo "AUTHADD(put,inq,get) +"
echo "REPLACE" | runmqsc ITMBROKER.QM
SET AUTHREC PROFILE(QUEUE.NAME) OBJTYPE(QUEUE) PRINCIPAL('admmdw') +
   AUTHADD(put,inq,get) +
   REPLACE
runmqsc ITMBROKER.QM
clear
runmqsc ITMBROKER.QM
clear
echo "SET AUTHREC OBJTYPE(QUEUE) PRINCIPAL('admmdw') AUTHADD(put,inq,get) PROFILE(QUEUE.NAME) REPLACE" | runmqsc ITMBROKER.QM
clear
dspmqaut -m ITMBROKER.QM -t qmgr -p admmdw
tail -f -n 1000 /var/mqm/errors/AMQERR01.LOG 
ls -l /var/mqm/errors
tail -f -n 1000 /var/mqm/errors/AMQERR01.LOG 
exit
dspmq
ls
cd ~
ls
exit
exit
echo $MQSAMP_USER_ID
runmqsc -u admmdw ITMBROKER.QM
runmqsc -u admmdw
runmqsc -u admmdw ITMBROKER.QM
runmqsc ITMBROKER.QM
dspmqcsv
dspmqcsv ITMBROKER.QM
dspmqcsv PAYBROKER.QM
exit
ls
clear
mqsilist
exit
history
cd ~
ls
. mq_event.sh 
clear
. mq_event.sh 
exit
amqsevt -m DUMBROKER.QM
cd ~
cat mq_event.sh 
exit
mqsilist
mqsistop ISOBROKER
mqsistop PAYBROKER
mqsistop DUMBROKER
mqsilist
dspmq
runmqsc ITMBROKER.QM
runmqsc ITMBROKER.QM -u admmdw
echo "Ini adalah pesan tes" | amqsput TEST.QUEUE ITMBROKER.QM
dmpmqmsg -m ITMBROKER.QM -o TEST.QUEUE -f ./TEST
dmpmqmsg -m ITMBROKER.QM -u admmdw -o TEST.QUEUE -f ./TEST
dmpmqmsg -m ITMBROKER.QM -u admmdw -p mdw4dm1n -o TEST.QUEUE -f ./TEST
dmpmqmsg -m ITMBROKER.QM -u admmdw -o TEST.QUEUE -f ./TEST
ls
cd ~
dmpmqmsg -m ITMBROKER.QM -u admmdw -o TEST.QUEUE -f ./TEST
touch test.log
dmpmqmsg -m ITMBROKER.QM -u admmdw -o TEST.QUEUE -f ~/test.log
cat ~/test.log 
dmpmqmsg -m ITMBROKER.QM -u admmdw -o TEST.QUEUE -f ~/test.log
amqsget SYSTEM.ADMIN.PERFM.EVENT ITMBROKER.QM
runmqsc ITMBROKER.QM
runmqsc ITMBROKER.QM -u admmdw
echo "DISPLAY QSTATUS('SYSTEM.ADMIN.PERFM.EVENT')" | runmqsc ITMBROKER.QM -u admmdw
runmqsc ITMBROKER.QM -u admmdw
amqsget SYSTEM.ADMIN.PERFM.EVENT ITMBROKER.QM
echo "DISPLAY QSTATUS('SYSTEM.ADMIN.PERFM.EVENT')" | runmqsc ITMBROKER.QM -u admmdw
runmqsc ITMBROKER.QM -u admmdw
crtmqm QM1
strmqm QM1
runmqsc QM1
ps -ef | grep TCP
dspmq
runmqsc DUMBROKER.QM
amqsget TEST.QUEUE DUMBROKER.QM
mqsget TEST.QUEUE DUMBROKER.QM
ls /opt/mqm/samp/bin/amqsget TEST.QUEUE DUMBROKER.QM
/opt/mqm/samp/bin/amqsget TEST.QUEUE DUMBROKER.QM
echo 'export PATH=$PATH:/opt/mqm/samp/bin/' >> ~/.bashrc
source ~/.bashrc
amqsget TEST.QUEUE DUMBROKER.QM
echo "Ini adalah pesan tes" | amqsput TEST.QUEUE ITMBROKER.QM
echo "tes" | amqsput TEST.QUEUE DUMBROKER.QM
touch mq_event.sh
sudo chmod +x mq_event.sh 
nano mq_event.sh 
mq_event.sh 
./mq_event.sh 
nano mq_event.sh 
./mq_event.sh 
nano mq_event.sh 
./mq_event.sh 
nano mq_event.sh 
./mq_event.sh 
nano mq_event.sh 
./mq_event.sh 
echo "display qstatus(TEST.QUEUE)" | runmqsc DUMBROKER.QM
echo "display qstatus(SYSTEM.ADMIN.PERFM.EVENT)" | runmqsc DUMBROKER.QM
amqsget SYSTEM.ADMIN.PERFM.EVENT DUMBROKER.QM
echo "display qlocal(TEST.QUEUE)" | runmqsc DUMBROKER.QM
nano mq_event.sh 
echo "display qlocal(TEST.QUEUE)" | runmqsc DUMBROKER.QM
nano mq_event.sh 
./mq_event.sh 
nano mq_event.sh 
./mq_event.sh 
amqsget SYSTEM.ADMIN.PERFM.EVENT DUMBROKER.QM
amqsget ABC DUMBROKER.QM
nano mq_event.sh 
./mq_event.sh 
amqsget SYSTEM.ADMIN.PERFM.EVENT DUMBROKER.QM
amqsget ABC DUMBROKER.QM
amqsget SYSTEM.ADMIN.PERFM.EVENT DUMBROKER.QM
nano mq_event.sh 
amqsget SYSTEM.ADMIN.PERFM.EVENT DUMBROKER.QM
./mq_event.sh 
nano mq_event.sh 
amqsget SYSTEM.ADMIN.PERFM.EVENT ABC DUMBROKER.QM
amqsget SYSTEM.ADMIN.PERFM.EVENT DUMBROKER.QM
amqsget --help
amqsget
amqsget abc DUMBROKER.QM
amqsget ABC DUMBROKER.QM
amqsget SYSTEM.ADMIN.PERFM.EVENT DUMBROKER.QM
amqsevt -m QM1 -o json -w 2 |  jq 'select(.eventReason == 2053) | 
     .eventData.baseObjectName ' "FULLEVT"
amqsevt -m DUMBROKER.QM
./mq_event.sh 
amqsevt -m DUMBROKER.QM
nano mq_event.sh 
amqsevt -m DUMBROKER.QM
amqsevt -m QM1 -o json -w 2 |  jq 'select(.eventReason == 2053) | 
     .eventData.baseObjectName ' "FULLEVT"
./mq_event.sh 
amqsevt -m DUMBROKER.QM
runmqsc DUMBROKER.QM
./mq_event.sh 
amqsevt -m DUMBROKER.QM
./mq_event.sh 
amqsevt -m DUMBROKER.QM
./mq_event.sh 
cat mq_event.sh 
echo "<data>Message $i</data>" | amqsput
echo "<data>Message $i</data>" | amqsput ABC DUMBROKER.QM
amqsget ABC DUMBROKER.QM
echo "<data>Message $i</data>" | amqsput ABC DUMBROKER.QM
amqsget ABC DUMBROKER.QM
amqsevt -m QM1 -o json -w 2 |  jq 'select(.eventReason == 2053) | 
     .eventData.baseObjectName ' "FULLEVT"
amqsevt -m DUMBROKER.QM -o json -w 2 |  jq 'select(.eventReason == 2053) | 
     .eventData.baseObjectName ' "FULLEVT"
amqsevt -m DUMBROKER.QM -o json -w 2 | jq 'select(.eventReason == 2053) | .eventData.baseObjectName'
echo "<data>Message $i</data>" | amqsput ABC DUMBROKER.QM
amqsevt -m DUMBROKER.QM -o json -w 2 | jq 'select(.eventReason == 2053) | .eventData.baseObjectName'
echo "<data>Message $i</data>" | amqsput ABC DUMBROKER.QM
amqsevt -m DUMBROKER.QM
echo "<data>Message $i</data>" | amqsput ABC DUMBROKER.QM
amqsget ABC DUMBROKER.QM
echo "<data>Message $i</data>" | amqsput ABC DUMBROKER.QM
echo "<data>Message</data>" | amqsput ABC DUMBROKER.QM
amqsget ABC DUMBROKER.QM
echo "<data>Message</data>" | amqsput ABC DUMBROKER.QM
amqsget ABC DUMBROKER.QM
echo "<data>Message</data>" | amqsput ABC DUMBROKER.QM
amqsget ABC DUMBROKER.QM
echo "<data>Message</data>" | amqsput ABC DUMBROKER.QM
amqsget ABC DUMBROKER.QM
echo "<data>Message</data>" | amqsput ABC DUMBROKER.QM
amqsget ABC DUMBROKER.QM
amqsevt -m DUMBROKER.QM
clear
echo "<data>Message</data>" | amqsput ABC DUMBROKER.QM
amqsget ABC DUMBROKER.QM
echo "<data>Message</data>" | amqsput ABC DUMBROKER.QM
amqsget ABC DUMBROKER.QM
echo "<data>Message</data>" | amqsput ABC DUMBROKER.QM
amqsget ABC DUMBROKER.QM
echo "<data>Message</data>" | amqsput ABC DUMBROKER.QM
amqsget ABC DUMBROKER.QM
echo "<data>Message</data>" | amqsput ABC DUMBROKER.QM
amqsget ABC DUMBROKER.QM
echo "<data>Message</data>" | amqsput ABC DUMBROKER.QM
amqsget ABC DUMBROKER.QM
echo "<data>Message</data>" | amqsput ABC DUMBROKER.QM
amqsget ABC DUMBROKER.QM
echo "<data>Message</data>" | amqsput ABC DUMBROKER.QM
amqsget ABC DUMBROKER.QM
echo "<data>Message</data>" | amqsput ABC DUMBROKER.QM
amqsget ABC DUMBROKER.QM
echo "<data>Message</data>" | amqsput ABC DUMBROKER.QM
amqsget ABC DUMBROKER.QM
echo "<data>Message</data>" | amqsput ABC DUMBROKER.QM
amqsget ABC DUMBROKER.QM
echo "<data>Message</data>" | amqsput ABC DUMBROKER.QM
amqsget ABC DUMBROKER.QM
echo "<data>Message</data>" | amqsput ABC DUMBROKER.QM
amqsget ABC DUMBROKER.QM
echo "<data>Message</data>" | amqsput ABC DUMBROKER.QM
amqsget ABC DUMBROKER.QM
echo "<data>Message</data>" | amqsput ABC DUMBROKER.QM
amqsget ABC DUMBROKER.QM
runmqsc PAYBROKER.QM
amqsget ABC DUMBROKER.QM
echo "<data>Message</data>" | amqsput ABC DUMBROKER.QM
amqsget ABC DUMBROKER.QM
exit
curl --header "Content-Type: application/json" --request POST --data '{"test":"java_type", "firstName":"John", "lastName":"Doe"}' http://localhost:9091/ace_lib_ra/v1/test  -w '\n'
ls ~-al
ls -al ~
cat test.log
cat ~/test.log
cd ~
em test.log 
rm -rf test.log 
ls -al
curl --header "Content-Type: application/json" --request POST --data '{"test":"java_type", "firstName":"John", "lastName":"Doe"}' http://localhost:9091/ace_lib_ra/v1/test -w '\n'
curl --header "Content-Type: application/json" --request POST --data '{"test":"log", "firstName":"John", "lastName":"Doe"}' http://localhost:9091/ace_lib_ra/v1/test -w '\n'
exit
mqsistart RESTBROKER
mqsilist
dspmq
strmqm RESTBROKER.QM
mqsistart RESTBROKER
mqsilist
cd ~
ls
mqsideploy RESTBROKER -e RESTROUTER -a ACE_LIB_RA.bar 
ls
ll
ls -l
mqsideploy RESTBROKER -e RESTROUTER -a ACE_LIB_RA.bar 
mqsichangeproperties RESTBROKER -b JVM -o jvmSystemProperty -n '-Dlogback.configurationFile' -v '/opt/mdw/jplugin/logback.xml'
mqsichangeproperties RESTBROKER -o jvmSystemProperty -n '-Dlogback.configurationFile' -v '/opt/mdw/jplugin/logback.xml'
clear
mqsichangeproperties RESTBROKER -o jvmSystemProperty -n '-Dlogback.configurationFile' -v '/opt/mdw/jplugin/logback.xml'
clear
mqsichangeproperties RESTBROKER -e RESTROUTER -o jvmSystemProperty -n '-Dlogback.configurationFile' -v '/opt/mdw/jplugin/logback.xml'
mqsichangeproperties RESTBROKER -e RESTROUTER -o ComIbmJVMManager -n jvmSystemProperty -v '-Dlogback.configurationFile=/opt/mdw/jplugin/logback.xml'
mqsireportproperties RESTBROKER -e RESTROUTER -o ComIbmJVMManager -n jvmSystemProperty
ls /opt/mdw/jplugin/logback.xml 
mqistop RESTBROKER && mqsistart RESTBROKER
mqsistop RESTBROKER && mqsistart RESTBROKER
curl --header "Content-Type: application/json" --request POST --data {"test":"java_type", "firstName":"John", "lastName":"Doe"}' http://localhost:9091/ace_lib_ra/v1/test
curl --header "Content-Type: application/json" --request POST --data '{"test":"java_type", "firstName":"John", "lastName":"Doe"}' http://localhost:9091/ace_lib_ra/v1/test
curl --header "Content-Type: application/json" --request POST --data '{"test":"log", "firstName":"John", "lastName":"Doe"}' http://localhost:9091/ace_lib_ra/v1/test
mqsistop RESTBROKER && mqsistart RESTBROKER
curl --header "Content-Type: application/json" --request POST --data '{"test":"log", "firstName":"John", "lastName":"Doe"}' http://localhost:9091/ace_lib_ra/v1/test
clear
curl --header "Content-Type: application/json" --request POST --data '{"test":"log", "firstName":"John", "lastName":"Doe"}' http://localhost:9091/ace_lib_ra/v1/test -w '\n'
curl --header "Content-Type: application/json" --request POST --data '{"test":"java_type", "firstName":"John", "lastName":"Doe"}' http://localhost:9091/ace_lib_ra/v1/test  -w '\n'
mqsistop RESTBROKER && mqsistart RESTBROKER
exit
cat /opt/mdw/jplugin/logback.xml 
nano /opt/mdw/jplugin/logback.xml 
exit
cat ~/.bashrc
ls /opt
ls /opt/mqm
exit
exit
clear
dspmq
echo "<data>Message</data>" | amqsput ABC DUMBROKER.QM
amqsget ABC DUMBROKER.QM
clear
echo "<data>Message</data>" | amqsput ABC DUMBROKER.QM
clear
echo "<data>Message</data>" | amqsput ABC DUMBROKER.QM
amqsget ABC DUMBROKER.QM
exit
mqsilist
exit
mqsilist
exot
exit
mqsilist
clea
clear
mqsilist
mqsistart RESTBROKER
exit
mqsistartmsgflow ISOBROKER -e ISOLOGDB
mqsilist ISOBROKER
exit
dspmq
strmqm ITMBROKER.QM
mqsistart ITMBROKER
mqsilist
exit
ls
ipconfig
ifconfig 
history
ifconfig
exit
ls
mqsilist
dspmq
ps -ef | grep TCP
ping 8.8.8.8
ping newmbankingdev.btn.co.id
curl newmbankingdev.btn.co.id
curl mbankingdev.btn.co.id
curl -v mbankingdev.btn.co.id
cd ~
ls
exit
ls
clear
git clone https://172.15.30.6/hanoman.marshall/btnmw-ace/
sudo apt install git
exit
mqsilist
exit
mqsilist
mqsilist ISOBROKER
mqsilist ISOBROKER -e KONVEN1 -d2
exit
mqsilist
exit
mqsireload -i ITMBROKER -e ITMROUTER
exit
mqsireload -i ISOBROKER -e SYARIAH
make migrate
exit
mqsilist ISOBROKER
mqsireload -i ISOBROKER -e KONVEN1
exit
ping BTNCOREKONVEN
netstat -anop | grep 13000
mqsitop ITMBROKER -e ITMCORE1
mqsistop ITMBROKER -e ITMCORE1
exit
mqsireload -i ISOBROKER -e KONVEN1
exit
ls
mqsilist
cat config.yaml 
mqsilist
exit
mqsilist SVCBROKER -e RESTROUTER -d2
mqsilist SVCBROKER -e SVCLOGBD -d2
mqsilist SVCBROKER
mqsilist
mqsideploy SVCBROKER -e RESTROUTER -a /opt/mdw/bar/SVCBROKER/RESTROUTER/ROUTER_REST_APP.bar 
netstat -an | grep 7080
mqsideploy SVCBROKER -e SVCLOGDB -a /opt/mdw/bar/SVCBROKER/SVCLOGDB/LOG_DB_BAR.bar 
mqsideploy SVCBROKER -e SVCLOGDB -a /opt/mdw/bar/SVCBROKER/SVCLOGDB/LOG_DB_JSON_BAR.bar 
mqsilist SVCBROKER -e SVCLOGBD -d2
mqsilist SVCLOGDB
mqsilist SVCBROKER
mqsilist SVCBROKER -e SVCLOGBD -d2
mqsilist SVCBROKER -e SVCLOGDB -d2
mqsilist SVCBROKER -e SVCLOGDB -d2 | grep BIP
mqsireload -i SVCBROKER
exit
ls
mqsilist
ls
mqsilist
clear
mqsilist
ls /MQHA
ls -al
cd /opt/mdw/bar/
ls
pwd ESQL_JAVA_BAR.bar
mqsilist 
mqsilist SVCBROKER
mqsideploy SVCBROKER -e RESTROUTER -a /opt/mdw/bar/ESQL_JAVA_BAR.bar
mqsideploy SVCBROKER -e RESTROUTER -a /opt/mdw/bar/ESQL_JAVA_APP.bar 
exit
mqsilist
curl -v http://localhost:7080/oauth/token/getToken
mqsilist
mqsichangeproperties SVCBROKER -f -e RESTROUTER -o ExecutionGroup -n httpNodesUseEmbeddedListener -v true
mqsichangeproperties SVCBROKER -e RESTROUTER -o HTTPConnector  -n ListenerPort -v 8081
mqsichangeproperties SVCBROKER -e RESTROUTER -o HTTPSConnector  -n ListenerPort -v 8082
mqsireload -i SVCBROKER -e RESTROUTER
netsta -an | grep LISTEB
netsta -an | grep LISTEN
netstat -an | grep LISTEN
mqsireload -i SVCBROKER
netstat -an | grep LISTEN | grep -v 'LISTENING'
mqsichangeproperties SVCBROKER -b NodeHttpListener -o HTTPSListener -n startListener -v false
mqsichangeproperties SVCBROKER -b NodeHttpListener -o HTTPListener -n startListener -v false
mqsireload -i SVCBROKER
netstat -an | grep LISTEN | grep -v 'LISTENING'
curl -v http://localhost:7080/oauth/token/getToken
curl -v http://localhost:7080/oauth/token/getToken -w '\n'
curl -v http://localhost:8081/oauth/token/getToken -w '\n'
netstat -an | grep 8081
curl -v http://127.0.0.1:8081/oauth/token/getToken -w '\n'
curl -v http://127.0.0.1:8081/oauth/token -w '\n'
curl -v http://127.0.0.1:8081/oauth/token/getToken -w '\n'
curl -x GET -v http://127.0.0.1:8081/oauth/token/getToken -w '\n'
curl -x GET http://127.0.0.1:8081/oauth/token/getToken -w '\n'
curl -x GET http://127.0.0.1:8081/CREATE PROCEDURE CopyEntireMessage() BEGIN -w '\n'
putRoot;
curl -x GET http://127.0.0.1:8081/openapi/v1/token -w '\n'
curl -x GET http://127.0.0.1:8081/openapi/v1/getToken -w '\n'
url -x GET http://127.0.0.1:8081/CREATE PROCEDURE CopyEntireMessage() BEGIN -w '\n'
url -x GET http://127.0.0.1:8081/
curl -x GET http://127.0.0.1:8081/
curl -X GET http://127.0.0.1:8081/
curl -X GET http://127.0.0.1:8081/openapi/v1/token
curl -Xv GET http://127.0.0.1:8081/openapi/v1/token
curl -v http://127.0.0.1:8081/openapi/v1/token
clear
curl -v http://127.0.0.1:8081/openapi/v1/token -w '\n'
clear
curl http://127.0.0.1:8081/openapi/v1/token -w '\n'
curl http://127.0.0.1:8081/openapi/oauth/token -w '\n'
time curl http://127.0.0.1:8081/openapi/oauth/token -w '\n'
clear
function parse_git_branch {     git branch 2>/dev/null | grep '^*' | sed 's/* //'; }
red='\033[1;31m'
green='\033[1;32m'
yellow='\033[1;33m'
blue='\033[1;34m'
magenta='\033[1;35m'
cyan='\033[1;36m'
white='\033[1;37m'
function git_info {     local branch=$(parse_git_branch);     if [ -n "$branch" ]; then         echo " (${green}${branch}${white})";     fi; }
PS1='\u in \w$(git_info)\n\$ '
exit
mqsilist
netstat -an | grep 8081
ls
netstat -an | grep LISTEN
ls
export COLORTERM=truecolor
alias nodeibm='cd /node-app/nodeibm;yarn start'
alias git-log='git log --oneline --decorate --color --graph' 
ansicolor() {     for i in {0..255}; do         echo -ne "\e[48;5;${i}m ${i} \e[0m";         if (( $i % 16 == 15 )); then             echo;         fi;     done;     echo ""; }
updatecmd() {     local red='\[\033[38;2;255;0;0m\]';     local green='\[\033[38;2;0;255;0m\]';     local yellow='\[\033[38;2;255;255;0m\]';     local blue='\[\033[38;2;0;0;255m\]';     local magenta='\[\033[38;2;255;0;255m\]';     local cyan='\[\033[38;2;0;255;255m\]';     local white='\[\033[38;2;255;255;255m\]';     local orange='\[\033[38;2;255;165;0m\]';     local pink='\[\033[38;2;255;192;203m\]';     local purple='\[\033[38;2;128;0;128m\]';     local lime='\[\033[38;2;0;255;0m\]';     local teal='\[\033[38;2;0;128;128m\]';     local brown='\[\033[38;2;165;42;42m\]';     local reset='\[\033[0m\]';     local datetime=$(date +"%Y-%m-%d %H:%M:%S.%3N");     local branch=$(git branch 2>/dev/null | grep '^*' | sed 's/* //');     local date="📅 %A, %d %B %Y";     local time="🕛 %H:%M:%S.%3N";     local date_time="$(date +"$date%n$time")";      if [ -n "$branch" ]; then         PS1="\n${date_time}\n${yellow}\u ${blue}in ${magenta}\w (${branch})${white}\n\$ ";     else         PS1="\n${date_time}\n${yellow}\u ${blue}in ${magenta}\w${white}\n\$ ";     fi; }
PROMPT_COMMAND=updatecmd
ks
ls
clear
nano .bashrc
nano ~/.bashrc
source ~/.bashrc
exit
mqsilist
exit
tail -f -n ~/logfile.log 
tail -f -n 100 ~/logfile.log 
ls
cd ~
ls -l
> logfile.log 
ls -l
> logfile.log 
mqsilist
ls
> logfile.log 
mqsistop SVCBROKER
mqsilist
mqsistartSVCBROKER
mqsistart SVCBROKER
mqsistop SVCBROKER
ps -ef | grep Dataflow
ps -ef | grep DataFlow
kill -9 10312
ps -ef | grep DataFlow
ps -ef | grep SVCBROKER
ps -ef | grep bipbroker
mqsilist SVCBROKER
kill -9 17050
mqsilist SVCBROKER
> logfile.log 
tail -f -n 10000 ~/logfile.log 
exit
exit
mqsichangeproperties SVCBROKER  -b NodeHttpListener -o HTTPListener -n startListener -v false
mqsichangeproperties SVCBROKER -f -e RESTROUTER -o ExecutionGroup -n httpNodesUseEmbeddedListener -v true
mqsichangeproperties SVCBROKER -e RESTROUTER -o HTTPConnector  -n ListenerPort -v 8081
mqsichangeproperties SVCBROKER -e RESTROUTER -o HTTPSConnector  -n ListenerPort -v 8082
mqsireload -i SVCBROKER -e RESTROUTER
exit
ls /opt/mdw/
ls
cd /opt/mdw/btnmw-ace/
ls
mqsicreatebar -data . -b ./JALIN_GETTOKEN_APP/JALIN_GETTOKEN_APP.bar -a JALIN_GETTOKEN_APP -trace -cleanBuild -deployAsSource | grep -v 'SWT'
cd JALIN_
cd JALIN_GETTOKEN_APP/
ls
cd ..
mqsicreatebar -data . -b ./BACKEND_RPG_APP/BAKEND_RPG_APP.bar -a BACKEND_RPG_APP -trace -cleanBuild -deployAsSource | grep -v 'SWT'
echo $(LD_LIBRARY_PATH)
echo $LD_LIBRARY_PATH
sudo apt install libswt-gtk-4-java
yum -y  install libswt-gtk-4-java
sudo yum -y  install libswt-gtk-4-java
sudo yum -y  install libswt-gtk-3-java
sudo yum -y  install libswt-gtk-2-java
sudo yum search swt
sudo yum install epel-releasesudo yum update
cd ..
wget https://download.eclipse.org/eclipse/downloads/drops4/R-4.19-202103031800/download.php?dropFile=swt-4.19-gtk-linux-x86_64.zip -O swt-4.19-gtk-linux-x86_64.zip
unzip swt-4.19-gtk-linux-x86_64.zip -d /opt/libswt-gtk-4
sudo wget https://download.eclipse.org/eclipse/downloads/drops4/R-4.19-202103031800/download.php?dropFile=swt-4.19-gtk-linux-x86_64.zip -O swt-4.19-gtk-linux-x86_64.zip
sudo unzip swt-4.19-gtk-linux-x86_64.zip -d /opt/libswt-gtk-4
ls
unzip 
yum -y install unzip
sudo yum -y install unzip[B
sudo unzip swt-4.19-gtk-linux-x86_64.zip -d /opt/libswt-gtk-4
sudo unzip swt-4.19-gtk-linux-x86_64.zip -d swt
sudo unzip swt-4.19-gtk-linux-x86_64.zip
ls
sudo unzip swt-4.19-gtk-linux-x86_64.zip
unzip swt-4.19-gtk-linux-x86_64.zip
unzip swt-4.19-gtk-linux-x86_64.zip 
wget https://www.eclipse.org/downloads/download.php?file=/eclipse/downloads/drops4/R-4.19-202103031800/swt-4.19-gtk-linux-x86_64.zip -O swt-4.19-gtk-linux-x86_64.zip
sudo wget https://www.eclipse.org/downloads/download.php?file=/eclipse/downloads/drops4/R-4.19-202103031800/swt-4.19-gtk-linux-x86_64.zip -O swt-4.19-gtk-linux-x86_64.zip
ls -lh swt-4.19-gtk-linux-x86_64.zip
sudo unzip swt-4.19-gtk-linux-x86_64.zip -d /opt/libswt-gtk-4
ls -lh /opt/libswt-gtk-4
mqsicreatebar -data . -b ./BACKEND_RPG_APP/BAKEND_RPG_APP.bar -a BACKEND_RPG_APP -trace -cleanBuild -deployAsSource | grep -v 'SWT'
cd btnmw-ace/
mqsicreatebar -data . -b ./BACKEND_RPG_APP/BAKEND_RPG_APP.bar -a BACKEND_RPG_APP -trace -cleanBuild -deployAsSource | grep -v 'SWT'
ls /home/admmdw/.swt
ls /home/admmdw/.swt/lib/linux/x86_64/libswt-pi3-gtk-4932r18.so 
ls /home/admmdw/.swt/lib/linux/x86_64/lib*
mqsicreatebar -data . -b ./BACKEND_RPG_APP/BAKEND_RPG_APP.bar -a BACKEND_RPG_APP -trace -cleanBuild -deployAsSource | grep -v 'SWT'
ls -lh /opt/libswt-gtk-4
ls -lh /home/admmdw/.swt/lib/linux/x86_64/
cd ..
wget https://www.eclipse.org/downloads/download.php?file=/eclipse/downloads/drops4/R-4.21-202109060500/swt-4.21-gtk-linux-x86_64.zip -O swt-4.21-gtk-linux-x86_64.zip
sudo wget https://www.eclipse.org/downloads/download.php?file=/eclipse/downloads/drops4/R-4.21-202109060500/swt-4.21-gtk-linux-x86_64.zip -O swt-4.21-gtk-linux-x86_64.zip
unzip swt-4.21-gtk-linux-x86_64.zip -d /opt/libswt-gtk-4.21
sudo unzip swt-4.21-gtk-linux-x86_64.zip -d /opt/libswt-gtk-4.21
ls -lh /opt/libswt-gtk-4.21
ls -lh -p /home/admmdw/.swt/lib/linux/x86_64/
cp /opt/libswt-gtk-4.21/libswt-pi4-gtk-*.so /home/admmdw/.swt/lib/linux/x86_64/
sudo yum install swt
cd btnmw-ace/
mqsicreatebar -data . -b ./BACKEND_RPG_APP/BAKEND_RPG_APP.bar -a BACKEND_RPG_APP -trace -cleanBuild -deployAsSource | grep -v 'SWT'
sudo yum install swt
sudo find / -name 'libswt-pi4-gtk.so'
sudo find / -name 'libswt-pi4-gtk.so' > /dev/null
sudo find / -name 'libswt-pi4-gtk.so' > 2&1 > /dev/null
sudo find / -name 'libswt-pi4-gtk.so' > /dev/null
find / -name 'libswt-pi4-gtk.so' > /dev/null
find / -name 'libswt-pi4-gtk.so' 2>/dev/null
find / -name 'libswt' 2>/dev/null
exit
docker ps
mqsilist
cd /opt/mdw
cd btnmw-ace/
ls
mqsicreatebar -data . -b ./BACKEND_RPG_APP/BAKEND_RPG_APP.bar -a BACKEND_RPG_APP -trace -cleanBuild -deployAsSource | grep -v 'SWT'
cat /etc/os-release 
sudo apt-get install libswt-gtk-4-jni libswt-gtk-4-java
sudo dnf install wget unzip
mkdir -p /home/admmdw/.swt/lib/linux/x86_64/
ls /home/admmdw/.swt/lib/linux/x86_64/
cd /home/admmdw/.swt/lib/linux/x86_64/
wget http://archive.eclipse.org/eclipse/downloads/drops4/R-4.5-201506032000/swt-4.5-gtk-linux-x86_64.zip
unzip swt-4.5-gtk-linux-x86_64.zip
ls
export JAVA_OPTS="-Djava.library.path=/home/admmdw/.swt/lib/linux/x86_64/"
echo 'export JAVA_OPTS="-Djava.library.path=/home/admmdw/.swt/lib/linux/x86_64/"' >> ~/.bashrc
source ~/.bashrc
chmod 755 /home/admmdw/.swt/lib/linux/x86_64/*.so
cd /opt/mdw/btnmw-ace/
mqsicreatebar -data . -b ./BACKEND_RPG_APP/BAKEND_RPG_APP.bar -a BACKEND_RPG_APP -trace -cleanBuild -deployAsSource | grep -v 'SWT'
mqsicreatebar -data . -b ./BACKEND_RPG_APP/BAKEND_RPG_APP.bar -a BACKEND_RPG_APP -trace -cleanBuild -deployAsSource -clean
cd ..
ls
curl https://rpmfind.net/linux/mageia/distrib/8/x86_64/media/core/updates/eclipse-swt-4.17-8.1.mga8.x86_64.rpm
wget https://rpmfind.net/linux/mageia/distrib/8/x86_64/media/core/updates/eclipse-swt-4.17-8.1.mga8.x86_64.rpm
sudo wget https://rpmfind.net/linux/mageia/distrib/8/x86_64/media/core/updates/eclipse-swt-4.17-8.1.mga8.x86_64.rpm
sudo rpm -i eclipse-swt-4.17-8.1.mga8.x86_64.rpm 
sudo dnf install gtk3 java-11-openjdk-headless javapackages-tools mesa-libGL mesa-libGLU atk cairo-gobject cairo gdk-pixbuf2 gtk3 harfbuzz webkit2gtk3 java-11-openjdk-devel pango soup libsoup libjavascriptcoregtk4
cd /opt/mdw/btnmw-ace/
mqsicreatebar -data . -b ./BACKEND_RPG_APP/BAKEND_RPG_APP.bar -a BACKEND_RPG_APP -trace -cleanBuild -deployAsSource
chmod 755 /home/admmdw/.swt/lib/linux/x86_64/*.so
mqsicreatebar -data . -b ./BACKEND_RPG_APP/BAKEND_RPG_APP.bar -a BACKEND_RPG_APP -trace -cleanBuild -deployAsSource
ls /usr/lib/sudo update-alternatives --config java
sudo update-alternatives --config java
mqsicreatebar -data . -b ./BACKEND_RPG_APP/BAKEND_RPG_APP.bar -a BACKEND_RPG_APP -trace -cleanBuild -deployAsSource
echo "-Djava.library.path=/usr/lib/jni/" >> /etc/eclipse.ini
sudo echo "-Djava.library.path=/usr/lib/jni/" >> /etc/eclipse.ini
sudo yum -i libswt-gtk-4-jni
sudo yum install libswt-gtk-4-jni
yum install gtk2 libXtst xorg-x11-fonts-Type1
sudo yum install gtk2 libXtst xorg-x11-fonts-Type1
mqsicreatebar -data . -b ./BACKEND_RPG_APP/BAKEND_RPG_APP.bar -a BACKEND_RPG_APP -trace -cleanBuild -deployAsSource
java version
java
java -V
java -version
cd JALIN_GETTOKEN_APP/
ls
ls -la
mqsiapplybaroverride –b JALIN_GETTOKEN_APP.bar -p ./JALIN_TOKEN_APP.properties 
mqsiapplybaroverride –b ./JALIN_GETTOKEN_APP.bar -p ./JALIN_TOKEN_APP.properties 
mqsiapplybaroverride -b ./JALIN_GETTOKEN_APP.bar -p ./JALIN_TOKEN_APP.properties
clear
mqsiapplybaroverride -b ./JALIN_GETTOKEN_APP.bar -p ./JALIN_TOKEN_APP.properties
ls
cd ..
sudo chmod -R 777 JALIN_GETTOKEN_APP
cd JALIN_GETTOKEN_APP/
mqsiapplybaroverride -b ./JALIN_GETTOKEN_APP.bar -p ./JALIN_TOKEN_APP.properties
mqsiapplybaroverride -b ./JALIN_GETTOKEN_APP.bar -p ./JALIN_TOKEN_APP.properties -r
ls
mqsicreatebar -data . -b ./BACKEND_RPG_APP/BAKEND_RPG_APP.bar -a BACKEND_RPG_APP -trace -cleanBuild -deployAsSource
sudo yum install gtk3-devel
mqsicreatebar -data . -b ./BACKEND_RPG_APP/BAKEND_RPG_APP.bar -a BACKEND_RPG_APP -trace -cleanBuild -deployAsSource
cd ..
mqsicreatebar -data . -b ./BACKEND_RPG_APP/BAKEND_RPG_APP.bar -a BACKEND_RPG_APP -trace -cleanBuild -deployAsSource
sudo yum install -y xorg-x11-server-Xvfb
Xvfb :1 -screen 0 1024x768x16 &
export DISPLAY=:1
mqsicreatebar -data . -b ./BACKEND_RPG_APP/BAKEND_RPG_APP.bar -a BACKEND_RPG_APP -trace -cleanBuild -deployAsSource
clear
mqsicreatebar -data . -b ./BACKEND_RPG_APP/BAKEND_RPG_APP.bar -a BACKEND_RPG_APP -trace -cleanBuild -deployAsSource | grep -v 'SWT'
mqsicreatebar -data . -b BACKEND_RPG_APP/BAKEND_RPG_APP.bar -a BACKEND_RPG_APP -trace -cleanBuild -deployAsSource | grep -v 'SWT'
Xvfb :10 -ac -screen 0 1024x768x24 &
export DISPLAY=:10
mqsicreatebar -data . -b BACKEND_RPG_APP/BAKEND_RPG_APP.bar -a BACKEND_RPG_APP -trace -cleanBuild -deployAsSource | grep -v 'SWT'
yum install gtk3
sudo yum install gtk3
yum install xorg-x11-server-Xvfb
sudo yum install xorg-x11-server-Xvfb
which Xvfb
Xvfb :10 -ac -screen 0 1024x768x24 +extension RANDR &
ps -ef | grep Xvfb
export DISPLAY=:10
echo $DISPLAY
yum install dbus-x11.x86_64
sudo yum install dbus-x11.x86_64
yum search dbus
mqsicreatebar -data . -b BACKEND_RPG_APP/BAKEND_RPG_APP.bar -a BACKEND_RPG_APP -trace -cleanBuild -deployAsSource | grep -v 'SWT'
mqsicreatebar -data . -b JALIN_GETTOKEN_APP/OAUTH_APP.bar -a JALIN_GETTOKEN_APP -trace -cleanBuild -deployAsSource | grep -v 'SWT'
ln -s /opt/IBM/ace-12.0.11.1/common/eclipse/plugins/com.ibm.etools.mft_* /opt/IBM/ace-12.0.11.1/tools/links/com.ibm.etools.mft
sudo ln -s /opt/IBM/ace-12.0.11.1/common/eclipse/plugins/com.ibm.etools.mft_* /opt/IBM/ace-12.0.11.1/tools/links/com.ibm.etools.mft
clear
sudo ln -s /opt/IBM/ace-12.0.11.1/common/eclipse/plugins/com.ibm.etools.mft_* /opt/IBM/ace-12.0.11.1/tools/links/com.ibm.etools.mft
clear
exit
cd /opt/mdw/bar/ace_workspace/
ls -l
mqsicreatebar -data . -b ./hello/hello.bar -a hello -trace -deployAsSource
ls
mqsicreatebar -data . -b ./hello/hello.bar -a hello -deployAsSource
sudo mqsicreatebar -data . -b ./hello/hello.bar -a hello -deployAsSource
mqsicreatebar -data . -b ./hello/hello.bar -a hello -deployAsSource
nano /home/admmdw/IBM/ACET12-config/12.0.11.1/configuration/1722229743463.log
clear
nano /home/admmdw/IBM/ACET12-config/12.0.11.1/configuration/1722229743463.log
mqsicreatebar -data . -b ./hello/hello.bar -a hello -deployAsSource
Xvfb :10 -ac -screen 0 1024x768x24 &
export DISPLAY=:10
Xvfb :10 -ac -screen 0 1024x768x24 &
mqsicreatebar -data . -b ./hello/hello.bar -a hello -deployAsSource
exit
mqsilist
exit
mqsilist
mqsilist SMSBROKER
exit
mqsilist
exit
mqsilist
exit
mqsilist SMSMDW1
mqsilist SMSBROKER
exit
mqsireload -i SMSBROKER -e SMSMDW1
mqsilist SMSBROKER
exit
mqsireload -i SMSBROKER -e SMSMDW1
mqsireload -i SMSBROKER -e SMSROUTER
mqsilist
mqsilist ISOBROKER
exit
mqsireload -i SMSBROKER -e SMSMDW1
exit
exit
ls -l
mqsilist
ls
exit
docker ps
mqsilist
exit
nano ~/.bashrc 
source ~/.bashrc 
ls
cd ~
ls
clear
ls
clear
cd /opt/IBM/ls
cls
clear
ls
ls -lh
cd /opt/mdw
ls
cd btnmw-ace/
ls -lg
git
clear
ls
clear
ls -al
nano ~/.bashrc 
cat /opt/IBM/ace-12.0.11.1/ie02/etc/odbc.ini 
exit
mqsistop SVCBROKER
mqsisetdbparms SVCBROKER -n odbc::MWCONFIG -u db2inst1 -p mdw4dm1n
mqsisetdbparms SVCBROKER -n odbc::MWLOG -u db2inst1 -p mdw4dm1n
mqsichangeproperties SVCBROKER  -b NodeHttpListener -o HTTPListener -n startListener -v false
mqsichangeproperties SVCBROKER -f -e RESTROUTER -o ExecutionGroup -n httpNodesUseEmbeddedListener -v true
mqsichangeproperties SVCBROKER -e RESTROUTER -o HTTPConnector  -n ListenerPort -v 8081
mqsistart SVCBROKER
nano ~/.bashrc 
source ~/.bashrc 
mqsistart SVCBROKER
mqsilist
ls
cd ~
mqsichangeproperties SVCBROKER -e RESTROUTER -o HTTPConnector  -n ListenerPort -v 8081
mqsichangeproperties SVCBROKER -e RESTROUTER -o HTTPSConnector  -n ListenerPort -v 8082
mqsistop SVCBROKER 
mqsistart SVCBROKER 
mqsicvp RESTBROKER -n MWCONFIG
mqsicvp SVCBROKER -n MWCONFIG
mqsicvp SVCBROKER -n MWLOG
cat ~/.bashrc
mqsisetdbparms SVCBROKER -n odbc::MWCONFIG -u db2inst1 -p mdw4dm1n
mqsisetdbparms SVCBROKER -n odbc::MWLOG -u db2inst1 -p mdw4dm1n
mqsireload -i SVCBROKER
mqsicvp SVCBROKER -n MWLOG
echo ${DB2CLIINIPATH=}
echo ${DB2CLIINIPATH}
echo ${ODBCini}
echo ${ODBCINI}
echo ${ODBCSYSINI}
mqsicvp SVCBROKER -n MWLOG
mqsireload -i SVCBROKER
mqsicvp SVCBROKER -n MWLOG
mqsicvp SVCBROKER -n MWCONFIG
ls
clear
mqsilist
mqsireload -i SVCBROKER
ls
mqsideploy SVCBROKER -e RESTROUTER -a ~/MDW_GATEWAY_API.bar 
mqsireload -i SVCBROKER -e RESTROUTER
mqsichangeproperties SVCBROKER -e RESTROUTER -o ComIbmJVMManager -n jvmSystemProperty -v "-Dlogback.configurationFile=/opt/mdw/jplugin/logback.xml"
mqsireload -i SMSBROKER -e SMSMDW1
mqsireload -i SVCBROKER -e RESTROUTER
grep -r 'TX:(0805152535.152535)' /var/mdw/wmb-SMSBROKER-SMSMDW1.log 
ls -l /opt/mdw/jplugin/logback.xml
mqsireload -i SVCBROKER -e RESTROUTER
mqsideploy SVCBROKER -e RESTROUTER -a ~/MDW_GATEWAY_API.bar 
ls -l /opt/mdw/jplugin/logback.xml

mqsideploy SVCBROKER -e RESTROUTER -a ~/MDW_GATEWAY_API.bar 
mqsilist SVCBROKER -e RESTROUTER -d2
mqsideploy SVCBROKER -e RESTROUTER -a ~/MDW_GATEWAY_API.bar 
mqsicvp SVCBROKER -n MWCONFIG
mqsicvp SVCBROKER -n MWLOG
mqsilist
exit
mqsicvp SVCBROKER -n MWLOG
mqsicvp SVCBROKER -n MWCONFIG
exit
