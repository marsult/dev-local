INSERT INTO MWCONFIG.ADAPTOR (ID, DESCRIPTION, ASYNCHRONOUS, MODIFIED_BY, TIMESTAMP) VALUES 
	('core-syariah-itm-30804', 'dummy core-syariah-itm', 1, CURRENT USER, CURRENT TIMESTAMP);

INSERT INTO MWCONFIG.ADAPTOR_CODEX (ADAPTOR_ID, ID, CODEX_ID) VALUES 
	('core-syariah-itm-30804', 'incoming', 'iso-8583-core-syariah'),
	('core-syariah-itm-30804', 'outgoing', 'iso-8583-core-syariah');

INSERT INTO MWCONFIG.ADAPTOR_PARAM (ADAPTOR_ID, NAME, VALUE) VALUES 
	('core-syariah-itm-30804', 'maxConnection', '1');

INSERT INTO MWCONFIG.SERVER_PORT (ADAPTOR_ID, PORT, SERVER, GROUP) VALUES 
	('core-syariah-itm-30804', 30804, 'dummy-server', 'core-syariah-itm');

INSERT INTO MWCONFIG.MAPPING (ID, DESCRIPTION, MODULE, MODIFIED_BY ,TIMESTAMP) VALUES 
	('dummy-res.core-syariah-itm.default-mapping', NULL, '[core-syariah-itm]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
	('dummy-res.core-syariah-itm.default-mapping', 1, '/data', '/data', NULL, NULL),
	('dummy-res.core-syariah-itm.default-mapping', 2, '/data/body', '/data/body', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
	('dummy-res.core-syariah-itm.default-mapping', 1, '@', 'copyMessage();', NULL),
	('dummy-res.core-syariah-itm.default-mapping', 2, 'messageType', '${msg.messageType.''!value''.substring(0,2).concat("10")}', NULL),
	('dummy-res.core-syariah-itm.default-mapping', 2, 'responseCode', '00', NULL),
	('dummy-res.core-syariah-itm.default-mapping', 2, 'additionalResponseData', '000001689100000021689100', 10);

INSERT INTO MWCONFIG.MAPPING (ID, DESCRIPTION, MODULE, MODIFIED_BY ,TIMESTAMP) VALUES 
	('dummy-res.core-syariah-itm.default-transaction-mapping', NULL, '[core-syariah-itm]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
	('dummy-res.core-syariah-itm.default-transaction-mapping', 3, '/data/body', '/data/body', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
	('dummy-res.core-syariah-itm.default-transaction-mapping', 3, 'dateCapture', '${msg.dateLocalTransaction}', NULL),
	('dummy-res.core-syariah-itm.default-transaction-mapping', 3, 'reservedPrivate1', 'BTN4PRO100000000000', NULL),
	('dummy-res.core-syariah-itm.default-transaction-mapping', 3, 'receivingInstitutionIdentificationCode', '20000000001', NULL);

INSERT INTO MWCONFIG.MAPPING (ID, DESCRIPTION, MODULE, MODIFIED_BY ,TIMESTAMP) VALUES 
	('dummy-res.core-syariah-itm.0800.000001', 'SIGN ON', '[core-syariah-itm]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
	('dummy-res.core-syariah-itm.0800.000001', 1, '/data', '/data', 'dummy-res.core-syariah-itm.default-mapping', 1),
	('dummy-res.core-syariah-itm.0800.000001', 2, '/data/body', '/data/body', 'dummy-res.core-syariah-itm.default-mapping', 2);

INSERT INTO MWCONFIG.MAPPING (ID, DESCRIPTION, MODULE, MODIFIED_BY ,TIMESTAMP) VALUES 
	('dummy-res.core-syariah-itm.0800.000301', 'ECHO TEST', '[core-syariah-itm]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
	('dummy-res.core-syariah-itm.0800.000301', 1, '/data', '/data', 'dummy-res.core-syariah-itm.default-mapping', 1),
	('dummy-res.core-syariah-itm.0800.000301', 2, '/data/body', '/data/body', 'dummy-res.core-syariah-itm.default-mapping', 2);

INSERT INTO MWCONFIG.MAPPING (ID, DESCRIPTION, MODULE, MODIFIED_BY ,TIMESTAMP) VALUES 
	('dummy-res.core-syariah-itm.0200.501000', NULL, '[core-syariah-itm]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
	('dummy-res.core-syariah-itm.0200.501000', 1, '/data', '/data', 'dummy-res.core-syariah-itm.default-mapping', 1),
	('dummy-res.core-syariah-itm.0200.501000', 2, '/data/body', '/data/body', 'dummy-res.core-syariah-itm.default-mapping', 2),
	('dummy-res.core-syariah-itm.0200.501000', 3, '/data/body', '/data/body', 'dummy-res.core-syariah-itm.default-transaction-mapping', 3);

INSERT INTO MWCONFIG.MAPPING (ID, DESCRIPTION, MODULE, MODIFIED_BY ,TIMESTAMP) VALUES 
	('dummy-res.core-syariah-itm.0400.501000', NULL, '[core-syariah-itm]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
	('dummy-res.core-syariah-itm.0400.501000', 1, '/data', '/data', 'dummy-res.core-syariah-itm.default-mapping', 1),
	('dummy-res.core-syariah-itm.0400.501000', 2, '/data/body', '/data/body', 'dummy-res.core-syariah-itm.default-mapping', 2),
	('dummy-res.core-syariah-itm.0400.501000', 3, '/data/body', '/data/body', 'dummy-res.core-syariah-itm.default-transaction-mapping', 3);

INSERT INTO MWCONFIG.MAPPING (ID, DESCRIPTION, MODULE, MODIFIED_BY ,TIMESTAMP) VALUES 
	('dummy-res.core-syariah-itm.0200.611000', NULL, '[core-syariah-itm]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
	('dummy-res.core-syariah-itm.0200.611000', 1, '/data', '/data', 'dummy-res.core-syariah-itm.default-mapping', 1),
	('dummy-res.core-syariah-itm.0200.611000', 2, '/data/body', '/data/body', 'dummy-res.core-syariah-itm.default-mapping', 2),
	('dummy-res.core-syariah-itm.0200.611000', 3, '/data/body', '/data/body', 'dummy-res.core-syariah-itm.default-transaction-mapping', 3);

INSERT INTO MWCONFIG.MAPPING (ID, DESCRIPTION, MODULE, MODIFIED_BY ,TIMESTAMP) VALUES 
	('dummy-res.core-syariah-itm.0400.611000', NULL, '[core-syariah-itm]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
	('dummy-res.core-syariah-itm.0400.611000', 1, '/data', '/data', 'dummy-res.core-syariah-itm.default-mapping', 1),
	('dummy-res.core-syariah-itm.0400.611000', 2, '/data/body', '/data/body', 'dummy-res.core-syariah-itm.default-mapping', 2),
	('dummy-res.core-syariah-itm.0400.611000', 3, '/data/body', '/data/body', 'dummy-res.core-syariah-itm.default-transaction-mapping', 3);

INSERT INTO MWCONFIG.MAPPING (ID, DESCRIPTION, MODULE, MODIFIED_BY ,TIMESTAMP) VALUES 
	('dummy-res.core-syariah-itm.0200.612000', NULL, '[core-syariah-itm]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
	('dummy-res.core-syariah-itm.0200.612000', 1, '/data', '/data', 'dummy-res.core-syariah-itm.default-mapping', 1),
	('dummy-res.core-syariah-itm.0200.612000', 2, '/data/body', '/data/body', 'dummy-res.core-syariah-itm.default-mapping', 2),
	('dummy-res.core-syariah-itm.0200.612000', 3, '/data/body', '/data/body', 'dummy-res.core-syariah-itm.default-transaction-mapping', 3);


INSERT INTO MWCONFIG.MAPPING (ID, DESCRIPTION, MODULE, MODIFIED_BY ,TIMESTAMP) VALUES 
	('dummy-res.core-syariah-itm.0400.612000', NULL, '[core-syariah-itm]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
	('dummy-res.core-syariah-itm.0400.612000', 1, '/data', '/data', 'dummy-res.core-syariah-itm.default-mapping', 1),
	('dummy-res.core-syariah-itm.0400.612000', 2, '/data/body', '/data/body', 'dummy-res.core-syariah-itm.default-mapping', 2),
	('dummy-res.core-syariah-itm.0400.612000', 3, '/data/body', '/data/body', 'dummy-res.core-syariah-itm.default-transaction-mapping', 3);


INSERT INTO MWCONFIG.MAPPING (ID, DESCRIPTION, MODULE, MODIFIED_BY ,TIMESTAMP) VALUES 
	('dummy-res.core-syariah-itm.0200.532000.002LMP001000', NULL, '[core-syariah-itm]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
	('dummy-res.core-syariah-itm.0200.532000.002LMP001000', 1, '/data', '/data', 'dummy-res.core-syariah-itm.default-mapping', 1),
	('dummy-res.core-syariah-itm.0200.532000.002LMP001000', 2, '/data/body', '/data/body', 'dummy-res.core-syariah-itm.default-mapping', 2),
	('dummy-res.core-syariah-itm.0200.532000.002LMP001000', 3, '/data/body', '/data/body', 'dummy-res.core-syariah-itm.default-transaction-mapping', 3);

INSERT INTO MWCONFIG.MAPPING (ID, DESCRIPTION, MODULE, MODIFIED_BY ,TIMESTAMP) VALUES 
	('dummy-res.core-syariah-itm.0200.831000', NULL, '[core-syariah-itm]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
	('dummy-res.core-syariah-itm.0200.831000', 1, '/data', '/data', 'dummy-res.core-syariah-itm.default-mapping', 1),
	('dummy-res.core-syariah-itm.0200.831000', 2, '/data/body', '/data/body', 'dummy-res.core-syariah-itm.default-mapping', 2),
	('dummy-res.core-syariah-itm.0200.831000', 3, '/data/body', '/data/body', 'dummy-res.core-syariah-itm.default-transaction-mapping', 3);


INSERT INTO MWCONFIG.MAPPING (ID, DESCRIPTION, MODULE, MODIFIED_BY ,TIMESTAMP) VALUES 
	('dummy-res.core-syariah-itm.0200.942000', NULL, '[core-syariah-itm]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
	('dummy-res.core-syariah-itm.0200.942000', 1, '/data', '/data', 'dummy-res.core-syariah-itm.default-mapping', 1),
	('dummy-res.core-syariah-itm.0200.942000', 2, '/data/body', '/data/body', 'dummy-res.core-syariah-itm.default-mapping', 2);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
	('dummy-res.core-syariah-itm.0200.942000', 2, 'messageType', '${msg.messageType.''!value''.substring(0,2).concat("10")}', NULL),
	('dummy-res.core-syariah-itm.0200.942000', 2, 'responseCode', '00', NULL),
	('dummy-res.core-syariah-itm.0200.942000', 2, 'additionalResponseData', '000001689100000021689100', 10);


INSERT INTO MWCONFIG.MAPPING (ID, DESCRIPTION, MODULE, MODIFIED_BY ,TIMESTAMP) VALUES 
	('dummy-res.core-syariah-itm.0400.942000', NULL, '[core-syariah-itm]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
	('dummy-res.core-syariah-itm.0400.942000', 1, '/data', '/data', 'dummy-res.core-syariah-itm.default-mapping', 1),
	('dummy-res.core-syariah-itm.0400.942000', 2, '/data/body', '/data/body', 'dummy-res.core-syariah-itm.default-mapping', 2);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
	('dummy-res.core-syariah-itm.0400.942000', 2, 'messageType', '${msg.messageType.''!value''.substring(0,2).concat("10")}', NULL),
	('dummy-res.core-syariah-itm.0400.942000', 2, 'responseCode', '00', NULL),
	('dummy-res.core-syariah-itm.0400.942000', 2, 'additionalResponseData', '000001689100000021689100', 10);


INSERT INTO MWCONFIG.MAPPING (ID, DESCRIPTION, MODULE, MODIFIED_BY ,TIMESTAMP) VALUES 
	('dummy-res.core-syariah-itm.0200.000010', NULL, '[core-syariah-itm]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
	('dummy-res.core-syariah-itm.0200.000010', 1, '/data', '/data', 'dummy-res.core-syariah-itm.default-mapping', 1),
	('dummy-res.core-syariah-itm.0200.000010', 2, '/data/body', '/data/body', 'dummy-res.core-syariah-itm.default-mapping', 2);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
	('dummy-res.core-syariah-itm.0200.000010', 2, 'messageType', '${msg.messageType.''!value''.substring(0,2).concat("10")}', NULL),
	('dummy-res.core-syariah-itm.0200.000010', 2, 'responseCode', '00', NULL),
	('dummy-res.core-syariah-itm.0200.000010', 2, 'additionalResponseData', '000001689100000021689100', 10);


INSERT INTO MWCONFIG.MAPPING (ID, DESCRIPTION, MODULE, MODIFIED_BY ,TIMESTAMP) VALUES 
	('dummy-res.core-syariah-itm.0400.000010', NULL, '[core-syariah-itm]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
	('dummy-res.core-syariah-itm.0400.000010', 1, '/data', '/data', 'dummy-res.core-syariah-itm.default-mapping', 1),
	('dummy-res.core-syariah-itm.0400.000010', 2, '/data/body', '/data/body', 'dummy-res.core-syariah-itm.default-mapping', 2);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
	('dummy-res.core-syariah-itm.0400.000010', 2, 'messageType', '${msg.messageType.''!value''.substring(0,2).concat("10")}', NULL),
	('dummy-res.core-syariah-itm.0400.000010', 2, 'responseCode', '00', NULL),
	('dummy-res.core-syariah-itm.0400.000010', 2, 'additionalResponseData', '000001689100000021689100', 10);



INSERT INTO MWCONFIG.MAPPING (ID, DESCRIPTION, MODULE, MODIFIED_BY ,TIMESTAMP) VALUES 
	('dummy-res.core-syariah-itm.0200.982000', NULL, '[core-syariah-itm]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
	('dummy-res.core-syariah-itm.0200.982000', 1, '/data', '/data', 'dummy-res.core-syariah-itm.default-mapping', 1),
	('dummy-res.core-syariah-itm.0200.982000', 2, '/data/body', '/data/body', 'dummy-res.core-syariah-itm.default-mapping', 2);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
	('dummy-res.core-syariah-itm.0200.982000', 2, 'messageType', '${msg.messageType.''!value''.substring(0,2).concat("10")}', NULL),
	('dummy-res.core-syariah-itm.0200.982000', 2, 'responseCode', '50', NULL),
	('dummy-res.core-syariah-itm.0200.982000', 2, 'additionalDataPrivate', '00000062856927119170000000007122050536000005000000691198034624368899999999   0536        6011TRX00000022858970520871           MOHAMAD F SOLEH', NULL),
	('dummy-res.core-syariah-itm.0200.982000', 2, 'additionalResponseData', '000001689100000021689100', 10);


INSERT INTO MWCONFIG.MAPPING (ID, DESCRIPTION, MODULE, MODIFIED_BY ,TIMESTAMP) VALUES 
	('dummy-res.core-syariah-itm.0400.982000', NULL, '[core-syariah-itm]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
	('dummy-res.core-syariah-itm.0400.982000', 1, '/data', '/data', 'dummy-res.core-syariah-itm.default-mapping', 1),
	('dummy-res.core-syariah-itm.0400.982000', 2, '/data/body', '/data/body', 'dummy-res.core-syariah-itm.default-mapping', 2);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
	('dummy-res.core-syariah-itm.0400.982000', 2, 'messageType', '${msg.messageType.''!value''.substring(0,2).concat("10")}', NULL),
	('dummy-res.core-syariah-itm.0400.982000', 2, 'responseCode', '00', NULL),
	('dummy-res.core-syariah-itm.0400.982000', 2, 'additionalDataPrivate', '00000062856927119170000000007122050536000005000000691198034624368899999999   0536        6011TRX00000022858970520871           MOHAMAD F SOLEH', NULL),
	('dummy-res.core-syariah-itm.0400.982000', 2, 'additionalResponseData', '000001689100000021689100', 10);

-- dummy-res.core-syariah-itm.0200.830000
INSERT INTO MWCONFIG.MAPPING (ID, DESCRIPTION, MODULE, MODIFIED_BY ,TIMESTAMP) VALUES 
	('dummy-res.core-syariah-itm.0200.830000', NULL, '[core-syariah-itm]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
	('dummy-res.core-syariah-itm.0200.830000', 1, '/data', '/data', 'dummy-res.core-syariah-itm.default-mapping', 1),
	('dummy-res.core-syariah-itm.0200.830000', 2, '/data/body', '/data/body', 'dummy-res.core-syariah-itm.default-mapping', 2);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
	('dummy-res.core-syariah-itm.0200.830000', 2, 'messageType', '${msg.messageType.''!value''.substring(0,2).concat("10")}', NULL),
	('dummy-res.core-syariah-itm.0200.830000', 2, 'responseCode', '00', NULL),
	('dummy-res.core-syariah-itm.0200.830000', 2, 'additionalDataPrivate', '00000062856927119170000000007122050536000005000000691198034624368899999999   0536        6011TRX00000022858970520871           MOHAMAD F SOLEH', NULL),
	('dummy-res.core-syariah-itm.0200.830000', 2, 'additionalResponseData', '000001689100000021689100', 10);

-- dummy-res.core-syariah-itm.0400.830000
INSERT INTO MWCONFIG.MAPPING (ID, DESCRIPTION, MODULE, MODIFIED_BY ,TIMESTAMP) VALUES 
	('dummy-res.core-syariah-itm.0400.830000', NULL, '[core-syariah-itm]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
	('dummy-res.core-syariah-itm.0400.830000', 1, '/data', '/data', 'dummy-res.core-syariah-itm.default-mapping', 1),
	('dummy-res.core-syariah-itm.0400.830000', 2, '/data/body', '/data/body', 'dummy-res.core-syariah-itm.default-mapping', 2);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
	('dummy-res.core-syariah-itm.0400.830000', 2, 'messageType', '${msg.messageType.''!value''.substring(0,2).concat("10")}', NULL),
	('dummy-res.core-syariah-itm.0400.830000', 2, 'responseCode', '00', NULL),
	('dummy-res.core-syariah-itm.0400.830000', 2, 'additionalDataPrivate', '00000062856927119170000000007122050536000005000000691198034624368899999999   0536        6011TRX00000022858970520871           MOHAMAD F SOLEH', NULL),
	('dummy-res.core-syariah-itm.0400.830000', 2, 'additionalResponseData', '000001689100000021689100', 10);


-- dummy-res.core-syariah-itm.0200.2.605000
INSERT INTO MWCONFIG.MAPPING (ID, DESCRIPTION, MODULE, MODIFIED_BY ,TIMESTAMP) VALUES 
	('dummy-res.core-syariah-itm.0200.2.605000', NULL, '[core-syariah-itm]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
	('dummy-res.core-syariah-itm.0200.2.605000', 1, '/data', '/data', 'dummy-res.core-syariah-itm.default-mapping', 1);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
	('dummy-res.core-syariah-itm.0200.2.605000', 2, 'messageType', '${msg.messageType.''!value''.substring(0,2).concat("10")}', NULL),
	('dummy-res.core-syariah-itm.0200.2.605000', 2, 'responseCode', '00', NULL),
	('dummy-res.core-syariah-itm.0200.2.605000', 2, 'additionalDataPrivate', '081217880451    RACHMAWATI                    0000048300000000001000008bf088b041674049                                                                                                                                                                                                                                                                                            ', NULL),
	('dummy-res.core-syariah-itm.0200.2.605000', 2, 'reservedIso2', '36516    LINK AJA Cu', NULL),
	('dummy-res.core-syariah-itm.0200.2.605000', 2, 'additionalResponseData', '000001689100000021689100', 10);