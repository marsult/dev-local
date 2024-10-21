#!/bin/bash
source ~/.bash_profile
cmd() { 
	local info="${2:-$1}"; 
	echo -e "\n\033[1;34m💡 $info\033[0m"; 
	eval "$1"; 
}

export PATH=$PATH:/opt/mqm/bin
export MQSI_MQTT_LOCAL_HOSTNAME=127.0.0.1
cfg="/home/admmdw/config.yaml"

#enable ssh
sudo ssh-keygen -A 
echo "+:ALL:ALL" | sudo tee /etc/security/access.conf 
sudo rm -rf /run/nologin 
sudo /usr/sbin/sshd

if [ "$(yq '.init' ~/config.yaml)" = "true" ]; then
	QInit() {
		mkdir -m 775 -p "/MQHA/$(echo "$1" | tr -d '.')/data" > /dev/null 2>&1
		mkdir -m 775 -p "/MQHA/$(echo "$1" | tr -d '.')/log" > /dev/null 2>&1
		crtmqm -md "/MQHA/$(echo "$1" | tr -d '.')/data" -ld "/MQHA/$(echo "$1" | tr -d '.')/log" "$1" > /dev/null 2>&1
		strmqm "$1" > /dev/null 2>&1
		echo "DEFINE LISTENER($1.QM) TRPTYPE(TCP) PORT ($2) CONTROL(STARTONLY)" | runmqsc "$1" > /dev/null 2>&1
		echo "DEFINE CHANNEL(SYSTEM.ADMIN.SVRCONN) CHLTYPE(SVRCONN)" | runmqsc "$1" > /dev/null 2>&1
		echo "ALTER QMGR CHLAUTH(DISABLED)" | runmqsc "$1" > /dev/null 2>&1
		echo "START CHANNEL(SYSTEM.ADMIN.SVRCONN)" | runmqsc "$1" > /dev/null 2>&1
		echo "START LISTENER($1.QM)" | runmqsc "$1" > /dev/null 2>&1
		echo "ALTER QMGR CONNAUTH(' ')" | runmqsc "$1" > /dev/null 2>&1
		echo "REFRESH SECURITY TYPE(CONNAUTH)" | runmqsc "$1" > /dev/null 2>&1
		echo "SET CHLAUTH(SYSTEM.ADMIN.SVRCONN) TYPE(ADDRESSMAP) ADDRESS(*) ACTION(REMOVE)" | runmqsc "$1" > /dev/null 2>&1
		echo "SET CHLAUTH(SYSTEM.*) TYPE(ADDRESSMAP) ADDRESS(*) ACTION(REMOVE)" | runmqsc "$1" > /dev/null 2>&1
		echo "SET CHLAUTH(*) TYPE(BLOCKUSER) USERLIST(*MQADMIN) ACTION(REMOVE)" | runmqsc "$1" > /dev/null 2>&1
		echo "ALTER CHANNEL(SYSTEM.ADMIN.SVRCONN) CHLTYPE(SVRCONN) MCAUSER('admmdw')" | runmqsc "$1" > /dev/null 2>&1
		echo "Queue Manager $1 has been created."
	}

	QScript() {
		local QMDIR=${1%.QM}
		runmqsc "$1" < "/home/admmdw/queue/$QMDIR/queue.mqsc" > /dev/null 2>&1
	}

	for qm in $(yq '.queue_manager[].name' "$cfg" | tr -d '"'); do
		port=$(yq ".queue_manager[] | select(.name == \"$qm\") | .port" "$cfg")
		createqm=$(yq ".queue_manager[] | select(.name == \"$qm\") | .deploy" "$cfg")
		if [[ $createqm ]]; then
			QInit "$qm" "$port"
			QScript "$qm"
		fi
	done

	for broker in $(yq '.server_ace[].name' "$cfg" | tr -d '"'); do
		port=$(yq ".server_ace[] | select(.name == \"$broker\") | .port" "$cfg")
		executiongroups=$(yq ".server_ace[] | select(.name == \"$broker\") | .executiongroup[]" "$cfg")
		IFS=$'\n'
		for executiongroup in $executiongroups; do
			cmd "mkdir -m 775 -p /MQHA/$broker"
			cmd "mqsicreatebroker $broker -q ${broker}.QM -e /MQHA/$broker"
			cmd "mqsichangeproperties $broker -b webadmin -o HTTPConnector -n port -v $port"
			cmd "mqsistart $broker"

			for eg in $executiongroup; do
				iserver="$(echo "$eg" | tr -d '"')"
				cmd "mqsicreateexecutiongroup $broker -e $iserver"
				cmd "mqsichangeflowstats $broker -e $iserver  -s -c inactive"
				cmd "mqsichangeresourcestats $broker -e $iserver  -c inactive"
				cmd "mqsichangeproperties $broker -e $iserver -o ComIbmJVMManager -n jvmMaxHeapSize -v 268435456"
				cmd "mqsichangeproperties $broker -e $iserver -o ComIbmJVMManager -n jvmJavaOSStackSize -v 1048576"
				cmd "mqsichangeproperties $broker -e $iserver -o ComIbmJVMManager -n jvmSystemProperty -v \"\""
				cmd "mqsireload -i $broker -e $iserver" 
				# stop
				for file in /opt/mdw/bar/"$broker"/"$iserver"/*.bar; do
					echo $file
					cmd "mqsideploy $broker -e $iserver -a $file"
				done
			done
		done
	done

	echo "$(sed 's/\(init:\) true/\1 false/' "$cfg")" > "$cfg"
else 
	cmd "addmqinf -s QueueManager -v Name=DUMBROKER.QM -v Directory=DUMBROKER\!QM -v Prefix=/var/mqm -v DataPath=/MQHA/DUMBROKERQM/data/DUMBROKER\!QM"
	cmd "addmqinf -s QueueManager -v Name=ISOBROKER.QM -v Directory=ISOBROKER\!QM -v Prefix=/var/mqm -v DataPath=/MQHA/ISOBROKERQM/data/ISOBROKER\!QM"
	cmd "addmqinf -s QueueManager -v Name=ITMBROKER.QM -v Directory=ITMBROKER\!QM -v Prefix=/var/mqm -v DataPath=/MQHA/ITMBROKERQM/data/ITMBROKER\!QM"
	cmd "addmqinf -s QueueManager -v Name=PAYBROKER.QM -v Directory=PAYBROKER\!QM -v Prefix=/var/mqm -v DataPath=/MQHA/PAYBROKERQM/data/PAYBROKER\!QM"
	cmd "addmqinf -s QueueManager -v Name=SMSBROKER.QM -v Directory=SMSBROKER\!QM -v Prefix=/var/mqm -v DataPath=/MQHA/SMSBROKERQM/data/SMSBROKER\!QM"
	cmd "addmqinf -s QueueManager -v Name=SVCBROKER.QM -v Directory=SVCBROKER\!QM -v Prefix=/var/mqm -v DataPath=/MQHA/SVCBROKERQM/data/SVCBROKER\!QM"
	cmd "addmqinf -s QueueManager -v Name=FNTBROKER.QM -v Directory=FNTBROKER\!QM -v Prefix=/var/mqm -v DataPath=/MQHA/FNTBROKERQM/data/FNTBROKER\!QM"


	cmd "strmqm DUMBROKER.QM"
	cmd "strmqm ISOBROKER.QM"
	cmd "strmqm ITMBROKER.QM"
	cmd "strmqm PAYBROKER.QM"
	cmd "strmqm SMSBROKER.QM"
	cmd "strmqm SVCBROKER.QM"
	cmd "strmqm FNTBROKER.QM"

	echo "START CHANNEL(ISO.ITM)" | runmqsc ISOBROKER.QM
	echo "START CHANNEL(ISO.FNT)" | runmqsc ISOBROKER.QM
	echo "START CHANNEL(ISO.SMS)" | runmqsc ISOBROKER.QM
	echo "START CHANNEL(PAY.FNT)" | runmqsc PAYBROKER.QM
	echo "START CHANNEL(SMS.ISO)" | runmqsc SMSBROKER.QM
	echo "START CHANNEL(ITM.FNT)" | runmqsc ITMBROKER.QM
	echo "START CHANNEL(ITM.PAY)" | runmqsc ITMBROKER.QM
	echo "START CHANNEL(PAY.ITM)" | runmqsc PAYBROKER.QM
	echo "START CHANNEL(FNT.ITM)" | runmqsc FNTBROKER.QM
	echo "START CHANNEL(FNT.ISO)" | runmqsc FNTBROKER.QM
	echo "START CHANNEL(FNT.PAY)" | runmqsc FNTBROKER.QM
	echo "START CHANNEL(SMS.PAY)" | runmqsc FNTBROKER.QM

	cmd "mqsiaddbrokerinstance DUMBROKER -e /MQHA/DUMBROKER"
	cmd "mqsiaddbrokerinstance ISOBROKER -e /MQHA/ISOBROKER"
	cmd "mqsiaddbrokerinstance ITMBROKER -e /MQHA/ITMBROKER"
	cmd "mqsiaddbrokerinstance PAYBROKER -e /MQHA/PAYBROKER"
	cmd "mqsiaddbrokerinstance SMSBROKER -e /MQHA/SMSBROKER"
	cmd "mqsiaddbrokerinstance SVCBROKER -e /MQHA/SVCBROKER"
	cmd "mqsiaddbrokerinstance FNTBROKER -e /MQHA/FNTBROKER"

	cmd "mqsistart DUMBROKER"
	cmd "mqsistart ISOBROKER"
	cmd "mqsistart ITMBROKER"
	cmd "mqsistart PAYBROKER"
	cmd "mqsistart SMSBROKER"
	cmd "mqsistart SVCBROKER"
	cmd "mqsistart FNTBROKER"
fi

