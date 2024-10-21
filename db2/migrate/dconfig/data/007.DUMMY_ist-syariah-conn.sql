INSERT INTO MWCONFIG.ADAPTOR (ID, DESCRIPTION, ASYNCHRONOUS, MODIFIED_BY, TIMESTAMP)
	VALUES ('ist-syariah-conn-9138', 'Dummy Bi Conn', 1, CURRENT USER, CURRENT TIMESTAMP);

INSERT INTO MWCONFIG.ADAPTOR_CODEX (ADAPTOR_ID, ID, CODEX_ID)
	VALUES ('ist-syariah-conn-9138', 'incoming', 'iso-8583-cws');
INSERT INTO MWCONFIG.ADAPTOR_CODEX (ADAPTOR_ID, ID, CODEX_ID)
	VALUES ('ist-syariah-conn-9138', 'outgoing', 'iso-8583-cws');

INSERT INTO MWCONFIG.ADAPTOR_PARAM (ADAPTOR_ID, NAME, VALUE)
	VALUES ('ist-syariah-conn-9138', 'maxConnection', '1');

INSERT INTO MWCONFIG.SERVER_PORT (ADAPTOR_ID, PORT, SERVER, GROUP)
	VALUES ('ist-syariah-conn-9138', 9138, 'dummy-server', 'ist-syariah-conn');

INSERT INTO MWCONFIG.MAPPING (ID, DESCRIPTION, MODULE, MODIFIED_BY ,TIMESTAMP) VALUES ('dummy-res.ist-syariah-conn.default-mapping', NULL, '[ist-syariah-conn]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID)
	VALUES 
		('dummy-res.ist-syariah-conn.default-mapping', 1, '/data', '/data', NULL, NULL),
		('dummy-res.ist-syariah-conn.default-mapping', 2, '/data/body', '/data/body', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ)
	VALUES 
		('dummy-res.ist-syariah-conn.default-mapping', 1, '@', 'copyMessage();', NULL),
		('dummy-res.ist-syariah-conn.default-mapping', 2, 'messageType', '${msg.messageType.''!value''.substring(0,2).concat("10")}', NULL),
		('dummy-res.ist-syariah-conn.default-mapping', 2, 'responseCode', '00', NULL);

INSERT INTO MWCONFIG.MAPPING (ID, DESCRIPTION, MODULE, MODIFIED_BY ,TIMESTAMP) VALUES ('dummy-res.ist-syariah-conn.default-transaction-mapping', NULL, '[ist-syariah-conn]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID)
	VALUES ('dummy-res.ist-syariah-conn.default-transaction-mapping', 3, '/data/body', '/data/body', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ)
	VALUES 
		('dummy-res.ist-syariah-conn.default-transaction-mapping', 3, 'dateCapture', '${msg.dateLocalTransaction}', NULL);

INSERT INTO MWCONFIG.MAPPING (ID, DESCRIPTION, MODULE, MODIFIED_BY ,TIMESTAMP) VALUES ('dummy-res.ist-syariah-conn.0800.000001', 'SIGN ON', '[ist-syariah-conn]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID)
	VALUES 
		('dummy-res.ist-syariah-conn.0800.000001', 1, '/data', '/data', 'dummy-res.ist-syariah-conn.default-mapping', 1),
		('dummy-res.ist-syariah-conn.0800.000001', 2, '/data/body', '/data/body', 'dummy-res.ist-syariah-conn.default-mapping', 2);

INSERT INTO MWCONFIG.MAPPING (ID, DESCRIPTION, MODULE, MODIFIED_BY ,TIMESTAMP) VALUES ('dummy-res.ist-syariah-conn.0800.000301', 'ECHO TEST', '[ist-syariah-conn]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID)
	VALUES 
		('dummy-res.ist-syariah-conn.0800.000301', 1, '/data', '/data', 'dummy-res.ist-syariah-conn.default-mapping', 1),
		('dummy-res.ist-syariah-conn.0800.000301', 2, '/data/body', '/data/body', 'dummy-res.ist-syariah-conn.default-mapping', 2);

INSERT INTO MWCONFIG.MAPPING (ID, DESCRIPTION, MODULE, MODIFIED_BY ,TIMESTAMP) VALUES ('dummy-res.ist-syariah-conn.0200.940000', NULL, '[ist-syariah-conn]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID)
	VALUES 
		('dummy-res.ist-syariah-conn.0200.940000', 1, '/data', '/data', 'dummy-res.ist-syariah-conn.default-mapping', 1),
		('dummy-res.ist-syariah-conn.0200.940000', 2, '/data/body', '/data/body', 'dummy-res.ist-syariah-conn.default-mapping', 2),
		('dummy-res.ist-syariah-conn.0200.940000', 3, '/data/body', '/data/body', 'dummy-res.ist-syariah-conn.default-transaction-mapping', 3);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ)
	VALUES 
		('dummy-res.ist-syariah-conn.0200.940000', 2, 'additionalDataPrivate', '000628131909728400019614           VANDE FRANSISKU               TRX000000227223', NULL),
		('dummy-res.ist-syariah-conn.0200.940000', 2, 'reservedPrivate3', '904a61202d175d696e4c8f5940395ca91f29389af3cbe4df998b9c0f93fe580e', NULL),
		('dummy-res.ist-syariah-conn.0200.940000', 2, 'processingCode', '942000', NULL),
		('dummy-res.ist-syariah-conn.0200.940000', 2, 'merchantType', '6011', NULL),
		('dummy-res.ist-syariah-conn.0200.940000', 2, 'serviceIndicator', 'RC5', NULL),
		('dummy-res.ist-syariah-conn.0200.940000', 2, 'track2Data', '4624368899999999=9999', NULL),
		('dummy-res.ist-syariah-conn.0200.940000', 2, 'amountTransaction', '10000000', NULL),
		('dummy-res.ist-syariah-conn.0200.940000', 2, 'fromAccount', '0000002192849814', NULL),
		('dummy-res.ist-syariah-conn.0200.940000', 2, 'responseCode', '00', 10);


INSERT INTO MWCONFIG.MAPPING (ID, DESCRIPTION, MODULE, MODIFIED_BY ,TIMESTAMP) VALUES 
	('dummy-res.ist-syariah-conn.0400.940000', NULL, '[ist-syariah-conn]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
	('dummy-res.ist-syariah-conn.0400.940000', 1, '/data', '/data', 'dummy-res.ist-syariah-conn.default-mapping', 1),
	('dummy-res.ist-syariah-conn.0400.940000', 2, '/data/body', '/data/body', 'dummy-res.ist-syariah-conn.default-mapping', 2),
	('dummy-res.ist-syariah-conn.0400.940000', 3, '/data/body', '/data/body', 'dummy-res.ist-syariah-conn.default-transaction-mapping', 3);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
	('dummy-res.ist-syariah-conn.0400.940000', 2, 'additionalDataPrivate', '000628131909728400019614           VANDE FRANSISKU               TRX000000227223', NULL),
	('dummy-res.ist-syariah-conn.0400.940000', 2, 'reservedPrivate3', '904a61202d175d696e4c8f5940395ca91f29389af3cbe4df998b9c0f93fe580e', NULL),
	('dummy-res.ist-syariah-conn.0400.940000', 2, 'merchantType', '6011', NULL),
	('dummy-res.ist-syariah-conn.0400.940000', 2, 'processingCode', '942000', NULL),
	('dummy-res.ist-syariah-conn.0400.940000', 2, 'serviceIndicator', 'RC5', NULL),
	('dummy-res.ist-syariah-conn.0400.940000', 2, 'track2Data', '4624368899999999=9999', NULL),
	('dummy-res.ist-syariah-conn.0400.940000', 2, 'amountTransaction', '10000000', NULL),
	('dummy-res.ist-syariah-conn.0400.940000', 2, 'fromAccount', '0000002192849814', NULL),
	('dummy-res.ist-syariah-conn.0400.940000', 2, 'responseCode', '00', 10);




INSERT INTO MWCONFIG.MAPPING (ID, DESCRIPTION, MODULE, MODIFIED_BY ,TIMESTAMP) VALUES 
	('dummy-res.ist-syariah-conn.0200.950000', NULL, '[ist-syariah-conn]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
	('dummy-res.ist-syariah-conn.0200.950000', 1, '/data', '/data', 'dummy-res.ist-syariah-conn.default-mapping', 1),
	('dummy-res.ist-syariah-conn.0200.950000', 2, '/data/body', '/data/body', 'dummy-res.ist-syariah-conn.default-mapping', 2),
	('dummy-res.ist-syariah-conn.0200.950000', 3, '/data/body', '/data/body', 'dummy-res.ist-syariah-conn.default-transaction-mapping', 3);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
	('dummy-res.ist-syariah-conn.0200.950000', 2, 'additionalDataPrivate', '000628131909728400019614           VANDE FRANSISKU               TRX000000227223', NULL),
	('dummy-res.ist-syariah-conn.0200.950000', 2, 'reservedPrivate3', '904a61202d175d696e4c8f5940395ca91f29389af3cbe4df998b9c0f93fe580e', NULL),
	('dummy-res.ist-syariah-conn.0200.950000', 2, 'merchantType', '6011', NULL),
	('dummy-res.ist-syariah-conn.0200.950000', 2, 'processingCode', '952000', NULL),
	('dummy-res.ist-syariah-conn.0200.950000', 2, 'serviceIndicator', 'RC5', NULL),
	('dummy-res.ist-syariah-conn.0200.950000', 2, 'track2Data', '4624368899999999=9999', NULL),
	('dummy-res.ist-syariah-conn.0200.950000', 2, 'amountTransaction', '10000000', NULL),
	('dummy-res.ist-syariah-conn.0200.950000', 2, 'toAccount', '0000002192849814', NULL),
	('dummy-res.ist-syariah-conn.0200.950000', 2, 'responseCode', '00', 10);


INSERT INTO MWCONFIG.MAPPING (ID, DESCRIPTION, MODULE, MODIFIED_BY ,TIMESTAMP) VALUES 
	('dummy-res.ist-syariah-conn.0400.950000', NULL, '[ist-syariah-conn]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
	('dummy-res.ist-syariah-conn.0400.950000', 1, '/data', '/data', 'dummy-res.ist-syariah-conn.default-mapping', 1),
	('dummy-res.ist-syariah-conn.0400.950000', 2, '/data/body', '/data/body', 'dummy-res.ist-syariah-conn.default-mapping', 2),
	('dummy-res.ist-syariah-conn.0400.950000', 3, '/data/body', '/data/body', 'dummy-res.ist-syariah-conn.default-transaction-mapping', 3);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
	('dummy-res.ist-syariah-conn.0400.950000', 2, 'additionalDataPrivate', '000628131909728400019614           VANDE FRANSISKU               TRX000000227223', NULL),
	('dummy-res.ist-syariah-conn.0400.950000', 2, 'reservedPrivate3', 'a1385011dd34c83856c8ba3b02e5416ca165bb707a949b1a20800fcf59193101', NULL),
	('dummy-res.ist-syariah-conn.0400.950000', 2, 'merchantType', '6011', NULL),
	('dummy-res.ist-syariah-conn.0400.950000', 2, 'processingCode', '952000', NULL),
	('dummy-res.ist-syariah-conn.0400.950000', 2, 'serviceIndicator', 'RC5', NULL),
	('dummy-res.ist-syariah-conn.0400.950000', 2, 'track2Data', '4624368899999999=9999', NULL),
	('dummy-res.ist-syariah-conn.0400.950000', 2, 'amountTransaction', '10000000', NULL),
	('dummy-res.ist-syariah-conn.0400.950000', 2, 'toAccount', '0000007122050536', NULL),
	('dummy-res.ist-syariah-conn.0400.950000', 2, 'responseCode', '00', 10);