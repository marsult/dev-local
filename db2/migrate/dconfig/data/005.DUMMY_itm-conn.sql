INSERT INTO MWCONFIG.ADAPTOR (ID, DESCRIPTION, ASYNCHRONOUS, MODIFIED_BY, TIMESTAMP)
	VALUES ('itm-conn-9038', 'Dummy Bi Conn', 1, CURRENT USER, CURRENT TIMESTAMP);

INSERT INTO MWCONFIG.ADAPTOR_CODEX (ADAPTOR_ID, ID, CODEX_ID)
	VALUES ('itm-conn-9038', 'incoming', 'iso-8583-itmibft');
INSERT INTO MWCONFIG.ADAPTOR_CODEX (ADAPTOR_ID, ID, CODEX_ID)
	VALUES ('itm-conn-9038', 'outgoing', 'iso-8583-itmibft');

INSERT INTO MWCONFIG.ADAPTOR_PARAM (ADAPTOR_ID, NAME, VALUE)
	VALUES ('itm-conn-9038', 'maxConnection', '1');

INSERT INTO MWCONFIG.SERVER_PORT (ADAPTOR_ID, PORT, SERVER, GROUP)
	VALUES ('itm-conn-9038', 9038, 'dummy-server', 'itm-conn');

INSERT INTO MWCONFIG.MAPPING (ID, DESCRIPTION, MODULE, MODIFIED_BY ,TIMESTAMP) VALUES ('dummy-res.itm-conn.default-mapping', NULL, '[itm-conn]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID)
	VALUES 
		('dummy-res.itm-conn.default-mapping', 1, '/data', '/data', NULL, NULL),
		('dummy-res.itm-conn.default-mapping', 2, '/data/body', '/data/body', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ)
	VALUES 
		('dummy-res.itm-conn.default-mapping', 1, '@', 'copyMessage();', NULL),
		('dummy-res.itm-conn.default-mapping', 2, 'messageType', '${msg.messageType.''!value''.substring(0,2).concat("10")}', NULL),
		('dummy-res.itm-conn.default-mapping', 2, 'responseCode', '00', NULL);

INSERT INTO MWCONFIG.MAPPING (ID, DESCRIPTION, MODULE, MODIFIED_BY ,TIMESTAMP) VALUES ('dummy-res.itm-conn.default-transaction-mapping', NULL, '[itm-conn]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID)
	VALUES ('dummy-res.itm-conn.default-transaction-mapping', 3, '/data/body', '/data/body', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ)
	VALUES 
		('dummy-res.itm-conn.default-transaction-mapping', 3, 'dateCapture', '${msg.dateLocalTransaction}', NULL);

INSERT INTO MWCONFIG.MAPPING (ID, DESCRIPTION, MODULE, MODIFIED_BY ,TIMESTAMP) VALUES ('dummy-res.itm-conn.0800.000001', 'SIGN ON', '[itm-conn]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID)
	VALUES 
		('dummy-res.itm-conn.0800.000001', 1, '/data', '/data', 'dummy-res.itm-conn.default-mapping', 1),
		('dummy-res.itm-conn.0800.000001', 2, '/data/body', '/data/body', 'dummy-res.itm-conn.default-mapping', 2);

INSERT INTO MWCONFIG.MAPPING (ID, DESCRIPTION, MODULE, MODIFIED_BY ,TIMESTAMP) VALUES ('dummy-res.itm-conn.0800.000301', 'ECHO TEST', '[itm-conn]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID)
	VALUES 
		('dummy-res.itm-conn.0800.000301', 1, '/data', '/data', 'dummy-res.itm-conn.default-mapping', 1),
		('dummy-res.itm-conn.0800.000301', 2, '/data/body', '/data/body', 'dummy-res.itm-conn.default-mapping', 2);

-- INSERT INTO MWCONFIG.MAPPING (ID, DESCRIPTION, MODULE, MODIFIED_BY ,TIMESTAMP) VALUES ('dummy-res.itm-conn.0200.690000', NULL, '[itm-conn]', CURRENT USER, CURRENT TIMESTAMP);
-- INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID)
-- 	VALUES 
-- 		('dummy-res.itm-conn.0200.690000', 1, '/data', '/data', 'dummy-res.itm-conn.default-mapping', 1),
-- 		('dummy-res.itm-conn.0200.690000', 2, '/data/body', '/data/body', 'dummy-res.itm-conn.default-mapping', 2),
-- 		('dummy-res.itm-conn.0200.690000', 3, '/data/body', '/data/body', 'dummy-res.itm-conn.default-transaction-mapping', 3);
-- INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ)
-- 	VALUES 
-- 		('dummy-res.itm-conn.0200.690000', 2, 'additionalDataPrivate', 'ERNA YANTI                                    MARWAN HELMI', NULL),
-- 		('dummy-res.itm-conn.0200.690000', 2, 'responseCode', '00', 10);


