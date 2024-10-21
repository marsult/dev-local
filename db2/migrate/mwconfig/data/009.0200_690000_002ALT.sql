INSERT INTO MWCONFIG.DTREE(GROUP, PATH, VALUE, MODIFIED_BY, TIMESTAMP, MODULE) VALUES
	('SMS-CODE', '0200.690000', '0200.690000.${msg.reservedPrivate2.substring(0, 6)}', CURRENT USER, CURRENT TIMESTAMP, '[smsro]'),
	('SMS-CODE', '0210.690000', '0210.690000.${msg.reservedPrivate2.substring(0, 6)}', CURRENT USER, CURRENT TIMESTAMP, '[smsro]');


INSERT INTO MWCONFIG.DTREE ("GROUP", "PATH", VALUE, MODIFIED_BY, "TIMESTAMP", MODULE) VALUES
	('CHARGES', 'sms', 'sms|${msg.processingCode."!value".substring(0,2)}', CURRENT USER, CURRENT TIMESTAMP, '[sms][smsd]'),
	('CHARGES', 'sms|69', 'sms-ibft-${msg.reservedPrivate2."!value".substring(3,6).toLowerCase()}', CURRENT USER, CURRENT TIMESTAMP, '[sms][smsd][smsmd]'),
	('CHARGES', 'sms|83', 'sms-ibft-${msg.reservedPrivate2."!value".substring(3,6).toLowerCase()}', CURRENT USER, CURRENT TIMESTAMP, '[sms][smsd][smsmd]'),
	('CHARGES', 'sms-ibft-alt', '---', CURRENT USER, CURRENT TIMESTAMP, '[sms][smsd][smsmd]'),
	('CHARGES', 'sms-ibft-amp', '---', CURRENT USER, CURRENT TIMESTAMP, '[sms][smsd][smsmd]'),
	('CHARGES', 'sms-ibft-bca', '---', CURRENT USER, CURRENT TIMESTAMP, '[sms][smsd][smsmd]'),
	('CHARGES', 'sms-ibft-hbr', '---', CURRENT USER, CURRENT TIMESTAMP, '[sms][smsd][smsmd]'),
	('CHARGES', 'sms-ibft-sat', '---', CURRENT USER, CURRENT TIMESTAMP, '[sms][smsd][smsmd]'),
	('CHARGES', 'sms-ibft-alt-syad', '---', CURRENT USER, CURRENT TIMESTAMP, '[sms][smsd][smsmd]'),
	('CHARGES', 'sms-ibft-amp-syad', '---', CURRENT USER, CURRENT TIMESTAMP, '[sms][smsd][smsmd]'),
	('CHARGES', 'sms-ibft-bca-syad', '---', CURRENT USER, CURRENT TIMESTAMP, '[sms][smsd][smsmd]'),
	('CHARGES', 'sms-ibft-sat-syad', '---', CURRENT USER, CURRENT TIMESTAMP, '[sms][smsd][smsmd]');

INSERT INTO MWCONFIG.DEV_TELLER_MAP(GROUP, DEVICE_ID, DEVICE_NAME, TERMINAL_ID, TELLER_ID, CTRL_UNIT_ID, MODIFIED_BY, TIMESTAMP, TERMINAL_IP) VALUES 
	('itm', 'ALTO01', 'ALTO', 'ALTO', '9300025', 'I99', CURRENT USER, CURRENT TIMESTAMP),
	('itm', 'ALTO02', 'ALTO', 'ALTO', '9300026', 'I99', CURRENT USER, CURRENT TIMESTAMP),
	('itm', 'ALTO03', 'ALTO', 'ALTO', '9300027', 'I99', CURRENT USER, CURRENT TIMESTAMP),
	('itm', 'ALTO04', 'ALTO', 'ALTO', '9300028', 'I99', CURRENT USER, CURRENT TIMESTAMP),
	('itm', 'ALTO05', 'ALTO', 'ALTO', '9300029', 'I99', CURRENT USER, CURRENT TIMESTAMP),
	('itm', 'ALTO06', 'ALTO', 'ALTO', '9300030', 'I99', CURRENT USER, CURRENT TIMESTAMP),
	('itm', 'ALTO07', 'ALTO', 'ALTO', '9300031', 'I99', CURRENT USER, CURRENT TIMESTAMP),
	('itm', 'ALTO08', 'ALTO', 'ALTO', '9300032', 'I99', CURRENT USER, CURRENT TIMESTAMP),
	('itm', 'ALTO09', 'ALTO', 'ALTO', '9300033', 'I99', CURRENT USER, CURRENT TIMESTAMP),
	('itm', 'ALTO10', 'ALTO', 'ALTO', '9300034', 'I99', CURRENT USER, CURRENT TIMESTAMP),
	('itm', 'ALTO11', 'ALTO', 'ALTO', '9300035', 'I99', CURRENT USER, CURRENT TIMESTAMP),
	('itm', 'ALTO12', 'ALTO', 'ALTO', '9300036', 'I99', CURRENT USER, CURRENT TIMESTAMP),
	('itm', 'ALTO13', 'ALTO', 'ALTO', '9300037', 'I99', CURRENT USER, CURRENT TIMESTAMP),
	('itm', 'ALTO14', 'ALTO', 'ALTO', '9300038', 'I99', CURRENT USER, CURRENT TIMESTAMP),
	('itm', 'ALTO15', 'ALTO', 'ALTO', '9300039', 'I99', CURRENT USER, CURRENT TIMESTAMP),
	('itm', 'ALTO16', 'ALTO', 'ALTO', '9300040', 'I99', CURRENT USER, CURRENT TIMESTAMP),
	('itm', 'ALTO17', 'ALTO', 'ALTO', '9300041', 'I99', CURRENT USER, CURRENT TIMESTAMP),
	('itm', 'ALTO18', 'ALTO', 'ALTO', '9300042', 'I99', CURRENT USER, CURRENT TIMESTAMP),
	('itm', 'ALTO19', 'ALTO', 'ALTO', '9300043', 'I99', CURRENT USER, CURRENT TIMESTAMP),
	('itm', 'ALTO20', 'ALTO', 'ALTO', '9300044', 'I99', CURRENT USER, CURRENT TIMESTAMP),
	('itm', 'ALTO21', 'ALTO', 'ALTO', '9300045', 'I99', CURRENT USER, CURRENT TIMESTAMP),
	('itm', 'ALTO22', 'ALTO', 'ALTO', '9300046', 'I99', CURRENT USER, CURRENT TIMESTAMP),
	('itm', 'ALTO23', 'ALTO', 'ALTO', '9300047', 'I99', CURRENT USER, CURRENT TIMESTAMP),
	('itm', 'ALTO00', 'ALTO', 'ALTO', '9300048', 'I99', CURRENT USER, CURRENT TIMESTAMP),
	('itm', 'ALTO', 'ALTO', 'ALTO', '9921999', 'I99', CURRENT USER, CURRENT TIMESTAMP);

INSERT INTO MWCONFIG.PARAM_MAP (GROUP, NAME, VALUE, MODIFIED_BY, TIMESTAMP) VALUES
	-- ('check.res-core.sms.690000', '68', 'reverse', CURRENT USER, CURRENT TIMESTAMP),
	-- ('check.res-core.sms.690000', '99', 'reverse', CURRENT USER, CURRENT TIMESTAMP),
	('coa', 'alto-bill-syariah', '187174291409', CURRENT USER, CURRENT TIMESTAMP),
	('coa', 'alto-liability-switching-syariah', '211974400000', CURRENT USER, CURRENT TIMESTAMP),
	('coa', 'alto-liability-syariah', '211974400000', CURRENT USER, CURRENT TIMESTAMP);

INSERT INTO MWCONFIG.CHARGES (ID, C1_VALUE, C1_NAME, C1_SCRIPT, C1_ACCOUNT, C2_VALUE, C2_NAME, C2_SCRIPT, C2_ACCOUNT, C3_VALUE, C3_NAME, C3_SCRIPT, C3_ACCOUNT, C4_VALUE, C4_NAME, C4_SCRIPT, C4_ACCOUNT, C5_VALUE, C5_NAME, C5_SCRIPT, C5_ACCOUNT, MODIFIED_BY, TIMESTAMP, C6_VALUE, C6_NAME, C6_SCRIPT, C6_ACCOUNT) VALUES
	('sms-ibft-alt', 3800.00, 'acquirer', NULL, '467917400000 ', 1500.00, 'switcher', NULL, '211974400000', 0.00, 'COA', NULL, NULL, 1200.00, 'Issuer', NULL, '211974400000', 6500.00, 'total', NULL, '211974400000', CURRENT USER, CURRENT TIMESTAMP, NULL, NULL, NULL, NULL),
	('sms-ibft-amp', 4625.00, 'fee acquirer', NULL, '999467965491413', 0.00, 'fee issuer', NULL, '0', 0.00, 'fee promosi', NULL, '0', 375.00, 'fee switcher', NULL, '999211962491413', 1500.00, 'Fee Destination', NULL, '999211978491413', CURRENT USER, CURRENT TIMESTAMP, NULL, NULL, NULL, NULL),
	('sms-ibft-amp-LMP', 3625.00, 'fee acquirer', NULL, '999467965491413', 0.00, 'fee issuer', NULL, '0', 0.00, 'fee promosi', NULL, '0', 375.00, 'fee switcher', NULL, '999211962491413', 0.00, 'Fee Destination', NULL, '999211987491413', CURRENT USER, CURRENT TIMESTAMP, NULL, NULL, NULL, NULL),
	('sms-ibft-amp-XMP', 3800.00, 'fee acquirer', NULL, '999467965491413', 825.00, 'fee issuer', NULL, '0', 0.00, 'fee promosi', NULL, '0', 375.00, 'fee switcher', NULL, '999211962491413', 1500.00, 'Fee Destination', NULL, '999211987491413', CURRENT USER, CURRENT TIMESTAMP, NULL, NULL, NULL, NULL),
	('sms-ibft-bca', 3850.00, 'acquirer', NULL, '467915400000', 1500.00, 'beneficiary', NULL, '211976400000', 1150.00, 'switcher', NULL, '211976400000', 5000.00, 'COA-4', NULL, '', 6500.00, 'total', NULL, '211976400000', CURRENT USER, CURRENT TIMESTAMP, NULL, NULL, NULL, NULL),
	('sms-ibft-hbr', 4625.00, 'acquirer', NULL, '467915200000', 1500.00, 'beneficiary', NULL, '211978400000', 0.00, 'COA-3', NULL, '', 375.00, 'switcher', NULL, '211962400000', 0.00, 'COA-5', NULL, '211978400000', CURRENT USER, CURRENT TIMESTAMP, NULL, NULL, NULL, NULL),
	('sms-ibft-sat', 3800.00, 'acquirer', NULL, '467916200000', 1500.00, 'beneficiary', NULL, '211987400000', 1200.00, 'switcher', NULL, '211968400000', 0.00, 'COA-4', NULL, '211968400000', 6500.00, 'total', NULL, '211987400000', CURRENT USER, CURRENT TIMESTAMP, NULL, NULL, NULL, NULL),
	('sms-ibft-alt-syad', 3800.00, 'acquirer', NULL, NULL, 1200.00, 'switcher', NULL, NULL, 1500.00, 'beneficiary', NULL, NULL, 600.00, 'acquirer btn', NULL, NULL, 0.00, NULL, NULL, NULL, CURRENT USER, CURRENT TIMESTAMP, 6500.00, 'total fee', NULL, NULL),
	('sms-ibft-amp-syad', 825.00, 'fee issuer', NULL, NULL, 375.00, 'fee switcher', NULL, NULL, 3800.00, 'fee acquirer', NULL, NULL, 0.00, 'fee promosi', NULL, NULL, 1500.00, 'Fee Destination', NULL, NULL, CURRENT USER, CURRENT TIMESTAMP, NULL, NULL, NULL, NULL),
	('sms-ibft-bca-syad', 3850.00, 'acquirer', NULL, NULL, 1150.00, 'switcher', NULL, NULL, 1500.00, 'destination', NULL, NULL, 600.00, 'acquirer btn', NULL, NULL, 0.00, NULL, NULL, NULL, CURRENT USER, CURRENT TIMESTAMP, NULL, NULL, NULL, NULL),
	('sms-ibft-sat-syad', 3800.00, 'acquirer', NULL, NULL, 1200.00, 'switcher', NULL, NULL, 1500.00, 'beneficiary', NULL, NULL, 600.00, NULL, NULL, NULL, 600.00, NULL, NULL, NULL, CURRENT USER, CURRENT TIMESTAMP, NULL, NULL, NULL, NULL);

INSERT INTO MWCONFIG.ROUTING_TABLE (CODE_START, CODE_END, CHANNEL, START_DATE, END_DATE, QUEUE, CREATE_BY, CREATE_DATE, MODIFIED_BY, MODIFIED_DATE, STATUS, SUBCODEX, ADDITIONAL, REPLY_TO, REPLY_TO_QMGR) VALUES
	('0200.690000.002ALT', '0200.690000.002ALT', 'sms', CURRENT TIMESTAMP, NULL, 'MDW_IN', CURRENT USER, CURRENT TIMESTAMP, NULL, NULL, 'ACTIVE', NULL, NULL, 'ROUTER_OUT.SMS', 'SMSBROKER.QM');

-- req-core.sms.0200.690000.002ALT
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES 
	('req-core.sms.0200.690000.002ALT', '[sms][smsmd]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
	('req-core.sms.0200.690000.002ALT', 1, '/data/body', '/data/body', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES
	('req-core.sms.0200.690000.002ALT', 1, '@', 'copyMessageToChild("original");copyMessage();copyMessage("frontOriginal",".");dtree("CHARGES", "!group");', 10),
	('req-core.sms.0200.690000.002ALT', 1, '!CorrelId', '${head.CorrelId}', NULL),
	('req-core.sms.0200.690000.002ALT', 1, '!ReplyToQ', 'MDW_CORE_REPLY.SMS', NULL),
	('req-core.sms.0200.690000.002ALT', 1, '!ReplyToQMgr', 'ISOBROKER.QM', NULL),
	('req-core.sms.0200.690000.002ALT', 1, '!queueName', 'CORE_SYARIAH_IN', NULL),
	('req-core.sms.0200.690000.002ALT', 1, '!code', '${head.code}', NULL),
	('req-core.sms.0200.690000.002ALT', 1, '!connid', '${head.connid}', NULL),
	('req-core.sms.0200.690000.002ALT', 1, '!destination', 'core-syariah-itm', NULL),
	('req-core.sms.0200.690000.002ALT', 1, '!group', '${head.group}', NULL),
	('req-core.sms.0200.690000.002ALT', 1, '!mappingCode', '${head.code}', NULL),
	('req-core.sms.0200.690000.002ALT', 1, '!mid', '${head.mid}', NULL),
	('req-core.sms.0200.690000.002ALT', 1, '!raw', '${head.raw}', NULL),
	('req-core.sms.0200.690000.002ALT', 1, '!reqtimestamp', '${head.reqtimestamp}', NULL),
	('req-core.sms.0200.690000.002ALT', 1, '!sid', '${head.sid}', NULL),
	('req-core.sms.0200.690000.002ALT', 1, '!source', '${head.source}', NULL),
	('req-core.sms.0200.690000.002ALT', 1, '!timestamp', '${head.timestamp}', NULL),
	('req-core.sms.0200.690000.002ALT', 1, 'isMultipleRequest', 'true', NULL),
	('req-core.sms.0200.690000.002ALT', 1, 'mappingCodeMultiple', 'konven', NULL),
	('req-core.sms.0200.690000.002ALT', 1, 'processingCode', '83${msg.processingCode."!value".substring(2,6)}', NULL),
	('req-core.sms.0200.690000.002ALT', 1, 'reservedPrivate2', '002ALT000', NULL),
	('req-core.sms.0200.690000.002ALT', 1, 'amountSettlementFee', 'D${decimalFormat("0", (getCharge(1).toBigDecimal()+getCharge(2).toBigDecimal()+getCharge(3).toBigDecimal()+getCharge(4).toBigDecimal())*100).padLeft(8, "0")}', NULL),
	('req-core.sms.0200.690000.002ALT', 1, 'reasonCode', 'D${getCharge(1)?decimalFormat("0",(getCharge(1).toBigDecimal()+getCharge(2).toBigDecimal()+getCharge(3).toBigDecimal()+getCharge(4).toBigDecimal())*100).padLeft(12, "0"):0}C000000000000', NULL);

-- req-core.sms.0200.690000.002ALT.konven
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES 
	('req-core.sms.0200.690000.002ALT.konven', '[sms]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
	('req-core.sms.0200.690000.002ALT.konven', 1, '/data/request/data/body', '/data/body', 'req-core.sms.multiple-master.konven', '1');
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES
	('req-core.sms.0200.690000.002ALT.konven', 1, '@', 'dtree("CHARGES", "!group");copyMessage("frontOriginal","request/data/body/frontOriginal")', 10),
	('req-core.sms.0200.690000.002ALT.konven', 1, 'coreRequest/data/body/amountSettlementFee', '${head.request.data.body.amountSettlementFee."!value"}', 10),
	('req-core.sms.0200.690000.002ALT.konven', 1, 'coreRequest/data/body/reasonCode', '${head.request.data.body.reasonCode."!value"}', 10),
	('req-core.sms.0200.690000.002ALT.konven', 1, '!connid', '${null}', 20),
	('req-core.sms.0200.690000.002ALT.konven', 1, '!reqtimestamp', '${head.request.data.reqtimestamp}', 20),
	('req-core.sms.0200.690000.002ALT.konven', 1, '!sid', '${head.request.data.sid}', 20),
	('req-core.sms.0200.690000.002ALT.konven', 1, '!timestamp', '${head.request.data.reqtimestamp}', 20),
	('req-core.sms.0200.690000.002ALT.konven', 1, 'TLBF01', '${getParamValueWithError("coa", "alto-bill-syariah", "error:92Unknown coa")}', 20),
	('req-core.sms.0200.690000.002ALT.konven', 1, 'TLBF02', '${(msg.amountTransaction."!number")+(getCharge(1)?getCharge(1).toBigDecimal()*100:0)+(getCharge(2)?getCharge(2).toBigDecimal()*100:0)+(getCharge(3)?getCharge(3).toBigDecimal()*100:0)}', 20),
	('req-core.sms.0200.690000.002ALT.konven', 1, 'TLBF03', '${getParamValueWithError("coa", "alto-liability-syariah", "error:92Unknown coa")}', 20),
	('req-core.sms.0200.690000.002ALT.konven', 1, 'TLBF04', '${msg.amountTransaction."!number"}', 20),
	('req-core.sms.0200.690000.002ALT.konven', 1, 'TLBF09', '${getParamValueWithError("coa", "alto-liability-syariah", "error:92Unknown coa")}', 20),
	('req-core.sms.0200.690000.002ALT.konven', 1, 'TLBF10', '${getCharge(3)?getCharge(3).toBigDecimal()*100:0}', 20),
	('req-core.sms.0200.690000.002ALT.konven', 1, 'TLBF11', '${getParamValueWithError("coa", "alto-liability-switching-syariah", "error:92Unknown coa")}', 20),
	('req-core.sms.0200.690000.002ALT.konven', 1, 'TLBF12', '${getCharge(2)?getCharge(2).toBigDecimal()*100:0}', 20),
	('req-core.sms.0200.690000.002ALT.konven', 1, 'TLBF13', '${getParamValueWithError("coa", "alto-liability-syariah", "error:92Unknown coa")}', 20),
	('req-core.sms.0200.690000.002ALT.konven', 1, 'TLBF14', '${getCharge(1)?getCharge(1).toBigDecimal()*100:0}', 20),
	('req-core.sms.0200.690000.002ALT.konven', 1, '!code', 'AXISSYSTEMSDNBHD.0000005412', null),
	('req-core.sms.0200.690000.002ALT.konven', 1, 'isMultipleRequest', 'true', null),
	('req-core.sms.0200.690000.002ALT.konven', 1, 'mappingCodeMultiple', 'itm', null),
	('req-core.sms.0200.690000.002ALT.konven', 1, 'TLBTCD', '5412', null),
	('req-core.sms.0200.690000.002ALT.konven', 1, 'dspTransactionCode', '5412', null);

CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.690000.002ALT.konven', 1, 'tellerComplete', '${getParamValue("device_teller_map", "itm_ALTO", "|||| ")}', 10);
CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.690000.002ALT.konven', 1, 'TLBID', '${tar.tellerComplete."!value".split("\\|", -1)[0]}', 20);
CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.690000.002ALT.konven', 1, 'dspDeviceName', '${tar.tellerComplete."!value".split("\\|", -1)[3]}', 20);
CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.690000.002ALT.konven', 1, 'dspTerminalId', '${tar.tellerComplete."!value".split("\\|", -1)[1]}', 20);
CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.690000.002ALT.konven', 1, 'dspUserId', '${tar.tellerComplete."!value".split("\\|", -1)[0]}', 20);
CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.690000.002ALT.konven', 1, 'ICDEVN', '${tar.tellerComplete."!value".split("\\|", -1)[3]}', 20);
CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.690000.002ALT.konven', 1, 'TLBCUD', '${tar.tellerComplete."!value".split("\\|", -1)[2]}', 20);
CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.690000.002ALT.konven', 1, 'TLBTPN', '${tar.tellerComplete."!value".split("\\|", -1)[0].padRight(7," ")}${head.request.data.body.original.reservedIso2."!value".padRight(14," ")}${head.request.data.body.original.retrievalReferenceNumber."!value".padRight(12," ")}', 99);


-- req-core.sms.0200.690000.002ALT.itm
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES 
	('req-core.sms.0200.690000.002ALT.itm', '[smsmd]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
	('req-core.sms.0200.690000.002ALT.itm', 1, '/data/request/data/body/original', '/data/body', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES  
	('req-core.sms.0200.690000.002ALT.itm', 1, '@', 'copyMessage();copyMessageToChild("original");copyMessage("frontOriginal", "request/data/body/frontOriginal");copyMessage("frontOriginal/coreRequest", "request");', 10),
	('req-core.sms.0200.690000.002ALT.itm', 1, 'coreRequest/data/body/amountSettlementFee', '${head.request.data.body.coreRequest.data.body.amountSettlementFee."!value"}', 10),
	('req-core.sms.0200.690000.002ALT.itm', 1, 'coreRequest/data/body/reasonCode', '${head.request.data.body.coreRequest.data.body.reasonCode."!value"}', 10),
	('req-core.sms.0200.690000.002ALT.itm', 1, '!codex', 'iso-8583-itmibft', NULL),
	('req-core.sms.0200.690000.002ALT.itm', 1, '!code', '${head.request.data.body.frontOriginal.code}', NULL),
	('req-core.sms.0200.690000.002ALT.itm', 1, '!mappingCode', '${head.request.data.body.frontOriginal.code}', NULL),
	('req-core.sms.0200.690000.002ALT.itm', 1, '!CorrelId', '${head.CorrelId}', NULL),
	('req-core.sms.0200.690000.002ALT.itm', 1, '!reqtimestamp', '${head.reqtimestamp}', NULL),
	('req-core.sms.0200.690000.002ALT.itm', 1, '!group', '${head.request.data.group}', NULL),
	('req-core.sms.0200.690000.002ALT.itm', 1, '!mid', '${head.mid}', NULL),
	('req-core.sms.0200.690000.002ALT.itm', 1, '!destination', 'itm-conn', NULL),
	('req-core.sms.0200.690000.002ALT.itm', 1, '!ReplyToQ', 'MDW_CORE_REPLY', NULL),
	('req-core.sms.0200.690000.002ALT.itm', 1, '!queueName', 'ISO.BILLPAYMENT.IN', NULL),
	('req-core.sms.0200.690000.002ALT.itm', 1, 'fullReverse', 'true', NULL),
	('req-core.sms.0200.690000.002ALT.itm', 1, 'processingCode', '${head.request.data.body.original.processingCode."!value"}', NULL),
	('req-core.sms.0200.690000.002ALT.itm', 1, 'reservedForPrivateUse1', 'XMBS', NULL),
	('req-core.sms.0200.690000.002ALT.itm', 1, 'reservedPrivate2', '002001ALT000', NULL);

-- res-core.sms.0200.690000.002ALT
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES 
	('res-core.sms.0200.690000.002ALT', '[smsmd]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
	('res-core.sms.0200.690000.002ALT', 1, '/data', '/data', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES
	('res-core.sms.0200.690000.002ALT', 1, '@', 'copyMessage();', 10),
	('res-core.sms.0200.690000.002ALT', 1, 'nolog', '${null}', 20);


-- req-core.itm.0200.000010.002NMB.res-reverse
-- INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES
-- 	('req-core.sms.0200.690000.002ALT.res-reverse', '[smsmd]', CURRENT USER, CURRENT TIMESTAMP);
-- INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
-- 	('req-core.sms.0200.690000.002ALT.res-reverse', 1, '/data', '/data', NULL, NULL);
-- INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES
-- 	('req-core.sms.0200.690000.002ALT.res-reverse', 1, '@', 'copyMessage();', 10),
-- 	('req-core.sms.0200.690000.002ALT.res-reverse', 1, 'group', 'sms', 10),
-- 	('req-core.sms.0200.690000.002ALT.res-reverse', 1, 'nolog', 'true', 10),
-- 	('req-core.sms.0200.690000.002ALT.res-reverse', 1, 'mappingCode', '${head.code}', 10),
-- 	('req-core.sms.0200.690000.002ALT.res-reverse', 1, 'code', '${head.mappingCode!=null?tar.mappingCode."!value":head.request.data.mappingCode."!value"}.${head.adaptor."!value"=="core-sms"?"BisRev":"KonvenRev"}', 20),
-- 	('req-core.sms.0200.690000.002ALT.res-reverse', 1, 'queueName', 'MDW_IN', null);

-- req-core.sms.0200.690000.002ALT.res-reverse
	CALL MWCONFIG.MERGE_MAPPING('req-core.sms.0200.690000.002ALT.res-reverse', null, '[smsmd]');
	CALL MWCONFIG.MERGE_MAPPING_GROUP('req-core.sms.0200.690000.002ALT.res-reverse', 1, '/data', '/data', NULL, NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP('req-core.sms.0200.690000.002ALT.res-reverse', 2, '/data', '/data/backup', NULL, NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.690000.002ALT.res-reverse', 1, '@', 'copyMessage();', 10);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.690000.002ALT.res-reverse', 1, 'group', 'sms', 10);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.690000.002ALT.res-reverse', 1, 'mappingCode', '${head.code}', 10);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.690000.002ALT.res-reverse', 1, 'mappingCodeRev', '${head.type."!value".equals("dsp-abcs-response")?"BisRev":"CoreRev"}', 10);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.690000.002ALT.res-reverse', 1, 'nolog', 'true', 10);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.690000.002ALT.res-reverse', 1, 'code', '${head.mappingCode!=null?tar.mappingCode."!value":head.request.data.mappingCode."!value"}.${head.adaptor."!value"=="core-sms"?"BisRev":"KonvenRev"}', 20);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.690000.002ALT.res-reverse', 1, 'queueName', 'MDW_IN', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.690000.002ALT.res-reverse', 1, 'reqtimestamp', '${head.request.data.reqtimestamp}', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.690000.002ALT.res-reverse', 1, 'request/data/body/isMultipleRequest', 'true', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.690000.002ALT.res-reverse', 1, 'request/data/body/mappingCodeMultiple', '${tar.mappingCodeRev}', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.690000.002ALT.res-reverse', 1, 'request/data/group', '${head.request.data.group}', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.690000.002ALT.res-reverse', 1, 'request/data/mappingCode', '${head.request.data.mappingCode}', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.690000.002ALT.res-reverse', 2, '@', 'copyMessage()', null);

-- req-core.sms.0200.690000.002ALT.KonvenRev
-- INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES
-- 	('req-core.sms.0200.690000.002ALT.KonvenRev', '[smsmd]', CURRENT USER, CURRENT TIMESTAMP);
-- INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
-- 	('req-core.sms.0200.690000.002ALT.KonvenRev', 1, '/data/coreRequest/data/body', '/data/body', NULL, NULL);
-- INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES
-- 	('req-core.sms.0200.690000.002ALT.KonvenRev', 1, '@', 'copyMessage();', 10),
-- 	('req-core.sms.0200.690000.002ALT.KonvenRev', 1, '!ReplyToQ', 'MDW_CORE_REPLY', null),
-- 	('req-core.sms.0200.690000.002ALT.KonvenRev', 1, '!ReplyToQMgr', 'SMSBROKER.QM', null),
-- 	('req-core.sms.0200.690000.002ALT.KonvenRev', 1, '!queueName', 'CORE_IN', null),
-- 	('req-core.sms.0200.690000.002ALT.KonvenRev', 1, '!destination', 'core-sms', null),
-- 	('req-core.sms.0200.690000.002ALT.KonvenRev', 1, '!reqtimestamp', '${head.coreRequest.data.reqtimestamp}', null),
-- 	('req-core.sms.0200.690000.002ALT.KonvenRev', 1, '!timestamp', '${head.coreRequest.data.reqtimestamp}', null),
-- 	('req-core.sms.0200.690000.002ALT.KonvenRev', 1, '!group', '${head.group}', null),
-- 	('req-core.sms.0200.690000.002ALT.KonvenRev', 1, '!mappingCode', '${head.mappingCode}', null),
-- 	('req-core.sms.0200.690000.002ALT.KonvenRev', 1, '!CorrelId', '${head.CorrelId}', null),
-- 	('req-core.sms.0200.690000.002ALT.KonvenRev', 1, 'mappingCodeMultiple', 'BisRev', null),
-- 	('req-core.sms.0200.690000.002ALT.KonvenRev', 1, 'isMultipleRequest', 'true', null);

-- req-core.sms.0200.690000.002ALT.KonvenRev
	CALL MWCONFIG.MERGE_MAPPING('req-core.sms.0200.690000.002ALT.KonvenRev', null, '[smsmd]');
	CALL MWCONFIG.MERGE_MAPPING_GROUP('req-core.sms.0200.690000.002ALT.KonvenRev', 1, '/data/coreRequest/data/body', '/data/body', NULL, NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.690000.002ALT.KonvenRev', 1, '@', 'copyMessage();', 10);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.690000.002ALT.KonvenRev', 1, '!CorrelId', '${head.CorrelId}', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.690000.002ALT.KonvenRev', 1, '!ReplyToQ', 'MDW_CORE_REPLY', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.690000.002ALT.KonvenRev', 1, '!ReplyToQMgr', 'SMSBROKER.QM', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.690000.002ALT.KonvenRev', 1, '!destination', 'core-sms', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.690000.002ALT.KonvenRev', 1, '!group', '${head.group}', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.690000.002ALT.KonvenRev', 1, '!mappingCode', '${head.mappingCode}', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.690000.002ALT.KonvenRev', 1, '!queueName', 'CORE_IN', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.690000.002ALT.KonvenRev', 1, '!reqtimestamp', '${head.coreRequest.data.reqtimestamp}', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.690000.002ALT.KonvenRev', 1, '!timestamp', '${head.coreRequest.data.reqtimestamp}', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.690000.002ALT.KonvenRev', 1, 'TLBF20', '${head.request.data.body.original.systemsTraceAuditNumber}', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.690000.002ALT.KonvenRev', 1, 'TLBJSN', '1${head.request.data.body.original.systemsTraceAuditNumber}', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.690000.002ALT.KonvenRev', 1, 'TLBWC2', '10', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.690000.002ALT.KonvenRev', 1, 'fullReverse', 'false', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.690000.002ALT.KonvenRev', 1, 'isMultipleRequest', 'true', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.690000.002ALT.KonvenRev', 1, 'mappingCodeMultiple', 'BisRev', null);

-- req-core.sms.0200.690000.002ALT.BisRev
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES
	('req-core.sms.0200.690000.002ALT.BisRev', '[smsmd]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
	('req-core.sms.0200.690000.002ALT.BisRev', 1, '/data/request/data/body/original', '/data/body', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES
	('req-core.sms.0200.690000.002ALT.BisRev', 1, '@', 'copyMessage();', 10),
	('req-core.sms.0200.690000.002ALT.BisRev', 1, '!ReplyToQ', 'MDW_CORE_NO_NEED_REPLY.SMS', null),
	('req-core.sms.0200.690000.002ALT.BisRev', 1, '!ReplyToQMgr', 'ISOBROKER.QM', null),
	('req-core.sms.0200.690000.002ALT.BisRev', 1, '!queueName', 'CORE_SYARIAH_IN', null),
	('req-core.sms.0200.690000.002ALT.BisRev', 1, '!destination', 'core-syariah-itm', null),
	('req-core.sms.0200.690000.002ALT.BisRev', 1, '!reqtimestamp', '${head.request.data.reqtimestamp}', null),
	('req-core.sms.0200.690000.002ALT.BisRev', 1, '!timestamp', '${head.request.data.reqtimestamp}', null),
	('req-core.sms.0200.690000.002ALT.BisRev', 1, '!group', '${head.group}', null),
	('req-core.sms.0200.690000.002ALT.BisRev', 1, '!CorrelId', '${head.CorrelId}', null),
	('req-core.sms.0200.690000.002ALT.BisRev', 1, 'messageType', '0400', null),
	('req-core.sms.0200.690000.002ALT.BisRev', 1, 'processingCode', '830000', null),
	('req-core.sms.0200.690000.002ALT.BisRev', 1, 'isMultipleRequest', 'false', null);


-- sms.0200.690000.002ALT.itm-conn.0210.690000
INSERT INTO MWCONFIG.MAPPING(ID, DESCRIPTION, MODIFIED_BY, TIMESTAMP, MODULE) VALUES 
	('sms.0200.690000.002ALT.itm-conn.0210.690000', '', CURRENT USER, CURRENT TIMESTAMP, '[sms][smsmd]');
INSERT INTO MWCONFIG.MAPPING_GROUP(MAPPING_ID, ID, "SOURCE", TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
	('sms.0200.690000.002ALT.itm-conn.0210.690000', 1, '/data/request/data/body/frontOriginal', '/data', null, null),
	('sms.0200.690000.002ALT.itm-conn.0210.690000', 2, '/data/body', '/data/body', null, null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE(MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
	('sms.0200.690000.002ALT.itm-conn.0210.690000', 1, '@', 'copyMessage(); copyMessage("request/data/body/frontOriginal", "request/data/body/frontOriginal");copyMessage("request/data/body/original","request/data/body/original");', 1),
	('sms.0200.690000.002ALT.itm-conn.0210.690000', 1, 'request/data/body/coreRequest/data/body/amountSettlementFee', '${head.request.data.body.coreRequest.data.body.amountSettlementFee."!value"}', 10),
	('sms.0200.690000.002ALT.itm-conn.0210.690000', 1, 'request/data/body/coreRequest/data/body/reasonCode', '${head.request.data.body.coreRequest.data.body.reasonCode."!value"}', 10),
	('sms.0200.690000.002ALT.itm-conn.0210.690000', 1, 'request/data/body/original/additionalDataPrivate', '${head.request.data.body.additionalDataPrivate."!value"}', 10),
	('sms.0200.690000.002ALT.itm-conn.0210.690000', 1, 'request/data/body/original/messageType', '${head.request.data.body.messageType."!value"}', 10),
	('sms.0200.690000.002ALT.itm-conn.0210.690000', 1, 'request/data/body/original/processingCode', '${head.request.data.body.processingCode."!value"}', 10),
	('sms.0200.690000.002ALT.itm-conn.0210.690000', 1, 'request/data/group', '${head.request.data.group."!value"}', 10),
	('sms.0200.690000.002ALT.itm-conn.0210.690000', 1, 'request/data/mappingCode', '${head.request.data.mappingCode}', 10),
	('sms.0200.690000.002ALT.itm-conn.0210.690000', 1, 'request/data/source', '${head.request.data.body.frontOriginal.source}', 10),
	('sms.0200.690000.002ALT.itm-conn.0210.690000', 1, 'request/data/connid', '${head.request.data.body.frontOriginal.connid}', 10),
	('sms.0200.690000.002ALT.itm-conn.0210.690000', 1, 'request/data/mid', '${head.request.data.body.frontOriginal.mid}', 10),
	('sms.0200.690000.002ALT.itm-conn.0210.690000', 1, 'request/data/sid', '${head.request.data.body.frontOriginal.sid}', 10),
	('sms.0200.690000.002ALT.itm-conn.0210.690000', 1, 'request/data/body/fullReverse', '${!head.body.responseCode."!value".equals("00")?"true":"false"}', 10),
	('sms.0200.690000.002ALT.itm-conn.0210.690000', 2, '!destination', '${head.source."!value"}', 30),
	('sms.0200.690000.002ALT.itm-conn.0210.690000', 2, '!nolog', 'true', 30),
	('sms.0200.690000.002ALT.itm-conn.0210.690000', 2, 'additionalDataPrivate', '${msg.responseCode."!value".equals("00")?msg.additionalDataPrivate:tar.additionalDataPrivate}', 30),
	('sms.0200.690000.002ALT.itm-conn.0210.690000', 2, 'messageType', '0210', 20),
	('sms.0200.690000.002ALT.itm-conn.0210.690000', 2, 'responseCode', '${getParamValue("error_map|ibft-"+head.request.data.body.frontOriginal.body.reservedPrivate2."!value".substring(3,6).toUpperCase(), msg.responseCode."!value",msg.responseCode."!value")}', 40);


-- resp-to.sms
-- INSERT INTO MWCONFIG.MAPPING(ID, DESCRIPTION, MODIFIED_BY, TIMESTAMP, MODULE) VALUES 
-- 	('resp-to.sms', null, CURRENT USER, CURRENT TIMESTAMP, '[sms][szz][bmii][ofiim]');
-- INSERT INTO MWCONFIG.MAPPING_GROUP(MAPPING_ID, ID, "SOURCE", TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
-- 	('resp-to.sms', 1, '/data', '/data', null, null),
-- 	('resp-to.sms', 2, '/data/body', '/data/body', null, null),
-- 	('resp-to.sms', 3, '/data/body', '/data/request/data/body/original', null, null);
-- INSERT INTO MWCONFIG.MAPPING_GROUP_LINE(MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
-- 	('resp-to.sms', 1, '@', 'copyMessage();copyMessage("request/data",".");', 1),
-- 	('resp-to.sms', 1, 'request/data/body/original/messageType', '0200', 2),
-- 	('resp-to.sms', 1, 'request/data/body/fullReverse', 'true', 2),
-- 	('resp-to.sms', 1, 'request/data/mappingCode', '${head.code}', 2),
-- 	('resp-to.sms', 3, '@', 'copyMessage();', 1),
-- 	('resp-to.sms', 2, 'messageType', '0210', 1),
-- 	('resp-to.sms', 2, '!adaptor', 'itm-conn', 1),
-- 	('resp-to.sms', 2, 'responseCode', '${head.source."!value".substring(0,6).equals("sms-10") && head.code."!value".substring(0,7) == "0200.1." && head.source."!value".substring(0,9) != "sms-10802"?"B1":"68"}', 2);


-- resp-to.sms
	CALL MWCONFIG.MERGE_MAPPING('resp-to.sms', null, '[sms][szz][bmii][ofiim]');
	CALL MWCONFIG.MERGE_MAPPING_GROUP('resp-to.sms', 1, '/data', '/data', NULL, NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP('resp-to.sms', 2, '/data/body', '/data/body', NULL, NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP('resp-to.sms', 3, '/data/body', '/data/request/data/body/original', NULL, NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('resp-to.sms', 1, '@', 'copyMessage();copyMessage("request/data",".");', 1);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('resp-to.sms', 2, '!adaptor', 'itm-conn', 1);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('resp-to.sms', 2, 'messageType', '0210', 1);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('resp-to.sms', 3, '@', 'copyMessage();', 1);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('resp-to.sms', 1, 'request/data/body/fullReverse', 'true', 2);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('resp-to.sms', 1, 'request/data/body/original/messageType', '0200', 2);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('resp-to.sms', 1, 'request/data/mappingCode', '${head.code}', 2);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('resp-to.sms', 2, 'responseCode', '${head.source."!value".substring(0,6).equals("sms-10") && head.code."!value".substring(0,7) == "0200.1." && head.source."!value".substring(0,9) != "sms-10802"?"B1":"68"}', 2);
	
-- resp-ln.sms
	CALL MWCONFIG.MERGE_MAPPING_GROUP('resp-ln.sms', 3, '/data/body', '/data/request/data/body/original', NULL, NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('resp-ln.sms', 1, '@', 'copyMessage();copyMessage("request/data",".");', 1);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('resp-ln.sms', 1, 'request/data/body/original/messageType', '0200', 1);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('resp-ln.sms', 1, 'request/data/body/fullReverse', 'true', 1);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('resp-ln.sms', 1, 'request/data/mappingCode', '${head.code}', 1);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('resp-ln.sms', 3, '@', 'copyMessage()', 1);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('resp-ln.sms', 2, '!adaptor', 'itm-conn', 1);

-- tri paket data
INSERT INTO MWCONFIG.ROUTING_TABLE(CODE_START, CODE_END, CHANNEL, START_DATE, END_DATE, QUEUE, CREATE_BY, CREATE_DATE, MODIFIED_BY, MODIFIED_DATE, STATUS, SUBCODEX, ADDITIONAL, REPLY_TO, REPLY_TO_QMGR) VALUES 
	('0200.1.102146', '0200.1.102146', 'sms', CURRENT TIMESTAMP, null, 'BP.WS.INQUIRY.IN', CURRENT_USER, CURRENT TIMESTAMP, null, null, 'ACTIVE', null, null, 'ROUTER_OUT.SMS', 'PAYBROKER.QM'),
	('0200.2.102146', '0200.2.102146', 'sms', CURRENT TIMESTAMP, null, 'BP.WS.PAYMENT.IN', CURRENT USER, CURRENT TIMESTAMP, null, null, 'ACTIVE', null, null, 'ROUTER_OUT.SMS', 'PAYBROKER.QM');
	
INSERT INTO MWCONFIG.MAPPING(ID, DESCRIPTION, MODIFIED_BY, TIMESTAMP, MODULE) VALUES 
	('sms.0200.1.102146', null, CURRENT USER, CURRENT TIMESTAMP, '[iwswc][pay]');
INSERT INTO MWCONFIG.MAPPING_GROUP(MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
	('sms.0200.1.102146', 1, '/data/body', '/Inquiry', null, null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE(MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
	('sms.0200.1.102146', 1, 'LocalEnv:Destination/HTTP/RequestURL', 'http://192.168.8.106:7088/ws/ayopop?key=61706c60-e8cd-4928-84ee-742edd56cea6', null),
	('sms.0200.1.102146', 1, 'LocalEnv:Destination/SOAPAction', 'http://BTN-AYOPOP/Inquiry', null),
	('sms.0200.1.102146', 1, 'LocalEnv:source', 'http://BTN-AYOPOP/', null),
	('sms.0200.1.102146', 1, 'ns:.', 'http://BTN-AYOPOP/', null),
	('sms.0200.1.102146', 1, 'partnerId', 'P3Jyc2Bcb61U', 1),
	('sms.0200.1.102146', 1, 'accountNumber', '089688027001', 3),
	('sms.0200.1.102146', 1, 'productCode', 'PPDTTIDRD57LOK', 5),
	('sms.0200.1.102146', 1, 'trxID', '${msg.retrievalReferenceNumber."!value".trim()}', 7),
	('sms.0200.1.102146', 1, 'trxDate', '${new java.text.SimpleDateFormat("yyyy-MM-dd").format(new Date())}T${new java.text.SimpleDateFormat("HH:mm:ss").format(new Date())}', 9),
	('sms.0200.1.102146', 1, 'ns:partnerId', 'http://BTN-AYOPOP/', 12),
	('sms.0200.1.102146', 1, 'ns:accountNumber', 'http://BTN-AYOPOP/', 14),
	('sms.0200.1.102146', 1, 'ns:productCode', 'http://BTN-AYOPOP/', 16),
	('sms.0200.1.102146', 1, 'ns:trxID', 'http://BTN-AYOPOP/', 18),
	('sms.0200.1.102146', 1, 'ns:trxDate', 'http://BTN-AYOPOP/', 20);

-- sms.0200.1.102146.resp
INSERT INTO MWCONFIG.MAPPING(ID, DESCRIPTION, MODIFIED_BY, TIMESTAMP, MODULE) VALUES 
    ('sms.0200.1.102146.resp', null, CURRENT USER, CURRENT TIMESTAMP, '[pay][iwswc]');
INSERT INTO MWCONFIG.MAPPING_GROUP(MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
    ('sms.0200.1.102146.resp', 1, '/data', '/data', null, null),
    ('sms.0200.1.102146.resp', 2, '/data/response', '/data/body', null, null),
    ('sms.0200.1.102146.resp', 3, '/data/body', '/data/body', null, null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE(MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
	('sms.0200.1.102146.resp', 1, '@', 'copyMessage();', 1),
    ('sms.0200.1.102146.resp', 2, 'rsp', '${msg.InquiryResponse.responseCode==null||msg.InquiryResponse.responseCode."!value"==null?"68":msg.InquiryResponse.responseCode}', 3),
    ('sms.0200.1.102146.resp', 2, 'rspdesc', '${msg.InquiryResponse.rspdesc==null||msg.InquiryResponse.rspdesc."!value"==null?"error from biller":msg.InquiryResponse.rspdesc}', 5),
    ('sms.0200.1.102146.resp', 2, 'inquiryId', '${msg.InquiryResponse.inquiryId==null||msg.InquiryResponse.inquiryId."!value"==null?"0":msg.InquiryResponse.inquiryId}', 7),
    ('sms.0200.1.102146.resp', 2, 'accountNumber', '${msg.InquiryResponse.accountNumber==null||msg.InquiryResponse.accountNumber."!value"==null?"":msg.InquiryResponse.accountNumber}', 9),
    ('sms.0200.1.102146.resp', 2, 'productName', '${msg.InquiryResponse.productName==null||msg.InquiryResponse.productName."!value"==null?"":msg.InquiryResponse.productName}', 15),
    ('sms.0200.1.102146.resp', 2, 'totalAmount', '${msg.InquiryResponse.totalAmount==null||msg.InquiryResponse.totalAmount."!value"==null?"":msg.InquiryResponse.totalAmount}', 19),
    ('sms.0200.1.102146.resp', 2, 'trxID', '${msg.InquiryResponse.trxID==null||msg.InquiryResponse.trxID."!value"==null?"":msg.InquiryResponse.trxID}', 12),
    ('sms.0200.1.102146.resp', 3, '@', 'dtree("CHARGES","!group");', 51),
    ('sms.0200.1.102146.resp', 3, 'bit48', '${head.body.additionalDataPrivate}', 52),
    ('sms.0200.1.102146.resp', 3, '!billerSource', '${head.source}', 53),
    ('sms.0200.1.102146.resp', 3, '!raw', '${null}', 54),
    ('sms.0200.1.102146.resp', 3, 'messageType', '0210', 55),
    ('sms.0200.1.102146.resp', 3, 'responseCode', '${getParamValue("error_map|Ayopop", tar.rsp?."!value","89")}', 71),
    ('sms.0200.1.102146.resp', 3, 'amountTransaction', '${tar.responseCode."!value".equals("00")?decimalFormat("0",tar.totalAmount."!value".toBigDecimal()*100):"0"}', 75),
    ('sms.0200.1.102146.resp', 3, 'additionalDataPrivate', '${tar.responseCode."!value".equals("00")?"RESPONSE ADDITIONAL DATA PRIVATE":tar.bit48}', 99);


-- req-core.sms.0200.2.102146.001
INSERT INTO MWCONFIG.MAPPING(ID, DESCRIPTION, MODIFIED_BY, TIMESTAMP, MODULE) VALUES 
    ('req-core.sms.0200.2.102146.001', '', CURRENT USER, CURRENT TIMESTAMP, '[pay][iwswc]');
INSERT INTO MWCONFIG.MAPPING_GROUP(MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
    ('req-core.sms.0200.2.102146.001', 1, '/data/body', '/data/body', 'req-core.sms', 1);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE(MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
	('req-core.sms.0200.2.102146.001', 1, '@', 'copyMessage("frontOriginal",".");dtree("CHARGES","!group");', 5),
	('req-core.sms.0200.2.102146.001', 1, '!code', 'AXISSYSTEMSDNBHD.000000${msg.processingCode."!value".substring(2,4).equals("20")?"7029":"7030"}', null),
	('req-core.sms.0200.2.102146.001', 1, 'dspTransactionCode', '${msg.processingCode."!value".substring(2,4).equals("20")?"7029":"7030"}', 20),
	('req-core.sms.0200.2.102146.001', 1, 'TLXUFD', 'NEWMB', null),
	('req-core.sms.0200.2.102146.001', 1, 'TLBFIL', '${msg.cardAcceptorTerminalIdentification."!value"+msg.retrievalReferenceNumber."!value".padRight(12," ")+msg.acquiringInstitutionIdentificationCode."!value".padRight(16," ")}', null),
	('req-core.sms.0200.2.102146.001', 1, 'RMPSTC', '${new java.text.SimpleDateFormat("yyyyMMdd").format(new Date())}', null),
	('req-core.sms.0200.2.102146.001', 1, 'RMSEHS', '${(new java.text.SimpleDateFormat("MMdd")).format(new Date())}', null),
	('req-core.sms.0200.2.102146.001', 1, 'RMCKC', 'THREE', null),
	('req-core.sms.0200.2.102146.001', 1, 'RMPPSC', 'PAKETDATA', null),
	('req-core.sms.0200.2.102146.001', 1, 'RMUSRI', '${msg.additionalDataPrivate."!value".substring(0,13)}', null),
	('req-core.sms.0200.2.102146.001', 1, 'RMADD3', '${msg.reservedIso2."!value"}', null),
	('req-core.sms.0200.2.102146.001', 1, 'TLBDS1', '${new java.text.SimpleDateFormat("yyyyMMdd").format(new Date())};${msg.additionalDataPrivate."!value".substring(0,13)};200;001007', null),
	('req-core.sms.0200.2.102146.001', 1, 'TLBDS2', '${msg.amountTransaction."!value".trim()}:${msg.retrievalReferenceNumber."!value".trim()}', null),
	('req-core.sms.0200.2.102146.001', 1, 'RMPYNM', 'PAY TRI ${"62"+msg.additionalDataPrivate."!value".substring(1,13)}', null),
	('req-core.sms.0200.2.102146.001', 1, 'RMNAME', 'NMB ${msg.cardAcceptorTerminalIdentification."!value".substring(1,8)} PAKETDATA', null),
	('req-core.sms.0200.2.102146.001', 1, 'RMADD2', '${msg.retrievalReferenceNumber."!value".padRight(12," ")}', null),
	('req-core.sms.0200.2.102146.001', 1, 'RMPYCN', '${(new java.text.SimpleDateFormat("HH:mm:ss")).format(new Date())}', null),
	('req-core.sms.0200.2.102146.001', 1, 'TLBF01', '${msg.fromAccount}', null),
	('req-core.sms.0200.2.102146.001', 1, 'TLBF02', '${msg.amountTransaction."!number"}', null),
	('req-core.sms.0200.2.102146.001', 1, 'TLBF03', '${getParamValueWithError("coa", "ifd-revenue", "error:92Unknown coa")}', null),
	('req-core.sms.0200.2.102146.001', 1, 'TLBF04', '0', null),
	('req-core.sms.0200.2.102146.001', 1, 'TLBF11', '${getParamValueWithError("coa-pay", "gl-pendapatan-three", "error:92Unknown coa")}', null),
	('req-core.sms.0200.2.102146.001', 1, 'TLBF12', '${decimalFormat("0",getCharge(4).toBigDecimal()*100)}', null),
	('req-core.sms.0200.2.102146.001', 1, 'TLBF15', '${getParamValueWithError("coa-pay", "gl-kewajiban-three", "error:92Unknown coa")}', null),
	('req-core.sms.0200.2.102146.001', 1, 'TLBF16', '${msg.amountTransaction."!value".toBigDecimal()-getCharge(4).toBigDecimal()*100}', null),
	('req-core.sms.0200.2.102146.001', 1, 'TLBTCD', '${tar.dspTransactionCode}', 30),
	('req-core.sms.0200.2.102146.001', 1, 'tellerComplete', '${getParamValue("device_teller_map", head.group."!value".trim() + "_" + msg.cardAcceptorTerminalIdentification."!value".trim(), "|||| ")}', 10),
	('req-core.sms.0200.2.102146.001', 1, 'ICDEVN', '${tar.tellerComplete."!value".split("\\|", -1)[3]}', 20),
	('req-core.sms.0200.2.102146.001', 1, 'TLBCUD', '${tar.tellerComplete."!value".split("\\|", -1)[2]}', 20),
	('req-core.sms.0200.2.102146.001', 1, 'TLBID', '${tar.tellerComplete."!value".split("\\|", -1)[0]}', 20),
	('req-core.sms.0200.2.102146.001', 1, 'dspDeviceName', '${tar.tellerComplete."!value".split("\\|", -1)[3]}', 20),
	('req-core.sms.0200.2.102146.001', 1, 'dspTerminalId', '${tar.tellerComplete."!value".split("\\|", -1)[1]}', 20),
	('req-core.sms.0200.2.102146.001', 1, 'dspUserId', '${tar.tellerComplete."!value".split("\\|", -1)[0]}', 20);

-- sms.0200.2.102146
INSERT INTO MWCONFIG.MAPPING(ID, DESCRIPTION, MODIFIED_BY, TIMESTAMP, MODULE) VALUES 
	('sms.0200.2.102146', null, CURRENT USER, CURRENT TIMESTAMP, '[iwswc][pay]');
INSERT INTO MWCONFIG.MAPPING_GROUP(MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
	('sms.0200.2.102146', 1, '/data/body', '/Payment', null, null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE(MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
	('sms.0200.2.102146', 1, 'LocalEnv:Destination/HTTP/RequestURL', 'http://192.168.8.106:7088/ws/ayopop?key=61706c60-e8cd-4928-84ee-742edd56cea6', null),
	('sms.0200.2.102146', 1, 'LocalEnv:Destination/SOAPAction', 'http://BTN-AYOPOP/Payment', null),
	('sms.0200.2.102146', 1, 'LocalEnv:source', 'http://BTN-AYOPOP/', null),
	('sms.0200.2.102146', 1, 'ns:.', 'http://BTN-AYOPOP/', null),
	('sms.0200.2.102146', 1, 'partnerId', 'P3Jyc2Bcb61U', 1),
	('sms.0200.2.102146', 1, 'inquiryId', '12180938', 1),
	('sms.0200.2.102146', 1, 'amount', '87500', 1),
	('sms.0200.2.102146', 1, 'accountNumber', '089688027001', 3),
	('sms.0200.2.102146', 1, 'productCode', 'PPDTTIDRD57LOK', 5),
	('sms.0200.2.102146', 1, 'trxID', '${msg.retrievalReferenceNumber."!value".trim()}', 7),
	('sms.0200.2.102146', 1, 'trxDate', '${new java.text.SimpleDateFormat("yyyy-MM-dd").format(new Date())}T${new java.text.SimpleDateFormat("HH:mm:ss").format(new Date())}', 9),
	('sms.0200.2.102146', 1, 'ns:partnerId', 'http://BTN-AYOPOP/', 12),
	('sms.0200.2.102146', 1, 'ns:inquiryId', 'http://BTN-AYOPOP/', 12),
	('sms.0200.2.102146', 1, 'ns:amount', 'http://BTN-AYOPOP/', 12),
	('sms.0200.2.102146', 1, 'ns:accountNumber', 'http://BTN-AYOPOP/', 14),
	('sms.0200.2.102146', 1, 'ns:productCode', 'http://BTN-AYOPOP/', 16),
	('sms.0200.2.102146', 1, 'ns:trxID', 'http://BTN-AYOPOP/', 18),
	('sms.0200.2.102146', 1, 'ns:trxDate', 'http://BTN-AYOPOP/', 20);


-- sms.0200.2.102146.resp
INSERT INTO MWCONFIG.MAPPING(ID, DESCRIPTION, MODIFIED_BY, TIMESTAMP, MODULE) VALUES 
    ('sms.0200.2.102146.resp', null, CURRENT USER, CURRENT TIMESTAMP, '[pay][iwswc]');
INSERT INTO MWCONFIG.MAPPING_GROUP(MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
    ('sms.0200.2.102146.resp', 1, '/data', '/data', null, null),
    ('sms.0200.2.102146.resp', 2, '/data/response', '/data/body', null, null),
    ('sms.0200.2.102146.resp', 3, '/data/body', '/data/body', null, null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE(MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
	('sms.0200.2.102146.resp', 1, '@', 'copyMessage();', 1),
    ('sms.0200.2.102146.resp', 2, 'rsp', '${msg.PaymentResponse.responseCode==null||msg.PaymentResponse.responseCode."!value"==null?"68":msg.PaymentResponse.responseCode}', 3),
    ('sms.0200.2.102146.resp', 2, 'rspdesc', '${msg.PaymentResponse.rspdesc==null||msg.PaymentResponse.rspdesc."!value"==null?"error from biller":msg.PaymentResponse.rspdesc}', 5),
    ('sms.0200.2.102146.resp', 2, 'inquiryId', '${msg.PaymentResponse.inquiryId==null||msg.PaymentResponse.inquiryId."!value"==null?"0":msg.PaymentResponse.inquiryId}', 7),
    ('sms.0200.2.102146.resp', 2, 'accountNumber', '${msg.PaymentResponse.accountNumber==null||msg.PaymentResponse.accountNumber."!value"==null?"":msg.PaymentResponse.accountNumber}', 9),
    ('sms.0200.2.102146.resp', 2, 'productName', '${msg.PaymentResponse.productName==null||msg.PaymentResponse.productName."!value"==null?"":msg.PaymentResponse.productName}', 15),
    ('sms.0200.2.102146.resp', 2, 'totalAmount', '${msg.PaymentResponse.totalAmount==null||msg.PaymentResponse.totalAmount."!value"==null?"":msg.PaymentResponse.totalAmount}', 19),
    ('sms.0200.2.102146.resp', 2, 'trxID', '${msg.PaymentResponse.trxID==null||msg.PaymentResponse.trxID."!value"==null?"":msg.PaymentResponse.trxID}', 12),
    ('sms.0200.2.102146.resp', 3, '@', 'dtree("CHARGES","!group");', 51),
    ('sms.0200.2.102146.resp', 3, 'bit48', '${head.body.additionalDataPrivate}', 52),
    ('sms.0200.2.102146.resp', 3, '!billerSource', '${head.source}', 53),
    ('sms.0200.2.102146.resp', 3, '!raw', '${null}', 54),
    ('sms.0200.2.102146.resp', 3, 'messageType', '0210', 55),
    ('sms.0200.2.102146.resp', 3, 'responseCode', '${getParamValue("error_map|Ayopop", tar.rsp?."!value","89")}', 71),
    ('sms.0200.2.102146.resp', 3, 'amountTransaction', '${tar.responseCode."!value".equals("00")?decimalFormat("0",tar.totalAmount."!value".toBigDecimal()*100):"0"}', 75),
    ('sms.0200.2.102146.resp', 3, 'additionalDataPrivate', '${tar.responseCode."!value".equals("00")?"RESPONSE ADDITIONAL DATA PRIVATE":tar.bit48}', 99);


INSERT INTO MWCONFIG.CHARGES(ID, C1_VALUE, C1_NAME, C1_SCRIPT, C1_ACCOUNT, C2_VALUE, C2_NAME, C2_SCRIPT, C2_ACCOUNT, C3_VALUE, C3_NAME, C3_SCRIPT, C3_ACCOUNT, C4_VALUE, C4_NAME, C4_SCRIPT, C4_ACCOUNT, C5_VALUE, C5_NAME, C5_SCRIPT, C5_ACCOUNT, MODIFIED_BY, TIMESTAMP, C6_VALUE, C6_NAME, C6_SCRIPT, C6_ACCOUNT) VALUES 
	('tri-paket-data-PPDTTIDRD4AO', 0.00, null, null, null, 0.00, null, null, null, 0.00, null, null, null, 1500.00, 'Bank fee', null, null, 0.00, null, null, null, CURRENT USER, CURRENT TIMESTAMP, null, null, null, null),
	('tri-paket-data-PPDTTIDRD26AO', 0.00, null, null, null, 0.00, null, null, null, 0.00, null, null, null, 1500.00, 'Bank fee', null, null, 0.00, null, null, null, CURRENT USER, CURRENT TIMESTAMP, null, null, null, null),
	('tri-paket-data-PPDTTIDRD3AO', 0.00, null, null, null, 0.00, null, null, null, 0.00, null, null, null, 1500.00, 'Bank fee', null, null, 0.00, null, null, null, CURRENT USER, CURRENT TIMESTAMP, null, null, null, null),
	('tri-paket-data-PDTPRTRA5GB', 0.00, null, null, null, 0.00, null, null, null, 0.00, null, null, null, 1500.00, 'Bank fee', null, null, 0.00, null, null, null, CURRENT USER, CURRENT TIMESTAMP, null, null, null, null),
	('tri-paket-data-PPDTTIDRD57LOK', 0.00, null, null, null, 0.00, null, null, null, 0.00, null, null, null, 1500.00, 'Bank fee', null, null, 0.00, null, null, null, CURRENT USER, CURRENT TIMESTAMP, null, null, null, null),
	('tri-paket-data-PPDTTIDRD7AO', 0.00, null, null, null, 0.00, null, null, null, 0.00, null, null, null, 1500.00, 'Bank fee', null, null, 0.00, null, null, null, CURRENT USER, CURRENT TIMESTAMP, null, null, null, null),
	('tri-paket-data-PPDTTIDRD40AO', 0.00, null, null, null, 0.00, null, null, null, 0.00, null, null, null, 1500.00, 'Bank fee', null, null, 0.00, null, null, null, CURRENT USER, CURRENT TIMESTAMP, null, null, null, null),
	('tri-paket-data-PPDTTIDRD10AO', 0.00, null, null, null, 0.00, null, null, null, 0.00, null, null, null, 1500.00, 'Bank fee', null, null, 0.00, null, null, null, CURRENT USER, CURRENT TIMESTAMP, null, null, null, null),
	('tri-paket-data-PPDTTIDRD1430LOK', 0.00, null, null, null, 0.00, null, null, null, 0.00, null, null, null, 1500.00, 'Bank fee', null, null, 0.00, null, null, null, CURRENT USER, CURRENT TIMESTAMP, null, null, null, null),
	('tri-paket-data-PPDTTIDTR1050030', 0.00, null, null, null, 0.00, null, null, null, 0.00, null, null, null, 1500.00, 'Bank fee', null, null, 0.00, null, null, null, CURRENT USER, CURRENT TIMESTAMP, null, null, null, null),
	('tri-paket-data-PPDTTIDRD53LOK', 0.00, null, null, null, 0.00, null, null, null, 0.00, null, null, null, 1500.00, 'Bank fee', null, null, 0.00, null, null, null, CURRENT USER, CURRENT TIMESTAMP, null, null, null, null),
	('tri-paket-data-PPDTTIDTR35007', 0.00, null, null, null, 0.00, null, null, null, 0.00, null, null, null, 1500.00, 'Bank fee', null, null, 0.00, null, null, null, CURRENT USER, CURRENT TIMESTAMP, null, null, null, null),
	('tri-paket-data-PPDTTIDTR2030', 0.00, null, null, null, 0.00, null, null, null, 0.00, null, null, null, 1500.00, 'Bank fee', null, null, 0.00, null, null, null, CURRENT USER, CURRENT TIMESTAMP, null, null, null, null),
	('tri-paket-data-PPDTTIDRD3530LOK', 0.00, null, null, null, 0.00, null, null, null, 0.00, null, null, null, 1500.00, 'Bank fee', null, null, 0.00, null, null, null, CURRENT USER, CURRENT TIMESTAMP, null, null, null, null),
	('tri-paket-data-PPDTTIDRD14AO', 0.00, null, null, null, 0.00, null, null, null, 0.00, null, null, null, 1500.00, 'Bank fee', null, null, 0.00, null, null, null, CURRENT USER, CURRENT TIMESTAMP, null, null, null, null),
	('tri-paket-data-PPDTTIDRD730LOK', 0.00, null, null, null, 0.00, null, null, null, 0.00, null, null, null, 1500.00, 'Bank fee', null, null, 0.00, null, null, null, CURRENT USER, CURRENT TIMESTAMP, null, null, null, null),
	('tri-paket-data-PPDTTIDRD3030LOK', 0.00, null, null, null, 0.00, null, null, null, 0.00, null, null, null, 1500.00, 'Bank fee', null, null, 0.00, null, null, null, CURRENT USER, CURRENT TIMESTAMP, null, null, null, null),
	('tri-paket-data-PPDTTIDRD4230H', 0.00, null, null, null, 0.00, null, null, null, 0.00, null, null, null, 1500.00, 'Bank fee', null, null, 0.00, null, null, null, CURRENT USER, CURRENT TIMESTAMP, null, null, null, null),
	('tri-paket-data-PPDTTIDRD10030H', 0.00, null, null, null, 0.00, null, null, null, 0.00, null, null, null, 1500.00, 'Bank fee', null, null, 0.00, null, null, null, CURRENT USER, CURRENT TIMESTAMP, null, null, null, null),
	('tri-paket-data-PPDTTIDRD13030H', 0.00, null, null, null, 0.00, null, null, null, 0.00, null, null, null, 1500.00, 'Bank fee', null, null, 0.00, null, null, null, CURRENT USER, CURRENT TIMESTAMP, null, null, null, null),
	('tri-paket-data-PPDTRD12GBB', 0.00, null, null, null, null, null, null, null, 0.00, null, null, null, 1500.00, 'Bank fee', null, null, 0.00, null, null, null, CURRENT USER, CURRENT TIMESTAMP, null, null, null, null),
	('tri-paket-data-PPDTDTR2GB', 0.00, null, null, null, 0.00, null, null, null, 0.00, null, null, null, 1500.00, 'Bank fee', null, null, 0.00, null, null, null, CURRENT USER, CURRENT TIMESTAMP, null, null, null, null);

INSERT INTO MWCONFIG.DTREE(GROUP, PATH, VALUE, MODIFIED_BY, TIMESTAMP, MODULE) VALUES 
	('CHARGES', 'sms|10', 'sms|billPayment|${msg.reservedPrivate3}', CURRENT USER, CURRENT TIMESTAMP, '[sms][pay]'),
	('CHARGES', 'sms|30', 'sms|billPayment|${msg.reservedPrivate3}', CURRENT USER, CURRENT TIMESTAMP, '[sms][pay]'),
	('CHARGES', 'sms|101000', 'sms|billPayment|${msg.reservedPrivate3}', CURRENT USER, CURRENT TIMESTAMP, '[sms][pay]'),
	('CHARGES', 'sms|101010', 'sms|billPayment|${msg.reservedPrivate3}', CURRENT USER, CURRENT TIMESTAMP, '[sms][pay]'),
	('CHARGES', 'sms|101020', 'sms|billPayment|${msg.reservedPrivate3}', CURRENT USER, CURRENT TIMESTAMP, '[sms][pay]'),
	('CHARGES', 'sms|102000', 'sms|billPayment|${msg.reservedPrivate3}', CURRENT USER, CURRENT TIMESTAMP, '[sms][pay]'),
	('CHARGES', 'sms|102010', 'sms|billPayment|${msg.reservedPrivate3}', CURRENT USER, CURRENT TIMESTAMP, '[sms][pay]'),
	('CHARGES', 'sms|102020', 'sms|billPayment|${msg.reservedPrivate3}', CURRENT USER, CURRENT TIMESTAMP, '[sms][pay]'),
	('CHARGES', 'sms|301000', 'sms|billPayment|${msg.reservedPrivate3}', CURRENT USER, CURRENT TIMESTAMP, '[sms][pay]'),
	('CHARGES', 'sms|301010', 'sms|billPayment|${msg.reservedPrivate3}', CURRENT USER, CURRENT TIMESTAMP, '[sms][pay]'),
	('CHARGES', 'sms|301020', 'sms|billPayment|${msg.reservedPrivate3}', CURRENT USER, CURRENT TIMESTAMP, '[sms][pay]'),
	('CHARGES', 'sms|302000', 'sms|billPayment|${msg.reservedPrivate3}', CURRENT USER, CURRENT TIMESTAMP, '[sms][pay]'),
	('CHARGES', 'sms|302010', 'sms|billPayment|${msg.reservedPrivate3}', CURRENT USER, CURRENT TIMESTAMP, '[sms][pay]'),
	('CHARGES', 'sms|302020', 'sms|billPayment|${msg.reservedPrivate3}', CURRENT USER, CURRENT TIMESTAMP, '[sms][pay]'),
	('CHARGES', 'sms|billPayment|102146', 'tri-paket-data-${msg.additionalDataPrivate."!value".substring(13,33).trim()}', CURRENT USER, CURRENT TIMESTAMP, '[sms][pay]'),
	('CHARGES', 'tri-paket-data-PPDTDTR2GB', '----', CURRENT USER, CURRENT TIMESTAMP, '[sms][pay][ibb][ibbmd]'),
	('CHARGES', 'tri-paket-data-PDTPRTRA12GB', '----', CURRENT USER, CURRENT TIMESTAMP, '[sms][pay][ibb][ibbmd]'),
	('CHARGES', 'tri-paket-data-PDTPRTRF5GB', '----', CURRENT USER, CURRENT TIMESTAMP, '[sms][pay][ibb][ibbmd]'),
	('CHARGES', 'tri-paket-data-PDTPRTRA2GB', '----', CURRENT USER, CURRENT TIMESTAMP, '[sms][pay][ibb][ibbmd]'),
	('CHARGES', 'tri-paket-data-PDTPRTRA6GB', '----', CURRENT USER, CURRENT TIMESTAMP, '[sms][pay][ibb][ibbmd]'),
	('CHARGES', 'tri-paket-data-PDTPRTRA32GB', '----', CURRENT USER, CURRENT TIMESTAMP, '[sms][pay][ibb][ibbmd]'),
	('CHARGES', 'tri-paket-data-PDTPRTRB12GB', '----', CURRENT USER, CURRENT TIMESTAMP, '[sms][pay][ibb][ibbmd]'),
	('CHARGES', 'tri-paket-data-PDTPRTRA8GB', '----', CURRENT USER, CURRENT TIMESTAMP, '[sms][pay][ibb][ibbmd]'),
	('CHARGES', 'tri-paket-data-PDTPRTRB6GB', '----', CURRENT USER, CURRENT TIMESTAMP, '[sms][pay][ibb][ibbmd]'),
	('CHARGES', 'tri-paket-data-PDTPRTRB38GB', '----', CURRENT USER, CURRENT TIMESTAMP, '[sms][pay][ibb][ibbmd]'),
	('CHARGES', 'tri-paket-data-PDTPRTRA3GBAON', '----', CURRENT USER, CURRENT TIMESTAMP, '[sms][pay][ibb][ibbmd]'),
	('CHARGES', 'tri-paket-data-PDTPRTRB10GB', '----', CURRENT USER, CURRENT TIMESTAMP, '[sms][pay][ibb][ibbmd]'),
	('CHARGES', 'tri-paket-data-PDTPRTRA150GB', '----', CURRENT USER, CURRENT TIMESTAMP, '[sms][pay][ibb][ibbmd]'),
	('CHARGES', 'tri-paket-data-PDTPRTRA5GB', '----', CURRENT USER, CURRENT TIMESTAMP, '[sms][pay][ibb][ibbmd]'),
	('CHARGES', 'tri-paket-data-PDTPRTRA16GB', '----', CURRENT USER, CURRENT TIMESTAMP, '[sms][pay][ibb][ibbmd]'),
	('CHARGES', 'tri-paket-data-PPDTTIDRD57LOK', '----', CURRENT USER, CURRENT TIMESTAMP, '[sms][pay][ibb][ibbmd]');


INSERT INTO MWCONFIG.PARAM_MAP("GROUP", NAME, "VALUE", SEQ, MODIFIED_BY, TIMESTAMP, DESCRIPTION) VALUES 
	('coa', 'ifd-revenue', '467925491358', null, CURRENT USER, CURRENT TIMESTAMP, 'gl pendapatan btn'),
	('coa-pay', 'gl-pendapatan-three', '999467811491365', null, CURRENT USER, CURRENT TIMESTAMP, null),
	('coa-pay', 'gl-kewajiban-three', '999212162491365', null, CURRENT USER, CURRENT TIMESTAMP, null);



INSERT INTO MWCONFIG.ERROR_MAP(GROUP, ORIGINAL, TARGET, MODIFIED_BY, TIMESTAMP) VALUES 
	('Ayopop', '000', '00', CURRENT USER, CURRENT TIMESTAMP),
	('Ayopop', '304', '14', CURRENT USER, CURRENT TIMESTAMP),
	('Ayopop', '303', '54', CURRENT USER, CURRENT TIMESTAMP),
	('Ayopop', '315', 'YY', CURRENT USER, CURRENT TIMESTAMP),
	('Ayopop', '299', '68', CURRENT USER, CURRENT TIMESTAMP),
	('Ayopop', '104', '59', CURRENT USER, CURRENT TIMESTAMP),
	('Ayopop', '108', '40', CURRENT USER, CURRENT TIMESTAMP),
	('Ayopop', '111', '28', CURRENT USER, CURRENT TIMESTAMP),
	('Ayopop', '180', '99', CURRENT USER, CURRENT TIMESTAMP),
	('Ayopop', '181', '89', CURRENT USER, CURRENT TIMESTAMP),
	('Ayopop', '182', '02', CURRENT USER, CURRENT TIMESTAMP),
	('Ayopop', '183', '71', CURRENT USER, CURRENT TIMESTAMP),
	('Ayopop', '184', '99', CURRENT USER, CURRENT TIMESTAMP),
	('Ayopop', '185', '54', CURRENT USER, CURRENT TIMESTAMP),
	('Ayopop', '186', '14', CURRENT USER, CURRENT TIMESTAMP),
	('Ayopop', '187', '89', CURRENT USER, CURRENT TIMESTAMP),
	('Ayopop', '188', '14', CURRENT USER, CURRENT TIMESTAMP),
	('Ayopop', '199', '99', CURRENT USER, CURRENT TIMESTAMP),
	('Ayopop', '305', '99', CURRENT USER, CURRENT TIMESTAMP),
	('Ayopop', '307', '14', CURRENT USER, CURRENT TIMESTAMP),
	('Ayopop', '311', '14', CURRENT USER, CURRENT TIMESTAMP),
	('Ayopop', '312', '99', CURRENT USER, CURRENT TIMESTAMP),
	('Ayopop', '313', '14', CURRENT USER, CURRENT TIMESTAMP),
	('Ayopop', '321', '07', CURRENT USER, CURRENT TIMESTAMP),
	('Ayopop', '399', '14', CURRENT USER, CURRENT TIMESTAMP),
	('Ayopop', '1', '00', CURRENT USER, CURRENT TIMESTAMP),
	('Ayopop', '2', '00', CURRENT USER, CURRENT TIMESTAMP),
	('Ayopop', '3', '00', CURRENT USER, CURRENT TIMESTAMP),
	('Ayopop', '4', '00', CURRENT USER, CURRENT TIMESTAMP),
	('Ayopop', '068', '68', CURRENT USER, CURRENT TIMESTAMP);
