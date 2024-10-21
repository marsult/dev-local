INSERT INTO MWCONFIG.ADAPTOR (ID, DESCRIPTION, ASYNCHRONOUS, MODIFIED_BY, TIMESTAMP)
    VALUES ('itm-conn', NULL, 1, CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.ADAPTOR_CODEX (ADAPTOR_ID, ID, CODEX_ID)
    VALUES 
        ('itm-conn', 'incoming', 'iso-8583-itmibft'),
        ('itm-conn', 'outgoing', 'iso-8583-itmibft');
INSERT INTO MWCONFIG.ADAPTOR_PARAM (ADAPTOR_ID, NAME, VALUE)
    VALUES
        ('itm-conn', 'echo', '60000'),
        ('itm-conn', 'needSignOn', 'true'),
        ('itm-conn', 'timeout', '5000');

INSERT INTO MWCONFIG.CLIENT (ADAPTOR_ID, IDLE_WAIT, TIMEOUT, CLOSE_QUEUE, CONTROL_QUEUE, KEEP_CONN, REUSE_DELAY, NODE)
    VALUES('itm-conn', 0, 0, NULL, NULL, 1, 0, 'billpayClientNode');
INSERT INTO MWCONFIG.CLIENT_TARGET (CLIENT_ID, ID, HOST, WEIGHT, SEQ)
    VALUES ('itm-conn', 'itm-conn', 'DUMMY:9038', 0, 1);

INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES ('itm-conn.SIGN-ON', null, CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) 
    VALUES ('itm-conn.SIGN-ON', 1, '/data', '/data/body', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) 
    VALUES 
        ('itm-conn.SIGN-ON', 1, 'systemsTraceAuditNumber', '${counter("itm-conn", 5, 1, "ddMMyy")} ', 10),
        ('itm-conn.SIGN-ON', 1, 'transmissionDateTime', '${getTimeZoneFormat("MMddHHmmss","GMT")}', 10),
        ('itm-conn.SIGN-ON', 1, '!mid', '${tar.transmissionDateTime."!value"+"."+tar.systemsTraceAuditNumber."!value"}', 20),
        ('itm-conn.SIGN-ON', 1, '!destination', '${msg.source}', null),
        ('itm-conn.SIGN-ON', 1, '!nosignon', 'true', null),
        ('itm-conn.SIGN-ON', 1, '!reqtimestamp', '${head.reqtimestamp}', null),
        ('itm-conn.SIGN-ON', 1, '!sid', '${msg.sid}', null),
        ('itm-conn.SIGN-ON', 1, 'dateLocalTransaction', '${getTimeZoneFormat("MMdd","GMT")}', null),
        ('itm-conn.SIGN-ON', 1, 'messageType', '0800', null),
        ('itm-conn.SIGN-ON', 1, 'networkManagementInformationCode', '001', null),
        ('itm-conn.SIGN-ON', 1, 'timeLocalTransaction', '${getTimeZoneFormat("HHmmss","GMT")}', null);

INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES ('itm-conn.ECHO-TEST', null, CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) 
    VALUES 
	('itm-conn.ECHO-TEST', 1, '/data', '/data/body', 'itm-conn.SIGN-ON', '1');
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) 
    VALUES 
	('itm-conn.ECHO-TEST', 1, 'networkManagementInformationCode', '301', null);