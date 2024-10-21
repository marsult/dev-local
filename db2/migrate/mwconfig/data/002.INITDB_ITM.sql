INSERT INTO MWCONFIG.ADAPTOR (ID, DESCRIPTION, ASYNCHRONOUS, MODIFIED_BY, TIMESTAMP)
	VALUES 
		('itm-10101', 'ITM Network Adaptor', 1, CURRENT USER, CURRENT TIMESTAMP),
		('itm-10102', 'ITM OnUs Adaptor', 1, CURRENT USER, CURRENT TIMESTAMP),
		('core-itm', 'Core Adaptor from ITM channel', 0, CURRENT USER, CURRENT TIMESTAMP);

INSERT INTO MWCONFIG.DTREE(GROUP, PATH, VALUE, MODULE, MODIFIED_BY, TIMESTAMP)
	VALUES 
		('ITM-CODE', '0200', '0200.${msg.processingCode?.padLeft(6, "0")}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
		('ITM-CODE', '0210', '0210.${msg.processingCode?.padLeft(6, "0")}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
		('ITM-CODE', '0220', '0220.${msg.processingCode?.padLeft(6, "0")}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
		('ITM-CODE', '0230', '0230.${msg.processingCode?.padLeft(6, "0")}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
		('ITM-CODE', '0400', '0400.${msg.processingCode?.padLeft(6, "0")}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
		('ITM-CODE', '0401', '0401.${msg.processingCode?.padLeft(6, "0")}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
		('ITM-CODE', '0410', '0410.${msg.processingCode?.padLeft(6, "0")}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
		('ITM-CODE', '0411', '0411.${msg.processingCode?.padLeft(6, "0")}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
		('ITM-CODE', '0420', '0420.${msg.processingCode?.padLeft(6, "0")}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
		('ITM-CODE', '0430', '0430.${msg.processingCode?.padLeft(6, "0")}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
		('ITM-CODE', '0800', '0800.${msg.networkManagementInformationCode?.padLeft(6, "0")}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
		('ITM-CODE', '0810', '0810.${msg.networkManagementInformationCode?.padLeft(6, "0")}', '[itm]', CURRENT USER, CURRENT TIMESTAMP);

INSERT INTO MWCONFIG.ADAPTOR_CODEX (ADAPTOR_ID, ID, CODEX_ID)
	VALUES 
		('itm-10101', 'incoming','iso-8583-itm'),
		('itm-10101', 'outgoing','iso-8583-itm'),
		('itm-10102', 'incoming','iso-8583-itm'),
		('itm-10102', 'outgoing','iso-8583-itm'),
		('core-itm', 'incoming', 'dsp-response'),
		('core-itm', 'outgoing', 'dsp');

INSERT INTO MWCONFIG.ADAPTOR_PARAM (ADAPTOR_ID, NAME, VALUE)
	VALUES 
		('itm-10101', 'maxConnection', '1'),
		('itm-10102', 'maxConnection', '1'),
		('core-itm', 'timeout', '40000'),
		('core-itm', 'closeOnReply', 'true'),
		('core-itm', 'maxConnection', '50');

INSERT INTO MWCONFIG.SERVER_PORT (ADAPTOR_ID, PORT, SERVER, GROUP)
	VALUES 
		('itm-10101', 10101, 'server-1', 'itm'),
		('itm-10102', 10102, 'server-1', 'itm');

INSERT INTO MWCONFIG.CLIENT (ADAPTOR_ID, IDLE_WAIT, KEEP_CONN, NODE)
	VALUES ('core-itm', 30000, 0, 'core-client');

INSERT INTO MWCONFIG.CLIENT_TARGET (CLIENT_ID, ID, HOST, SEQ)
	VALUES ('core-itm', 'core-itm', 'BTNCOREKONVEN:13000', 1);

INSERT INTO MWCONFIG.DBCONN(ID, DRIVER, URL, USERNAME, PASSWORD, SCHEMA, MODIFIED_BY, TIMESTAMP)
	VALUES 
		('mwlog', 'com.ibm.db2.jcc.DB2Driver', 'jdbc:db2://btnmwlog:50000/MWLOG', 'db2inst1', 'wajFMo2HsNWsRQcLal8Y47jzNMHI+oAu8ywJwIfL9cA=', 'MWLOG', CURRENT USER, CURRENT TIMESTAMP),
		('CORE_KONVEN_DSP', 'com.ibm.as400.access.AS400JDBCDriver', 'jdbc:as400://BTNCOREKONVEN;prompt=false', 'RPTSPP', 'SmDNFJ5hiv3cLh1UQnV6bw==', 'P', CURRENT USER, CURRENT TIMESTAMP);

INSERT INTO MWCONFIG.PARSER(ID, MODIFIED_BY, TIMESTAMP)
	VALUES 
		('parser-1', CURRENT USER, CURRENT TIMESTAMP);

INSERT INTO MWCONFIG.ROUTING_TABLE (CODE_START, CODE_END, CHANNEL, START_DATE, QUEUE, STATUS, CREATE_BY, CREATE_DATE)
	VALUES 
		('0800.000000', '0800.999999', 'itm', CURRENT TIMESTAMP, 'ITM_NETWORK_IN', 'ACTIVE', CURRENT USER, CURRENT TIMESTAMP),
		('*', '*', 'itm', CURRENT TIMESTAMP, 'ITM_IN', 'ACTIVE', CURRENT USER, CURRENT TIMESTAMP);

INSERT INTO MWCONFIG.DEV_TELLER_MAP (GROUP, DEVICE_ID, DEVICE_NAME, TERMINAL_ID, TERMINAL_IP, TELLER_ID, CTRL_UNIT_ID, TIMESTAMP, MODIFIED_BY)
	VALUES 
		('itm', '20004711', '', '20004711', '10.254.47.34', '9904711', 'C47', CURRENT TIMESTAMP, CURRENT USER);

INSERT INTO MWCONFIG.ERROR_MAP(GROUP, ORIGINAL, TARGET, MODIFIED_BY, TIMESTAMP, DETAIL) VALUES
    ('core-itm', '001', '01', CURRENT USER, CURRENT TIMESTAMP, 'Account number not found'),
    ('core-itm', '005', '02', CURRENT USER, CURRENT TIMESTAMP, 'Saldo anda tidak mencukupi'),
    ('core-itm', '006', '03 ', CURRENT USER, CURRENT TIMESTAMP, 'Rekening Baru'),
    ('core-itm', '007', '20', CURRENT USER, CURRENT TIMESTAMP, 'Rekening sudah ditutup'),
    ('core-itm', '008', '97 ', CURRENT USER, CURRENT TIMESTAMP, 'Rekening pasif'),
    ('core-itm', '009', '98 ', CURRENT USER, CURRENT TIMESTAMP, 'Restricted account'),
    ('core-itm', '010', '78 ', CURRENT USER, CURRENT TIMESTAMP, 'Rekening dibekukan'),
    ('core-itm', '011', '08 ', CURRENT USER, CURRENT TIMESTAMP, 'Cetak buku tabungan dulu'),
    ('core-itm', '014', '02 ', CURRENT USER, CURRENT TIMESTAMP, 'Saldo Lebih Kecil dari Min.Bal'),
    ('core-itm', '016', '02 ', CURRENT USER, CURRENT TIMESTAMP, 'Transaksi > Saldo'),
    ('core-itm', '017', '78 ', CURRENT USER, CURRENT TIMESTAMP, 'Frozen or Zero Accrual Account'),
    ('core-itm', '022', '11 ', CURRENT USER, CURRENT TIMESTAMP, 'Transaction amount > Late charges due'),
    ('core-itm', '033', '16 ', CURRENT USER, CURRENT TIMESTAMP, 'Deceased customer'),
    ('core-itm', '048', '20 ', CURRENT USER, CURRENT TIMESTAMP, 'Account closed today'),
    ('core-itm', '062', '10 ', CURRENT USER, CURRENT TIMESTAMP, 'Exceeds drawing limit'),
    ('core-itm', '063', '23 ', CURRENT USER, CURRENT TIMESTAMP, 'Loan expired'),
    ('core-itm', '065', '24 ', CURRENT USER, CURRENT TIMESTAMP, 'No loan released yet'),
    ('core-itm', '072', '24 ', CURRENT USER, CURRENT TIMESTAMP, 'No loan released yet'),
    ('core-itm', '075', '27 ', CURRENT USER, CURRENT TIMESTAMP, 'Charged off loan'),
    ('core-itm', '081', '28 ', CURRENT USER, CURRENT TIMESTAMP, 'Batas pendebetan per hari'),
    ('core-itm', '082', '29 ', CURRENT USER, CURRENT TIMESTAMP, 'Withdrawal Prohibited'),
    ('core-itm', '085', '86 ', CURRENT USER, CURRENT TIMESTAMP, 'Account blacklisted'),
    ('core-itm', '086', '09 ', CURRENT USER, CURRENT TIMESTAMP, 'Rekening diblokir'),
    ('core-itm', '090', '15 ', CURRENT USER, CURRENT TIMESTAMP, 'Rekening belum diaktifkan'),
    ('core-itm', '092', '33 ', CURRENT USER, CURRENT TIMESTAMP, 'Dalam proses kebangkrutan'),
    ('core-itm', '101', '34 ', CURRENT USER, CURRENT TIMESTAMP, 'Blokir Debet & Kredit'),
    ('core-itm', '102', '17 ', CURRENT USER, CURRENT TIMESTAMP, 'Blokir Debet'),
    ('core-itm', '104', '18 ', CURRENT USER, CURRENT TIMESTAMP, 'Blokir Kredit'),
    ('core-itm', '106', '37 ', CURRENT USER, CURRENT TIMESTAMP, 'Passbook Replacement Required'),
    ('core-itm', '120', '38 ', CURRENT USER, CURRENT TIMESTAMP, 'NPL Account Status'),
    ('core-itm', '123', '88 ', CURRENT USER, CURRENT TIMESTAMP, 'Rekening sudah ditutup'),
    ('core-itm', '135', '38 ', CURRENT USER, CURRENT TIMESTAMP, 'NPL Account Status'),
    ('core-itm', '142', '21 ', CURRENT USER, CURRENT TIMESTAMP, 'Transaction amount not multiple of $1000'),
    ('core-itm', '151', '40 ', CURRENT USER, CURRENT TIMESTAMP, 'Transaction is not allowed'),
    ('core-itm', '162', '28 ', CURRENT USER, CURRENT TIMESTAMP, 'Batas pendebetan per hari'),
    ('core-itm', '141', '41 ', CURRENT USER, CURRENT TIMESTAMP, 'Exceeds IBT Withdrawal limit'),
    ('core-itm', '173', '25 ', CURRENT USER, CURRENT TIMESTAMP, 'Outstanding balance less than zero'),
    ('core-itm', '176', '43 ', CURRENT USER, CURRENT TIMESTAMP, 'Transaction amount > accrued penalty interest'),
    ('core-itm', '177', '44 ', CURRENT USER, CURRENT TIMESTAMP, 'Transaction amount > interest payable'),
    ('core-itm', '180', '45 ', CURRENT USER, CURRENT TIMESTAMP, 'Transaction amount > paid late charge'),
    ('core-itm', '182', '46 ', CURRENT USER, CURRENT TIMESTAMP, 'Transaction amount > principal'),
    ('core-itm', '185', '47 ', CURRENT USER, CURRENT TIMESTAMP, 'Transaction amount > interest rebate'),
    ('core-itm', '186', '48 ', CURRENT USER, CURRENT TIMESTAMP, 'Transaction amount > accrued commitment fee'),
    ('core-itm', '189', '49 ', CURRENT USER, CURRENT TIMESTAMP, 'Transaction Amount > Billed principal amount'),
    ('core-itm', '190', '50 ', CURRENT USER, CURRENT TIMESTAMP, 'Transaction amount > billed interest amount'),
    ('core-itm', '191', '51 ', CURRENT USER, CURRENT TIMESTAMP, 'Transaction Amount > Billed escrow amount'),
    ('core-itm', '192', '52 ', CURRENT USER, CURRENT TIMESTAMP, 'Transaction amount > Billed Late Charges'),
    ('core-itm', '193', '53 ', CURRENT USER, CURRENT TIMESTAMP, 'Transaction amount > billed other charges'),
    ('core-itm', '194', '54 ', CURRENT USER, CURRENT TIMESTAMP, 'Transaction amount > Billed Miscellaneous cost'),
    ('core-itm', '195', '55 ', CURRENT USER, CURRENT TIMESTAMP, 'Transaction amount > total billed amount'),
    ('core-itm', '217', '02 ', CURRENT USER, CURRENT TIMESTAMP, 'Saldo Rek Debet tidak cukup'),
    ('core-itm', '218', '57 ', CURRENT USER, CURRENT TIMESTAMP, 'Loan Account is in restructuring'),
    ('core-itm', '219', '58 ', CURRENT USER, CURRENT TIMESTAMP, 'Transaction amount > advance payment'),
    ('core-itm', '234', '59 ', CURRENT USER, CURRENT TIMESTAMP, 'Transaction amount > miscellaneous rebate amount'),
    ('core-itm', '243', '60 ', CURRENT USER, CURRENT TIMESTAMP, 'Account Has Owing Amount'),
    ('core-itm', '248', '40 ', CURRENT USER, CURRENT TIMESTAMP, 'Transaction is not allowed for account'),
    ('core-itm', '262', '79 ', CURRENT USER, CURRENT TIMESTAMP, 'Loan is paid off'),
    ('core-itm', '268', '88 ', CURRENT USER, CURRENT TIMESTAMP, 'Account was closed today'),
    ('core-itm', '272', '80 ', CURRENT USER, CURRENT TIMESTAMP, 'Zero amount not allowed'),
    ('core-itm', '279', '68', CURRENT USER, CURRENT TIMESTAMP, 'Transaction timed out'),
    ('core-itm', '283', '64 ', CURRENT USER, CURRENT TIMESTAMP, 'Account has no history records'),
    ('core-itm', '178', '91', CURRENT USER, CURRENT TIMESTAMP, 'Duplicate journal seq#'),
    ('core-itm', '034', '90', CURRENT USER, CURRENT TIMESTAMP, 'Original jrnl seq# not found'),
    ('core-itm', '996', '81', CURRENT USER, CURRENT TIMESTAMP, 'Failed to connect to core'),
    ('core-itm', '997', '82', CURRENT USER, CURRENT TIMESTAMP, 'Core timeout'),
    ('core-itm', '998', '83', CURRENT USER, CURRENT TIMESTAMP, 'Core EOD'),
    ('core-itm', '371', '14', CURRENT USER, CURRENT TIMESTAMP, 'Bill Not Found'),
    ('core-itm', '378', '88', CURRENT USER, CURRENT TIMESTAMP, 'Bill Not Found'),
    ('core-itm', '41 43', '40', CURRENT USER, CURRENT TIMESTAMP, null),
    ('core-itm', '294', '76', CURRENT USER, CURRENT TIMESTAMP, 'TELLER DOES NOT BELONG TO BRN'),
    ('core-itm', '424', '18', CURRENT USER, CURRENT TIMESTAMP, 'Debet tidak boleh sama Credit'),
    ('core-itm', '251', '04', CURRENT USER, CURRENT TIMESTAMP, 'Teller ID is invalid'),
    ('core-itm', '426', '40', CURRENT USER, CURRENT TIMESTAMP, 'Cif tidak sesuai'),
    ('core-itm', '269', '69', CURRENT USER, CURRENT TIMESTAMP, 'Account in use by other teller');

INSERT INTO MWCONFIG.PARAM_MAP (GROUP, NAME, VALUE, TIMESTAMP, MODIFIED_BY)
	VALUES 
		('core-response-ok', 'AXISSYSTEMSDNBHD.0000005470', 'F1', CURRENT TIMESTAMP, CURRENT USER),
		('core-response-ok', 'AXISSYSTEMSDNBHD.0000005476', 'F1', CURRENT TIMESTAMP, CURRENT USER),
		('core-response-ok', 'AXISSYSTEMSDNBHD.0000005183', 'F1', CURRENT TIMESTAMP, CURRENT USER),
		('error-f2', 'confail', '996', CURRENT TIMESTAMP, CURRENT USER),
		('itm-konven-code', '0200.201000.001001', '5001', CURRENT TIMESTAMP, CURRENT USER),
		('itm-konven-code', '0200.202000.001001', '5002', CURRENT TIMESTAMP, CURRENT USER),
		('time-check', 'time','15000', CURRENT TIMESTAMP, CURRENT USER);

INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES ('itm-network-res', NULL, CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) 
	VALUES 
		('itm-network-res', 1, '/data', '/data', NULL, NULL),
		('itm-network-res', 2, '/data/body', '/data/body', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT)
	VALUES 
		('itm-network-res', 1, '@', 'copyMessage();'),
		('itm-network-res', 1, 'connid', '${null}'),
		('itm-network-res', 1, 'mid', '${null}'),
		('itm-network-res', 1, 'nolog', 'true'),
		('itm-network-res', 1, 'sid', '${null}'),
		('itm-network-res', 2, 'messageType', '${msg.messageType.''!value''.substring(0,2).concat("10")}'),
		('itm-network-res', 2, 'responseCode', '00');

INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES ('router-change-group', NULL, CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) 
	VALUES ('router-change-group', 1, '/data', '/data', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) 
	VALUES 
		('router-change-group', 1, '@', 'copyMessage();', 10),
		('router-change-group', 1, 'groupTemp', '${getParamValue("group-change",head.group."!value"+"."+(head.body.reservedPrivate2?."!value"!=null?head.body.reservedPrivate2."!value".padRight(3,"0").substring(0,3):"000"), getParamValue("group-change",head.group?."!value"+"."+(head.body.reservedPrivate2?."!value"!=null?head.body.reservedPrivate2."!value".padRight(9,"0").substring(6,9):"000"), head.group."!value"))}', 10),
		('router-change-group', 1, 'groupCheckCode', '${getParamValue("group-check-code", head.group."!value"+"."+head.body.messageType."!value"+"."+(head.body.processingCode?."!value"==null?"":head.body.processingCode."!value".substring(0,2)), "false")}', 20),
		('router-change-group', 1, 'groupCore', '${getParamValue("group-core",tar.groupTemp."!value", head.group."!value")}', 25),
		('router-change-group', 1, 'group', '${tar.groupCheckCode."!value"=="true"?(head.code."!value".toLowerCase().contains(tar.groupCore."!value".toLowerCase())?tar.groupTemp:head.group):tar.groupTemp."!value"}', 30),
		('router-change-group', 1, 'oldgroup', '${head.group."!value"}', NULL);

INSERT INTO MWCONFIG.MAPPING(ID, DESCRIPTION, MODULE, MODIFIED_BY, TIMESTAMP) VALUES('time-request-check', NULL, NULL, CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP(MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
	('time-request-check', 1, '/data', '/data', NULL, NULL),
	('time-request-check', 2, '/data', '/data', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE(MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
	('time-request-check', 1, '@', 'copyMessage();', 1),
	('time-request-check', 1, 'time_param', '${getParamValue("time-check","time","30000")}', 2),
	('time-request-check', 1, 'current_timestamp', '${java.util.Calendar.getInstance().getTimeInMillis()}', 3),
	('time-request-check', 2, 'time_total', '${tar.ttl == null ? new Long(tar.time_param."!value")+new Long(tar.reqtimestamp."!value") : new Integer(tar.ttl."!value") > new Integer("0") ? new Long(tar.ttl."!value")+new Long(tar.reqtimestamp."!value") : new Long(tar.reqtimestamp."!value")}', 1);

INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES
    ('dsp', '[pay][itm][sms][bmii][ivr][ebbm][cms][ibpp][iwswc][syariah][smsmd][semmd][scamd][sajmd][ibbft][cbimd][ibbmd][zsim][iwswc]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
    ('dsp', 1, '/data/body', '/data/body', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES
    ('dsp', 1, '!CorrelId', '${head.CorrelId}', null),
    ('dsp', 1, '!code', '${head.code}', null),
    ('dsp', 1, '!connid', '${head.connid}', null),
    ('dsp', 1, '!destination', '${head.source}', null),
    ('dsp', 1, '!dir', '${head.dir}', null),
    ('dsp', 1, '!group', '${head.group}', null),
    ('dsp', 1, '!mid', '${head.mid}', null),
    ('dsp', 1, '!newgroup', '${head.groupTemp != null ? head.groupTemp : head.groupCore != null ? head.groupCore : head.newgroup != null ? head.newgroup : null}', null),
    ('dsp', 1, '!remaining', 'AAA=', null),
    ('dsp', 1, '!remainingPos', '1268', null),
    ('dsp', 1, '!reqtimestamp', '${head.reqtimestamp}', null),
    ('dsp', 1, '!sid', '${head.sid}', null),
    ('dsp', 1, '!source', '${head.source}', null),
    ('dsp', 1, '!timestamp', '${head.timestamp}', null),
    ('dsp', 1, '!type', '${head.type}', null);


INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES
    ('req-core.itm', '[itm][syariah]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
    ('req-core.itm', 1, '/data/body', '/data/body', 'dsp', '1');
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES
    ('req-core.itm', 1, 'TELLER', '${msg.cardAcceptorTerminalIdentification."!value".substring(0,3) == "T02"||msg.cardAcceptorTerminalIdentification."!value".substring(0,3) == "T08"||msg.cardAcceptorTerminalIdentification."!value".substring(0,3) == "T09"?"JLN":(msg.cardAcceptorTerminalIdentification."!value".trim())}', 1),
    ('req-core.itm', 1, 'dspTransactionCode', '${getParamValue("itm-konven-code", "0200."+head.code."!value".substring(5), "0000")}', 10),
    ('req-core.itm', 1, 'tellerComplete', '${getParamValue("device_teller_map", head.group."!value".trim() + "_" + tar.TELLER."!value", "|||| ")}', 10),
    ('req-core.itm', 1, '!code', '${"AXISSYSTEMSDNBHD."+tar.dspTransactionCode}', 20),
    ('req-core.itm', 1, 'ICDEVN', '${tar.tellerComplete."!value".split("\\|", -1)[3]}', 20),
    ('req-core.itm', 1, 'TLBCUD', '${tar.tellerComplete."!value".split("\\|", -1)[2]}', 20),
    ('req-core.itm', 1, 'TLBID', '${tar.tellerComplete."!value".split("\\|", -1)[0]}', 20),
    ('req-core.itm', 1, 'TLBTCD', '${tar.dspTransactionCode}', 20),
    ('req-core.itm', 1, 'dspDeviceName', '${tar.tellerComplete."!value".split("\\|", -1)[3]}', 20),
    ('req-core.itm', 1, 'dspTerminalId', '${tar.tellerComplete."!value".split("\\|", -1)[1]}', 20),
    ('req-core.itm', 1, 'dspUserId', '${tar.tellerComplete."!value".split("\\|", -1)[0]}', 20),
    ('req-core.itm', 1, '!destination', 'core-itm', null),
    ('req-core.itm', 1, '!mappingCode', '${head.code}', null),
    ('req-core.itm', 1, '!queueName', 'CORE_IN', null),
    ('req-core.itm', 1, '!type', 'dsp', null),
    ('req-core.itm', 1, '@', 'copyMessageToChild("original");', null),
    ('req-core.itm', 1, 'ICEOM', '*EOM', null),
    ('req-core.itm', 1, 'ICHEAD', '*MOSA', null),
    ('req-core.itm', 1, 'ICID', '00000', null),
    ('req-core.itm', 1, 'ICLEN', '1020', null),
    ('req-core.itm', 1, 'RMADD3', '${(msg.track2Data==null||msg.track2Data."!value"==null?"":msg.track2Data."!value").padRight(37," ")}', null),
    ('req-core.itm', 1, 'RMAPID', '${msg.retrievalReferenceNumber}${new java.text.SimpleDateFormat("yy").format(new Date())+msg.dateLocalTransaction."!value"}${msg.timeLocalTransaction}', null),
    ('req-core.itm', 1, 'RMPSTC', '${new java.text.SimpleDateFormat("yyyy").format(new Date())+msg.dateLocalTransaction."!value"}', null),
    ('req-core.itm', 1, 'RMSEHS', '${msg.dateLocalTransaction}', null),
    ('req-core.itm', 1, 'TLBCIF', '${msg.timeLocalTransaction}', null),
    ('req-core.itm', 1, 'TLBCUR', 'IDR', null),
    ('req-core.itm', 1, 'TLBDS1', '${msg.timeLocalTransaction."!value"+msg.dateLocalTransaction."!value"+msg.acquiringInstitutionIdentificationCode."!value".padRight(11," ")+msg.merchantType."!value".padRight(4, " ")+msg.retrievalReferenceNumber."!value".padRight(12," ")}', null),
    ('req-core.itm', 1, 'TLBFIL', '${msg.cardAcceptorTerminalIdentification."!value"+msg.retrievalReferenceNumber."!value".padRight(12," ")+msg.acquiringInstitutionIdentificationCode."!value".padRight(11," ")}', null),
    ('req-core.itm', 1, 'TLBFP1', 'FF', null),
    ('req-core.itm', 1, 'TLBFP2', 'FC', null),
    ('req-core.itm', 1, 'TLBFP3', 'FF', null),
    ('req-core.itm', 1, 'TLBJC1', '00', null),
    ('req-core.itm', 1, 'TLBJC2', '00', null),
    ('req-core.itm', 1, 'TLBJSN', '${msg.systemsTraceAuditNumber}', null),
    ('req-core.itm', 1, 'TLBTDT', '${msg.transmissionDateTime."!value".substring(2,4)+msg.transmissionDateTime."!value".substring(0,2)+new java.text.SimpleDateFormat("yy").format(new Date())}', null),
    ('req-core.itm', 1, 'TLBWC1', '00', null),
    ('req-core.itm', 1, 'TLBWC2', '00', null),
    ('req-core.itm', 1, 'TLBWS', 'ES', null),
    ('req-core.itm', 1, 'TLCUR1', 'IDR', null),
    ('req-core.itm', 1, 'TLXUFD', 'ATM', null),
    ('req-core.itm', 1, 'TMTIMIN', '000000', null),
    ('req-core.itm', 1, 'TMTXTYP', 'T9999', null),
    ('req-core.itm', 1, 'dspBankIdNumber', '00000000000', null),
    ('req-core.itm', 1, 'dspDataFormatId', 'ABCS', null),
    ('req-core.itm', 1, 'dspExchangeId', '4040404040404040404040404040404040404040', null),
    ('req-core.itm', 1, 'dspFiller1', 'F0', null),
    ('req-core.itm', 1, 'dspHeaderType', '*HOST', null),
    ('req-core.itm', 1, 'dspNode', '00', null),
    ('req-core.itm', 1, 'dspScenarioNumber', 'AXISSYSTEMSDNBHD', null),
    ('req-core.itm', 1, 'dspSourceId', '*AXIS', null),
    ('req-core.itm', 1, 'dspVersionNumber', '0000', null);


INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES ('res-core.itm', '[itm]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET) VALUES ('res-core.itm', 1, '/data/body', '/data/body');
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ)
VALUES 
	('res-core.itm', 1, '@', 'copyMessage("../body", "request/data/body/original")', 10),
	('res-core.itm', 1, '!ReplyToQ', ' ${head.request.data.body?.original1!=null?head.request.data.body.original1.request.data.ReplyToQOri."!value".trim():head.request.data.ReplyToQOri!=null?head.request.data.ReplyToQOri."!value":"ROUTER_OUT"}', 10),
	('res-core.itm', 1, '!connid', '${head.connid}', 20),
	('res-core.itm', 1, '!CorrelId', '${head.CorrelId}', 20),
	('res-core.itm', 1, '!group', '${head.request.data.group}', 20),
	('res-core.itm', 1, '!mid', '${head.request.data.mid}', 20),
	('res-core.itm', 1, '!reqtimestamp', '${head.reqtimestamp}', 20),
	('res-core.itm', 1, '!sid', '${head.sid}', 20),
	('res-core.itm', 1, '!source', '${head.request.data.source}', 20),
	('res-core.itm', 1, '!timestamp', '${head.timestamp}', 20),
	('res-core.itm', 1, 'primaryAccountNumber', '${head.request.data.body.original.primaryAccountNumber}', 20),
	('res-core.itm', 1, 'processingCode', '${head.request.data.body.original.processingCode}', 20),
	('res-core.itm', 1, 'amountTransaction', '${head.request.data.body.original.amountTransaction}', 20),
	('res-core.itm', 1, 'amountCardholderBilling', '${head.request.data.body.original.amountCardholderBilling}', 20),
	('res-core.itm', 1, 'transmissionDateTime', '${head.request.data.body.original.transmissionDateTime}', 20),
	('res-core.itm', 1, 'conversionRateCardholderBilling', '${head.request.data.body.original.conversionRateCardholderBilling}', 20),
	('res-core.itm', 1, 'systemsTraceAuditNumber', '${head.request.data.body.original.systemsTraceAuditNumber}', 20),
	('res-core.itm', 1, 'timeLocalTransaction', '${head.request.data.body.original.timeLocalTransaction}', 20),
	('res-core.itm', 1, 'dateLocalTransaction', '${head.request.data.body.original.dateLocalTransaction}', 20),
	('res-core.itm', 1, 'dateCapture', '${head.request.data.body.original.dateCapture}', 20),
	('res-core.itm', 1, 'merchantType', '${head.request.data.body.original.merchantType}', 20),
	('res-core.itm', 1, 'amountTransactionFee', '${head.request.data.body.original.amountTransactionFee}', 20),
	('res-core.itm', 1, 'acquiringInstitutionIdentificationCode', '${head.request.data.body.original.acquiringInstitutionIdentificationCode}', 20),
	('res-core.itm', 1, 'forwardingInstitutionIdentificationCode', '${head.request.data.body.original.forwardingInstitutionIdentificationCode}', 20),
	('res-core.itm', 1, 'track2Data', '${head.request.data.body.original.track2Data}', 20),
	('res-core.itm', 1, 'retrievalReferenceNumber', '${head.request.data.body.original.retrievalReferenceNumber}', 20),
	('res-core.itm', 1, 'responseCode', '00', 20),
	('res-core.itm', 1, 'cardAcceptorTerminalIdentification', '${head.request.data.body.original.cardAcceptorTerminalIdentification}', 20),
	('res-core.itm', 1, 'cardAcceptorIdentificationCode', '${head.request.data.body.original.cardAcceptorIdentificationCode}', 20),
	('res-core.itm', 1, 'cardAcceptorName', '${head.request.data.body.original.cardAcceptorName}', 20),
	('res-core.itm', 1, 'additionalDataPrivate', '${head.request.data.body.original.additionalDataPrivate}', 20),
	('res-core.itm', 1, 'currencyCodeTransaction', '${head.request.data.body.original.currencyCodeTransaction}', 20),
	('res-core.itm', 1, 'reasonCode', '${head.request.data.body.original.reasonCode}', 20),
	('res-core.itm', 1, 'reservedPrivate1', '${head.request.data.body.original.reservedPrivate1}', 20),
	('res-core.itm', 1, 'reservedPrivate2', '${head.request.data.body.original.reservedPrivate2}', 20),
	('res-core.itm', 1, 'receivingInstitutionIdentificationCode', '${head.request.data.body.original.receivingInstitutionIdentificationCode}', 20),
	('res-core.itm', 1, 'fromAccount', '${head.request.data.body.original.fromAccount}', 20),
	('res-core.itm', 1, 'toAccount', '${head.request.data.body.original.toAccount}', 20),
	('res-core.itm', 1, 'reservedForPrivateUse1', '${head.request.data.body.original.reservedForPrivateUse1}', 20),
	('res-core.itm', 1, 'networkManagementInformation', '${head.request.data.body.original.networkManagementInformation}', 20),
	('res-core.itm', 1, 'reservedForPrivateUse', '${head.request.data.body.original.reservedForPrivateUse}', 20);

INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES ('res-core.itm.0200', '[itm]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) 
	VALUES ('res-core.itm.0200', 1, '/data/body', '/data/body', 'res-core.itm', 1);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ)
VALUES 
		('res-core.itm.0200', 1, 'messageType', '0210', 10),
		('res-core.itm.0200', 1, '!code', '${tar.messageType."!value"+"."+tar.processingCode."!value"}', 20);

INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES ('abcs-res-conFail-F2', '[core]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES ('abcs-res-conFail-F2', 1, '/data/body', '/data/body', 'dsp', 1);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) 
VALUES ('abcs-res-conFail-F2', 1, 'TLBERR_F2', '${getParamValue("error-f2","confail","999")}', 10),
	   ('abcs-res-conFail-F2', 1, 'ERROR_F2', '${tar.TLBERR_F2."!value" == getParamValue("error-f2","confail","999") ? getParamValue("error-f2","confail-detail","Invalid error") : "Invalid error"}', 20),
	   ('abcs-res-conFail-F2', 1, 'isF2code', '${tar.TLBERR_F2}', 20),
	   ('abcs-res-conFail-F2', 1, 'responseCode', '${tar.TLBERR_F2}', 20),
	   ('abcs-res-conFail-F2', 1, '!CorrelId', '${head.request.data.CorrelId}', NULL),
	   ('abcs-res-conFail-F2', 1, '!adaptor', '${head.adaptor?head.adaptor:head.request.data.source}', NULL),
	   ('abcs-res-conFail-F2', 1, '!code', '${head.request.data.code}', NULL),
	   ('abcs-res-conFail-F2', 1, '!codex_1', 'dsp-abcs-response', NULL),
	   ('abcs-res-conFail-F2', 1, '!dir', 'I', NULL),
	   ('abcs-res-conFail-F2', 1, '!multicodex_1', 'dsp-abcs-subresponse-F2', NULL),
	   ('abcs-res-conFail-F2', 1, '!multicodex_suffix_1', '_F2', NULL),
	   ('abcs-res-conFail-F2', 1, '!reqtimestamp', '${head.request.data.reqtimestamp}', NULL),
	   ('abcs-res-conFail-F2', 1, '!source', '${head.request.data.source?head.request.data.source:head.request.data.destination}', NULL),
	   ('abcs-res-conFail-F2', 1, '!timestamp', '${System.currentTimeMillis()}', NULL),
	   ('abcs-res-conFail-F2', 1, '!type', 'dsp-abcs-response', NULL),
	   ('abcs-res-conFail-F2', 1, '@', 'copyMessage("../request", "request");', NULL),
	   ('abcs-res-conFail-F2', 1, 'AVBAL_F2', '0', NULL),
	   ('abcs-res-conFail-F2', 1, 'FILLER1_F2', '11', NULL),
	   ('abcs-res-conFail-F2', 1, 'FILLER2_F2', '11', NULL),
	   ('abcs-res-conFail-F2', 1, 'ICCOMQ', 'DQAXISIN  ', NULL),
	   ('abcs-res-conFail-F2', 1, 'ICDEVN', '${msg.ICDEVN}', NULL),
	   ('abcs-res-conFail-F2', 1, 'ICEOM', '${msg.ICEOM}', NULL),
	   ('abcs-res-conFail-F2', 1, 'ICHEAD', '*SOKR', NULL),
	   ('abcs-res-conFail-F2', 1, 'ICID', '00000', NULL),
	   ('abcs-res-conFail-F2', 1, 'ICIPSF', '0', NULL),
	   ('abcs-res-conFail-F2', 1, 'ICLEN', '122', NULL),
	   ('abcs-res-conFail-F2', 1, 'ICRSV1', '0', NULL),
	   ('abcs-res-conFail-F2', 1, 'ICRTRQ', '          ', NULL),
	   ('abcs-res-conFail-F2', 1, 'TMTIMIN', '000000', NULL),
	   ('abcs-res-conFail-F2', 1, 'TMTXTYP', '${msg.TMTXTYP}', NULL),
	   ('abcs-res-conFail-F2', 1, 'abcsResponses', '[F2]', NULL),
	   ('abcs-res-conFail-F2', 1, 'dspBankIdNumber', '${msg.dspBankIdNumber}', NULL),
	   ('abcs-res-conFail-F2', 1, 'dspDataFormatId', '${msg.dspDataFormatId}', NULL),
	   ('abcs-res-conFail-F2', 1, 'dspDestinationId', 'DQAXISIN  ', NULL),
	   ('abcs-res-conFail-F2', 1, 'dspExchangeId', '                    ', NULL),
	   ('abcs-res-conFail-F2', 1, 'dspFiller1', '40', NULL),
	   ('abcs-res-conFail-F2', 1, 'dspHeaderFormatId', '*DSP', NULL),
	   ('abcs-res-conFail-F2', 1, 'dspHeaderLength', '0213', NULL),
	   ('abcs-res-conFail-F2', 1, 'dspHeaderType', '*SOKI', NULL),
	   ('abcs-res-conFail-F2', 1, 'dspMessageStatus', '.-------', NULL),
	   ('abcs-res-conFail-F2', 1, 'dspNumberOfErrorsToBeLoaded', '0010', NULL),
	   ('abcs-res-conFail-F2', 1, 'dspNumberOfRecordsToBeLoaded', '0010', NULL),
	   ('abcs-res-conFail-F2', 1, 'dspPacketLength', '', NULL),
	   ('abcs-res-conFail-F2', 1, 'dspPortNumber', '${msg.dspPortNumber}', NULL),
	   ('abcs-res-conFail-F2', 1, 'dspRetrievalReferenceNumber', '                      ', NULL),
	   ('abcs-res-conFail-F2', 1, 'dspRoutingNumber', '00    ', NULL),
	   ('abcs-res-conFail-F2', 1, 'dspScenarioNumber', '${msg.dspScenarioNumber}', NULL),
	   ('abcs-res-conFail-F2', 1, 'dspSourceId', '${msg.dspSourceId}', NULL),
	   ('abcs-res-conFail-F2', 1, 'dspTerminalId', '${msg.dspTerminalId}', NULL),
	   ('abcs-res-conFail-F2', 1, 'dspTransactionCode', '${msg.dspTransactionCode}', NULL),
	   ('abcs-res-conFail-F2', 1, 'dspUserId', '${msg.dspUserId}', NULL),
	   ('abcs-res-conFail-F2', 1, 'dspVersionNumber', '0200', NULL),
	   ('abcs-res-conFail-F2', 1, 'responseCode_F2', 'F2', NULL),
	   ('abcs-res-conFail-F2', 1, 'responseHeader_F2', 'F2', NULL),
	   ('abcs-res-conFail-F2', 1, 'sequenceNumber', '${msg.TLBJSN}', NULL),
	   ('abcs-res-conFail-F2', 1, 'tellerID', '${msg.TLBID}', NULL);

INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES ('check.res-core.need-reversal', '[itm]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) 
	VALUES ('check.res-core.need-reversal', 1, '/data', '/data', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) 
	VALUES 
		('check.res-core.need-reversal', 1, '@', 'copyMessage()', NULL),
		('check.res-core.need-reversal', 1, 'coreAct', '${getParamValue("check.res-core."+msg.request.data.group."!value"+"."+msg.request.data.body.original.processingCode."!value", msg.body.responseCode==null?"99":msg.body.responseCode."!value","not")}', NULL);

INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES ('res-core.itm.error', '[itm]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES ('res-core.itm.error', 1, '/data/body', '/data/body', 'res-core.itm', 1);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT)
	VALUES 
		('res-core.itm.error', 1, '!error', '${head.error}'),
		('res-core.itm.error', 1, '!errorDetail', '${head.errorDetail}'),
		('res-core.itm.error', 1, 'responseCode', '${getParamValue("error_map|".concat(head.adaptor==null?head.destination."!value":head.adaptor."!value"), msg.responseCode."!value", "99")}');

INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES ('res-core.itm.0200.error', '[itm]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) 
	VALUES ('res-core.itm.0200.error', 1, '/data/body', '/data/body', 'res-core.itm.error', 1);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ)
	VALUES 
		('res-core.itm.0200.error', 1, 'messageType', '0210', 10),
		('res-core.itm.0200.error', 1, '!code', '${tar.messageType."!value"+"."+tar.processingCode."!value"}', 20);

INSERT INTO MWCONFIG.MAPPING(ID, DESCRIPTION, MODIFIED_BY, TIMESTAMP, MODULE) VALUES
    ('res-core.itm.0400.error', null, CURRENT USER, CURRENT TIMESTAMP, '[itm][itsii]');
INSERT INTO MWCONFIG.MAPPING_GROUP(MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
    ('res-core.itm.0400.error', 1, '/data/body', '/data/body', 'res-core.itm.error', 1);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE(MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES
    ('res-core.itm.0400.error', 1, '!code', '${tar.messageType."!value"+"."+tar.processingCode."!value"}', 20),
    ('res-core.itm.0400.error', 1, 'messageType', '0410', 10),
    ('res-core.itm.0400.error', 1, '!newgroup', '${head.request.data.newgroup == null ? null : head.request.data.newgroup}', 20);


INSERT INTO MWCONFIG.RELOADTS(BROKER, EXECUTIONGROUP, MODIFIED_BY, TIMESTAMP, TYPE) 
	VALUES 
		('ITMBROKER', 'ITMROUTER', CURRENT USER, CURRENT TIMESTAMP, 'mapping'),
		('ITMBROKER', 'ITMROUTER', CURRENT USER, CURRENT TIMESTAMP, 'routing'),
		('ITMBROKER', 'ITMCORE1', CURRENT USER, CURRENT TIMESTAMP, 'port'),
		('ITMBROKER', 'ITMITM1', CURRENT USER, CURRENT TIMESTAMP, 'codex'),
		('ITMBROKER', 'ITMITM1', CURRENT USER, CURRENT TIMESTAMP, 'db'),
		('ITMBROKER', 'ITMITM1', CURRENT USER, CURRENT TIMESTAMP, 'mapping'),
		('ITMBROKER', 'ITMITM1', CURRENT USER, CURRENT TIMESTAMP, 'param'),
		('ITMBROKER', 'ITMITM1', CURRENT USER, CURRENT TIMESTAMP, 'parser'),
		('ITMBROKER', 'ITMITM1', CURRENT USER, CURRENT TIMESTAMP, 'port'),
		('ITMBROKER', 'ITMITM1', CURRENT USER, CURRENT TIMESTAMP, 'routing'),
		('ITMBROKER', 'ITMITM1', CURRENT USER, CURRENT TIMESTAMP, 'rpg');

INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES ('res-core.itm.0400', '[itm]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES ('res-core.itm.0400', 1, '/data/body', '/data/body', 'res-core.itm', '1');
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('res-core.itm.0400', 1, 'messageType', '0410', 10);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('res-core.itm.0400', 1, '!code', '${tar.messageType."!value"+"."+tar.processingCode."!value"}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('res-core.itm.0400', 1, '!newgroup', '${head.request.data.newgroup == null ? null : head.request.data.newgroup}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('res-core.itm.0400', 1, '!oldgroup', '${head.request.data.group == null ? null : head.request.data.group}', 20);


INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES ('dsp-fail', '[core]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES ('dsp-fail', 1, '/data/request/data/body', '/data/body', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('dsp-fail', 1, '!CorrelId', '${head.request.data.CorrelId}', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('dsp-fail', 1, '!code', '${head.request.data.code}', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('dsp-fail', 1, '!connid', '${head.request.data.connid}', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('dsp-fail', 1, '!destination', '${head.request.data.destination}', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('dsp-fail', 1, '!dir', '${head.request.data.dir}', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('dsp-fail', 1, '!group', '${head.request.data.group}', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('dsp-fail', 1, '!raw', '', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('dsp-fail', 1, '!remaining', '', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('dsp-fail', 1, '!remainingPos', '', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('dsp-fail', 1, '!reqtimestamp', '${head.request.data.reqtimestamp}', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('dsp-fail', 1, '!sid', '${head.request.data.sid}', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('dsp-fail', 1, '!source', '${head.request.data.source}', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('dsp-fail', 1, '!timestamp', '${System.currentTimeMillis()}', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('dsp-fail', 1, '!type', '${head.request.data.type}', null);

INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES ('abcs-res-timeout-F2', '[core]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES ('abcs-res-timeout-F2', 1, '/data/request/data/body', '/data/body', 'dsp-fail', '1');
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES ('abcs-res-timeout-F2', 2, '/data/request/data/body', '/data/body', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, '!adaptor', '${head.request.data.destination}', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, '!codex_1', 'dsp-abcs-response', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, '!multicodex_1', 'dsp-abcs-subresponse-F2', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, '!multicodex_suffix_1', '_F2', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, '!type', 'dsp-abcs-response', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, '@', 'copyMessage("..", ".");', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, 'AVBAL_F2', '0', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, 'FILLER1_F2', '11', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, 'FILLER2_F2', '11', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, 'ICCOMQ', 'DQAXISIN  ', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, 'ICDEVN', '${msg.ICDEVN}', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, 'ICEOM', '${msg.ICEOM}', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, 'ICHEAD', '*SOKR', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, 'ICID', '00000', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, 'ICIPSF', '0', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, 'ICLEN', '122', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, 'ICRSV1', '0', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, 'ICRTRQ', '          ', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, 'TLBERR_F2', '${local.JHEODS_STAT?(local.JHEODS_STAT.JHEODS."!value".trim() == "*INPROG" ? getParamValue("error-f2","eod","999") : getParamValue("error-f2","timeout","999")) : getParamValue("error-f2","timeout","999")}', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, 'TMTIMIN', '000000', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, 'TMTXTYP', '${msg.TMTXTYP}', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, 'abcsResponses', '[F2]', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, 'dspBankIdNumber', '${msg.dspBankIdNumber}', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, 'dspDataFormatId', '${msg.dspDataFormatId}', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, 'dspDestinationId', 'DQAXISIN  ', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, 'dspExchangeId', '                    ', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, 'dspFiller1', '40', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, 'dspHeaderFormatId', '*DSP', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, 'dspHeaderLength', '0213', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, 'dspHeaderType', '*SOKI', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, 'dspMessageStatus', '.-------', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, 'dspNumberOfErrorsToBeLoaded', '0010', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, 'dspNumberOfRecordsToBeLoaded', '0010', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, 'dspPacketLength', '', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, 'dspPortNumber', '${msg.dspPortNumber}', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, 'dspRetrievalReferenceNumber', '                      ', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, 'dspRoutingNumber', '00    ', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, 'dspScenarioNumber', '${msg.dspScenarioNumber}', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, 'dspSourceId', '${msg.dspSourceId}', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, 'dspTerminalId', '${msg.dspTerminalId}', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, 'dspTransactionCode', '${msg.dspTransactionCode}', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, 'dspUserId', '${msg.dspUserId}', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, 'dspVersionNumber', '0200', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, 'responseCode_F2', 'F2', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, 'responseHeader_F2', 'F2', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, 'sequenceNumber', '${msg.TLBJSN}', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 1, 'tellerID', '${msg.TLBID}', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 2, 'ERROR_F2', '${tar.TLBERR_F2."!value" == getParamValue("error-f2","eod","999") ? getParamValue("error-f2","eod-detail","Invalid error") : getParamValue("error-f2","timeout-detail","Invalid error")}', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('abcs-res-timeout-F2', 2, 'responseCode', '${tar.TLBERR_F2}', null);