#!/bin/bash
WAS_HOME=/opt/IBM/WebSphere/AppServer

# cp /tmp/mwui.war ${WAS_HOME}/profiles/AppSrv01/installableApps/mwui.war

${WAS_HOME}/bin/stopServer.sh server1 -username admin -password admin
${WAS_HOME}/bin/startServer.sh server1
