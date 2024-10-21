INSERT INTO MWCONFIG.ADAPTOR (ID, DESCRIPTION, ASYNCHRONOUS, MODIFIED_BY, TIMESTAMP)
    VALUES ('ist-syariah-conn', NULL, 1, CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.ADAPTOR_CODEX (ADAPTOR_ID, ID, CODEX_ID)
    VALUES 
        ('ist-syariah-conn', 'incoming', 'iso-8583-cws'),
        ('ist-syariah-conn', 'outgoing', 'iso-8583-cws');
INSERT INTO MWCONFIG.ADAPTOR_PARAM (ADAPTOR_ID, NAME, VALUE)
    VALUES
        ('ist-syariah-conn', 'echo', '60000'),
        ('ist-syariah-conn', 'needSignOn', 'true'),
        ('ist-syariah-conn', 'timeout', '60000');

INSERT INTO MWCONFIG.CLIENT (ADAPTOR_ID, IDLE_WAIT, TIMEOUT, CLOSE_QUEUE, CONTROL_QUEUE, KEEP_CONN, REUSE_DELAY, NODE)
    VALUES('ist-syariah-conn', 0, 0, NULL, NULL, 1, 0, 'backend-iso');
INSERT INTO MWCONFIG.CLIENT_TARGET (CLIENT_ID, ID, HOST, WEIGHT, SEQ)
    VALUES ('ist-syariah-conn', 'ist-syariah-conn', 'DUMMY:9138', 0, 1);

INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES ('ist-syariah-conn.SIGN-ON', null, CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) 
    VALUES ('ist-syariah-conn.SIGN-ON', 1, '/data', '/data/body', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) 
    VALUES 
        ('ist-syariah-conn.SIGN-ON', 1, 'systemsTraceAuditNumber', '${counter("ist-syariah-conn", 5, 1, "ddMMyy")} ', 10),
        ('ist-syariah-conn.SIGN-ON', 1, 'transmissionDateTime', '${getTimeZoneFormat("MMddHHmmss","GMT")}', 10),
        ('ist-syariah-conn.SIGN-ON', 1, '!mid', '${tar.transmissionDateTime."!value"+"."+tar.systemsTraceAuditNumber."!value"}', 20),
        ('ist-syariah-conn.SIGN-ON', 1, '!destination', '${msg.source}', null),
        ('ist-syariah-conn.SIGN-ON', 1, '!nosignon', 'true', null),
        ('ist-syariah-conn.SIGN-ON', 1, '!reqtimestamp', '${head.reqtimestamp}', null),
        ('ist-syariah-conn.SIGN-ON', 1, '!sid', '${msg.sid}', null),
        ('ist-syariah-conn.SIGN-ON', 1, 'dateLocalTransaction', '${getTimeZoneFormat("MMdd","GMT")}', null),
        ('ist-syariah-conn.SIGN-ON', 1, 'messageType', '0800', null),
        ('ist-syariah-conn.SIGN-ON', 1, 'networkManagementInformationCode', '001', null),
        ('ist-syariah-conn.SIGN-ON', 1, 'timeLocalTransaction', '${getTimeZoneFormat("HHmmss","GMT")}', null);

INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES ('ist-syariah-conn.ECHO-TEST', null, CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) 
    VALUES 
	('ist-syariah-conn.ECHO-TEST', 1, '/data', '/data/body', 'ist-syariah-conn.SIGN-ON', '1');
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) 
    VALUES 
	('ist-syariah-conn.ECHO-TEST', 1, 'networkManagementInformationCode', '301', null);

