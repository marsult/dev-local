
INSERT INTO MWCONFIG.ADAPTOR (ID, DESCRIPTION, ASYNCHRONOUS, MODIFIED_BY, TIMESTAMP)
	VALUES ('dck-13000', 'Dummy Core Konven', 0, CURRENT USER, CURRENT TIMESTAMP);

INSERT INTO MWCONFIG.ADAPTOR_CODEX (ADAPTOR_ID, ID, CODEX_ID)
	VALUES ('dck-13000', 'incoming', 'dsp');
INSERT INTO MWCONFIG.ADAPTOR_CODEX (ADAPTOR_ID, ID, CODEX_ID)
	VALUES ('dck-13000', 'outgoing', 'dsp-response');

INSERT INTO MWCONFIG.SERVER_PORT (ADAPTOR_ID, PORT, SERVER, GROUP)
	VALUES ('dck-13000', 13000, 'dummy-server', 'dck');

INSERT INTO MWCONFIG.MAPPING (ID, MODIFIED_BY, TIMESTAMP, MODULE)
	VALUES ('dummy-res.dck.master', CURRENT USER, CURRENT TIMESTAMP, '[dck]');
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID)
	VALUES ('dummy-res.dck.master', 1, '/data/body', '/data/body', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT)
	VALUES ('dummy-res.dck.master', 1, '!CorrelId', '${head.CorrelId}'),
		   ('dummy-res.dck.master', 1, '!sid', '${head.sid}'),
		   ('dummy-res.dck.master', 1, '!connid', '${head.connid}'),
		   ('dummy-res.dck.master', 1, '!group', '${head.group}'),
		   ('dummy-res.dck.master', 1, '!source', '${head.source}'),
		   ('dummy-res.dck.master', 1, '!dir', 'O'),
		   ('dummy-res.dck.master', 1, '!reqtimestamp', '${head.reqtimestamp}'),
		   ('dummy-res.dck.master', 1, 'dspHeaderType', '*SOKI'),
		   ('dummy-res.dck.master', 1, 'dspSocketNumber', '1'),
		   ('dummy-res.dck.master', 1, 'dspPortNumber', '13000'),
		   ('dummy-res.dck.master', 1, 'dspFiller1', '40'),
		   ('dummy-res.dck.master', 1, 'dspHeaderLength', '213'),
		   ('dummy-res.dck.master', 1, 'dspVersionNumber', '0200'),
		   ('dummy-res.dck.master', 1, 'dspHeaderFormatId', '*DSP'),
		   ('dummy-res.dck.master', 1, 'dspDataFormatId', '${msg.dspDataFormatId}'),
		   ('dummy-res.dck.master', 1, 'dspSourceId', '${msg.dspSourceId}'),
		   ('dummy-res.dck.master', 1, 'dspDestinationId', 'DQAXISIN'),
		   ('dummy-res.dck.master', 1, 'dspRoutingNumber', '00'),
		   ('dummy-res.dck.master', 1, 'dspMessageStatus', '/-------'),
		   ('dummy-res.dck.master', 1, 'dspBankIdNumber', '${msg.dspBankIdNumber}'),
		   ('dummy-res.dck.master', 1, 'dspNode', '${msg.dspNode}'),
		   ('dummy-res.dck.master', 1, 'dspExchangeId', '000000002F07001F4040C3D4D5E2C2D9F0F0F0F1'),
		   ('dummy-res.dck.master', 1, 'dspScenarioNumber', '${msg.dspScenarioNumber}'),
		   ('dummy-res.dck.master', 1, 'dspTransactionCode', '${msg.dspTransactionCode}'),
		   ('dummy-res.dck.master', 1, 'dspRetrievalReferenceNumber', '1234567890123456789012'),
		   ('dummy-res.dck.master', 1, 'dspNumberOfRecordsToBeLoaded', '10'),
		   ('dummy-res.dck.master', 1, 'dspNumberOfErrorsToBeLoaded', '10'),
		   ('dummy-res.dck.master', 1, 'dspUserId', '${msg.dspUserId}'),
		   ('dummy-res.dck.master', 1, 'dspTerminalId', '${msg.dspTerminalId}');

INSERT INTO MWCONFIG.MAPPING (ID, MODIFIED_BY, TIMESTAMP, MODULE)
	VALUES ('dummy-res.dck.master-abcs', CURRENT USER, CURRENT TIMESTAMP, '[dck]');
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID)
	VALUES ('dummy-res.dck.master-abcs', 1, '/data/body', '/data/body', 'dummy-res.dck.master', 1);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT)
	VALUES ('dummy-res.dck.master-abcs', 1, 'ICHEAD', '*SOKR'),
		   ('dummy-res.dck.master-abcs', 1, 'ICRTRQ', 'DQICRTTEL'),
		   ('dummy-res.dck.master-abcs', 1, 'ICDEVN', '${msg.ICDEVN}'),
		   ('dummy-res.dck.master-abcs', 1, 'ICID', '12345'),
		   ('dummy-res.dck.master-abcs', 1, 'ICCOMQ', 'DQAXISIN'),
		   ('dummy-res.dck.master-abcs', 1, 'TMTIMIN', '${new java.text.SimpleDateFormat("HHmmss").format(new Date())}'),
		   ('dummy-res.dck.master-abcs', 1, 'TMTXTYP', '${msg.TMTXTYP}'),
		   ('dummy-res.dck.master-abcs', 1, 'ICEOM', '${msg.ICEOM}'),
		   ('dummy-res.dck.master-abcs', 1, 'tellerID', '${msg.TLBID}'),
		   ('dummy-res.dck.master-abcs', 1, 'sequenceNumber', '${msg.TLBJSN}');

INSERT INTO MWCONFIG.MAPPING (ID, MODIFIED_BY, TIMESTAMP, MODULE)
	VALUES ('dummy-res.dck.master-abcs-89', CURRENT USER, CURRENT TIMESTAMP, '[dck]');
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID)
	VALUES ('dummy-res.dck.master-abcs-89', 1, '/data/body', '/data/body', 'dummy-res.dck.master', 1);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT)
	VALUES ('dummy-res.dck.master-abcs-89', 1, 'responseCode_89', '89'),
		   ('dummy-res.dck.master-abcs-89', 1, 'responseHeader_89', '89'),
		   ('dummy-res.dck.master-abcs-89', 1, 'responseSubHeader_89', 'F1');

INSERT INTO MWCONFIG.MAPPING (ID, MODIFIED_BY, TIMESTAMP, MODULE)
	VALUES ('dummy-res.dck.master-abcs-F1', CURRENT USER, CURRENT TIMESTAMP, '[dck]');
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID)
	VALUES ('dummy-res.dck.master-abcs-F1', 1, '/data/body', '/data/body', 'dummy-res.dck.master', 1);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT)
	VALUES ('dummy-res.dck.master-abcs-F1', 1, 'responseCode_F1', 'F1'),
		   ('dummy-res.dck.master-abcs-F1', 1, 'responseHeader_F1', 'F1'),
		   ('dummy-res.dck.master-abcs-F1', 1, 'TLXMNE_F1', 'INQ');

INSERT INTO MWCONFIG.MAPPING (ID, MODIFIED_BY, TIMESTAMP, MODULE)
	VALUES ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', CURRENT USER, CURRENT TIMESTAMP, '[dck]');
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID)
	VALUES ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 1, '/data/body', '/data/body', 'dummy-res.dck.master-abcs', 1),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 2, '/data/body', '/data/body', 'dummy-res.dck.master-abcs-89', 1),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 3, '/data/body', '/data/body', 'dummy-res.dck.master-abcs-F1', 1);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT)
	VALUES ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 1, 'dspMessageLength', '741'),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 1, 'ICLEN', '75'),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 1, 'abcsResponses', '89 F1'),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 2, '!multicodex_suffix_1', '_89'),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 2, 'ACCTNO_89', '1601500028153'),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 2, 'ACTYPE_89', 'S'),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 2, 'SNAME_89', 'SUCIPTO'),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 2, 'CFSSNO_89', '1055101502651003'),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 2, 'STATUS_89', '1'),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 2, 'CBAL_89', '27260729942.98'),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 2, 'COLECT_89', '27260729942.98'),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 2, 'WHYTD_89', '138731996.73'),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 2, 'WHTDY_89', '8962430'),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 2, 'ACCRU2_89', '44812159'),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 2, 'NETAMT_89', '27296579671.98'),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 2, 'PBBAL_89', '3348239020.92'),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 2, 'TLNBSR_89', '3405'),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 2, 'UNPAMT_89', '23912490922.06'),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 2, 'UNPITM_89', '66'),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 2, 'DDSIC1_89', 'D5'),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 2, 'DDSIC2_89', 'D5'),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 2, 'DDSIC3_89', 'D5'),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 2, 'DDSIC4_89', 'D5'),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 2, 'AVLBAL_89', '27260729942.98'),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 2, 'MINBLM_89', '50000'),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 3, '!multicodex_suffix_2', '_F1'),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 3, 'SNAME_F1', 'SUCIPTO'),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 3, 'AMT1_F1', '27260729942.98'),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 3, 'AMT2_F1', '27260729942.98');

INSERT INTO MWCONFIG.MAPPING (ID, MODIFIED_BY, TIMESTAMP, MODULE)
	VALUES ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005470', CURRENT USER, CURRENT TIMESTAMP, '[dck]');
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID)
	VALUES ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005470', 1, '/data/body', '/data/body', 'dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 1),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005470', 2, '/data/body', '/data/body', 'dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 2),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005470', 3, '/data/body', '/data/body', 'dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 3);

INSERT INTO MWCONFIG.MAPPING (ID, MODIFIED_BY, TIMESTAMP, MODULE)
	VALUES ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005411', CURRENT USER, CURRENT TIMESTAMP, '[dck]');
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID)
	VALUES ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005411', 1, '/data/body', '/data/body', 'dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 1),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005411', 2, '/data/body', '/data/body', 'dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 2),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005411', 3, '/data/body', '/data/body', 'dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 3);


INSERT INTO MWCONFIG.MAPPING (ID, MODIFIED_BY, TIMESTAMP, MODULE)
	VALUES ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005476', CURRENT USER, CURRENT TIMESTAMP, '[dck]');
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID)
	VALUES ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005476', 1, '/data/body', '/data/body', 'dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 1),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005476', 2, '/data/body', '/data/body', 'dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 2),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005476', 3, '/data/body', '/data/body', 'dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 3);

INSERT INTO MWCONFIG.MAPPING (ID, MODIFIED_BY, TIMESTAMP, MODULE)
	VALUES ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005412', CURRENT USER, CURRENT TIMESTAMP, '[dck]');
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID)
	VALUES ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005412', 1, '/data/body', '/data/body', 'dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 1),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005412', 2, '/data/body', '/data/body', 'dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 2),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005412', 3, '/data/body', '/data/body', 'dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 3);

INSERT INTO MWCONFIG.MAPPING (ID, MODIFIED_BY, TIMESTAMP, MODULE)
	VALUES ('dummy-res.dck.AXISSYSTEMSDNBHD.0000007029', CURRENT USER, CURRENT TIMESTAMP, '[dck]');
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID)
	VALUES ('dummy-res.dck.AXISSYSTEMSDNBHD.0000007029', 1, '/data/body', '/data/body', 'dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 1),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000007029', 2, '/data/body', '/data/body', 'dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 2),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000007029', 3, '/data/body', '/data/body', 'dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 3);

INSERT INTO MWCONFIG.MAPPING (ID, MODIFIED_BY, TIMESTAMP, MODULE)
	VALUES ('dummy-res.dck.AXISSYSTEMSDNBHD.0000007030', CURRENT USER, CURRENT TIMESTAMP, '[dck]');
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID)
	VALUES ('dummy-res.dck.AXISSYSTEMSDNBHD.0000007030', 1, '/data/body', '/data/body', 'dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 1),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000007030', 2, '/data/body', '/data/body', 'dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 2),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000007030', 3, '/data/body', '/data/body', 'dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 3);

INSERT INTO MWCONFIG.MAPPING (ID, MODIFIED_BY, TIMESTAMP, MODULE)
	VALUES ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005194', CURRENT USER, CURRENT TIMESTAMP, '[dck]');
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID)
	VALUES ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005194', 1, '/data/body', '/data/body', 'dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 1),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005194', 2, '/data/body', '/data/body', 'dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 2),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005194', 3, '/data/body', '/data/body', 'dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 3);

INSERT INTO MWCONFIG.MAPPING (ID, MODIFIED_BY, TIMESTAMP, MODULE)
	VALUES ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005043', CURRENT USER, CURRENT TIMESTAMP, '[dck]');
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID)
	VALUES ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005043', 1, '/data/body', '/data/body', 'dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 1),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005043', 2, '/data/body', '/data/body', 'dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 2),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005043', 3, '/data/body', '/data/body', 'dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 3);


INSERT INTO MWCONFIG.MAPPING (ID, MODIFIED_BY, TIMESTAMP, MODULE)
	VALUES ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005183', CURRENT USER, CURRENT TIMESTAMP, '[dck]');
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID)
	VALUES ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005183', 1, '/data/body', '/data/body', 'dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 1),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005183', 2, '/data/body', '/data/body', 'dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 2),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005183', 3, '/data/body', '/data/body', 'dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 3);

INSERT INTO MWCONFIG.MAPPING (ID, MODIFIED_BY, TIMESTAMP, MODULE)
	VALUES ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005197', CURRENT USER, CURRENT TIMESTAMP, '[dck]');
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID)
	VALUES ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005197', 1, '/data/body', '/data/body', 'dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 1),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005197', 2, '/data/body', '/data/body', 'dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 2),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000005197', 3, '/data/body', '/data/body', 'dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 3);


INSERT INTO MWCONFIG.MAPPING (ID, MODIFIED_BY, TIMESTAMP, MODULE)
	VALUES ('dummy-res.dck.AXISSYSTEMSDNBHD.0000007109', CURRENT USER, CURRENT TIMESTAMP, '[dck]');
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID)
	VALUES ('dummy-res.dck.AXISSYSTEMSDNBHD.0000007109', 1, '/data/body', '/data/body', 'dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 1),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000007109', 2, '/data/body', '/data/body', 'dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 2),
		   ('dummy-res.dck.AXISSYSTEMSDNBHD.0000007109', 3, '/data/body', '/data/body', 'dummy-res.dck.AXISSYSTEMSDNBHD.0000005001', 3);