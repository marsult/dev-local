INSERT INTO MWCONFIG.ADAPTOR (ID, DESCRIPTION, ASYNCHRONOUS, MODIFIED_BY, TIMESTAMP)
	VALUES ('bi-conn-8538', 'Dummy Bi Conn', 1, CURRENT USER, CURRENT TIMESTAMP);

INSERT INTO MWCONFIG.ADAPTOR_CODEX (ADAPTOR_ID, ID, CODEX_ID)
	VALUES ('bi-conn-8538', 'incoming', 'iso-8583-bi-conn');
INSERT INTO MWCONFIG.ADAPTOR_CODEX (ADAPTOR_ID, ID, CODEX_ID)
	VALUES ('bi-conn-8538', 'outgoing', 'iso-8583-bi-conn');

INSERT INTO MWCONFIG.ADAPTOR_PARAM (ADAPTOR_ID, NAME, VALUE)
	VALUES ('bi-conn-8538', 'maxConnection', '1');

INSERT INTO MWCONFIG.SERVER_PORT (ADAPTOR_ID, PORT, SERVER, GROUP)
	VALUES ('bi-conn-8538', 8538, 'dummy-server', 'bi-conn');

INSERT INTO MWCONFIG.MAPPING (ID, DESCRIPTION, MODULE, MODIFIED_BY ,TIMESTAMP) VALUES ('dummy-res.bi-conn.default-mapping', NULL, '[bi-conn]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID)
	VALUES 
		('dummy-res.bi-conn.default-mapping', 1, '/data', '/data', NULL, NULL),
		('dummy-res.bi-conn.default-mapping', 2, '/data/body', '/data/body', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ)
	VALUES 
		('dummy-res.bi-conn.default-mapping', 1, '@', 'copyMessage();', NULL),
		('dummy-res.bi-conn.default-mapping', 2, 'messageType', '${msg.messageType.''!value''.substring(0,2).concat("10")}', NULL),
		('dummy-res.bi-conn.default-mapping', 2, 'responseCode', '00', NULL);

INSERT INTO MWCONFIG.MAPPING (ID, DESCRIPTION, MODULE, MODIFIED_BY ,TIMESTAMP) VALUES ('dummy-res.bi-conn.default-transaction-mapping', NULL, '[bi-conn]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID)
	VALUES ('dummy-res.bi-conn.default-transaction-mapping', 3, '/data/body', '/data/body', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ)
	VALUES 
		('dummy-res.bi-conn.default-transaction-mapping', 3, 'dateCapture', '${msg.dateLocalTransaction}', NULL);

INSERT INTO MWCONFIG.MAPPING (ID, DESCRIPTION, MODULE, MODIFIED_BY ,TIMESTAMP) VALUES ('dummy-res.bi-conn.0800.000001', 'SIGN ON', '[bi-conn]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID)
	VALUES 
		('dummy-res.bi-conn.0800.000001', 1, '/data', '/data', 'dummy-res.bi-conn.default-mapping', 1),
		('dummy-res.bi-conn.0800.000001', 2, '/data/body', '/data/body', 'dummy-res.bi-conn.default-mapping', 2);

INSERT INTO MWCONFIG.MAPPING (ID, DESCRIPTION, MODULE, MODIFIED_BY ,TIMESTAMP) VALUES ('dummy-res.bi-conn.0800.000301', 'ECHO TEST', '[bi-conn]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID)
	VALUES 
		('dummy-res.bi-conn.0800.000301', 1, '/data', '/data', 'dummy-res.bi-conn.default-mapping', 1),
		('dummy-res.bi-conn.0800.000301', 2, '/data/body', '/data/body', 'dummy-res.bi-conn.default-mapping', 2);

INSERT INTO MWCONFIG.MAPPING (ID, DESCRIPTION, MODULE, MODIFIED_BY ,TIMESTAMP) VALUES ('dummy-res.bi-conn.0200.312000', NULL, '[bi-conn]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID)
	VALUES 
		('dummy-res.bi-conn.0200.312000', 1, '/data', '/data', 'dummy-res.bi-conn.default-mapping', 1),
		('dummy-res.bi-conn.0200.312000', 2, '/data/body', '/data/body', 'dummy-res.bi-conn.default-mapping', 2),
		('dummy-res.bi-conn.0200.312000', 3, '/data/body', '/data/body', 'dummy-res.bi-conn.default-transaction-mapping', 3);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ)
	VALUES 
		('dummy-res.bi-conn.0200.312000', 2, 'additionalDataPrivate', '20240223FASTIDJA5104908809820240223BTANIDJA510O020003363720240223BTANIDJA51000033637ASIA KARYA MANDIRI CV                   9120007592095   02  0291                               CACC20240223', NULL),
		('dummy-res.bi-conn.0200.312000', 2, 'reasonCode', 'U000', NULL),
		('dummy-res.bi-conn.0200.312000', 2, 'responseCode', '00', 10);


