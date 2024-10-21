INSERT INTO MWCONFIG.ROUTING_TABLE (CODE_START, CODE_END, CHANNEL, START_DATE, QUEUE, CREATE_BY, CREATE_DATE, STATUS, SUBCODEX, ADDITIONAL, REPLY_TO, REPLY_TO_QMGR) VALUES 
	('0200.2.605000', '0200.2.605000', 'sms', CURRENT TIMESTAMP, 'BP.WS.PAYMENT.IN', CURRENT USER, CURRENT TIMESTAMP, 'ACTIVE', NULL, NULL, 'ROUTER_OUT.SMS', 'PAYBROKER.QM');

INSERT INTO MWCONFIG.DTREE("GROUP", "PATH", "VALUE", MODIFIED_BY, TIMESTAMP, MODULE) VALUES 
	('CHARGES', 'sms|billPayment|605000', '${msg.reservedPrivate2."!value".startsWith("002")?"TopUp-LINKPAY-shad":"TopUp-LINKPAY"}', CURRENT USER, CURRENT TIMESTAMP, '[slamd]'),
	('CHARGES', 'TopUp-LINKPAY', '---', CURRENT USER, CURRENT TIMESTAMP, '[slamd][iwswc]'),
	('CHARGES', 'TopUp-LINKPAY-shad', '---', CURRENT USER, CURRENT TIMESTAMP, '[slamd][iwswc]');

CALL MWCONFIG.MERGE_CHARGES('TopUp-LINKPAY', 1000.00, 'fee nasabah', null, null, 0.00, null, null, null, 0.00, null, null, null, 0.00, null, null, null, 0.00, null, null, null);
CALL MWCONFIG.MERGE_CHARGES('TopUp-LINKPAY-shad', 1000.00, 'fee nasabah', null, null, 0.00, null, null, null, 0.00, null, null, null, 0.00, null, null, null, 0.00, null, null, null);

INSERT INTO MWCONFIG.PARAM_MAP(GROUP, NAME, VALUE, SEQ, MODIFIED_BY, TIMESTAMP, DESCRIPTION) VALUES
	('coa-pay', 'giro-finarya-linkaja-syariah', '111360001189', null, CURRENT USER, CURRENT TIMESTAMP, NULL),
	('coa-pay', 'gl-pendapatan-linkaja-syariah', '111360001189', null, CURRENT USER, CURRENT TIMESTAMP, NULL),
	('coa-pay', 'gl-tagihan-uus-linkaja-syariah', '111360001189', null, CURRENT USER, CURRENT TIMESTAMP, NULL);

INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES 
	('req-core.sms-master', '[sms][smsm][pay][ssyp][smsd][zzzmd][izzii][zwswp][iwswc][ozzip][iwswc][zsim][ibbmd][restapi]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
	('req-core.sms-master', 1, '/data/body', '/data/body', 'dsp', '1');
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
	('req-core.sms-master', 1, '!destination', 'core-sms', 10),
	('req-core.sms-master', 1, 'dspTransactionCode', '${getParamValue("sms-konven-code", "0200."+head.code."!value".substring(5), "0000")}', 10),
	('req-core.sms-master', 1, 'tellerComplete', '${getParamValue("device_teller_map", head.group."!value".trim() + "_" + (head.source."!value".substring(4,8) == "2080" || head.source."!value".substring(4,8) == "3180" ?msg.cardAcceptorTerminalIdentification."!value".trim():"13000001"), "|||| ")}', 10),
	('req-core.sms-master', 1, '!queueName', 'CORE_IN', 20),
	('req-core.sms-master', 1, 'TLBTCD', '${tar.dspTransactionCode}', 20),
	('req-core.sms-master', 1, '!code', '${"AXISSYSTEMSDNBHD."+tar.dspTransactionCode}', null),
	('req-core.sms-master', 1, '!mappingCode', '${head.code}', null),
	('req-core.sms-master', 1, '!type', 'dsp', null),
	('req-core.sms-master', 1, '@', 'copyMessageToChild("original");', null),
	('req-core.sms-master', 1, 'ICDEVN', '${tar.tellerComplete."!value".split("\\|", -1)[3]}', null),
	('req-core.sms-master', 1, 'ICEOM', '*EOM', null),
	('req-core.sms-master', 1, 'ICHEAD', '*MOSA', null),
	('req-core.sms-master', 1, 'ICID', '00000', null),
	('req-core.sms-master', 1, 'ICLEN', '1020', null),
	('req-core.sms-master', 1, 'RMADD3', '${(msg.track2Data==null||msg.track2Data."!value"==null?"":msg.track2Data."!value").padRight(37," ")}', null),
	('req-core.sms-master', 1, 'RMAPID', '${msg.retrievalReferenceNumber}${new java.text.SimpleDateFormat("yy").format(new Date())+msg.dateLocalTransaction."!value"}${msg.timeLocalTransaction}', null),
	('req-core.sms-master', 1, 'RMPSTC', '${new java.text.SimpleDateFormat("yyyy").format(new Date())+msg.dateLocalTransaction."!value"}', null),
	('req-core.sms-master', 1, 'RMSEHS', '${msg.dateLocalTransaction}', null),
	('req-core.sms-master', 1, 'RMUSRI', '${msg.reservedIso2}', null),
	('req-core.sms-master', 1, 'TLBCIF', '${msg.timeLocalTransaction}', null),
	('req-core.sms-master', 1, 'TLBCUD', '${tar.tellerComplete."!value".split("\\|", -1)[2]}', null),
	('req-core.sms-master', 1, 'TLBCUR', 'IDR', null),
	('req-core.sms-master', 1, 'TLBDS1', '${msg.timeLocalTransaction."!value"+msg.dateLocalTransaction."!value"+msg.acquiringInstitutionIdentificationCode."!value".padRight(11," ")+msg.merchantType."!value".padRight(4, " ")+msg.retrievalReferenceNumber."!value".padRight(12," ")}', null),
	('req-core.sms-master', 1, 'TLBFIL', '${msg.cardAcceptorTerminalIdentification."!value"+msg.retrievalReferenceNumber."!value".padRight(12," ")+msg.acquiringInstitutionIdentificationCode."!value".padRight(11," ")}', null),
	('req-core.sms-master', 1, 'TLBFP1', 'FF', null),
	('req-core.sms-master', 1, 'TLBFP2', 'FC', null),
	('req-core.sms-master', 1, 'TLBFP3', 'FF', null),
	('req-core.sms-master', 1, 'TLBID', '${tar.tellerComplete."!value".split("\\|", -1)[0]}', null),
	('req-core.sms-master', 1, 'TLBJC1', '00', null),
	('req-core.sms-master', 1, 'TLBJC2', '00', null),
	('req-core.sms-master', 1, 'TLBJSN', '${msg.systemsTraceAuditNumber}', null),
	('req-core.sms-master', 1, 'TLBTDT', '${msg.transmissionDateTime."!value".substring(2,4)+msg.transmissionDateTime."!value".substring(0,2)+new java.text.SimpleDateFormat("yy").format(new Date())}', null),
	('req-core.sms-master', 1, 'TLBTPN', '${tar.tellerComplete."!value".split("\\|", -1)[0].padRight(7," ")}${msg.reservedIso2==null||msg.reservedIso2."!value"==null?"":msg.reservedIso2."!value".padRight(14," ")}${msg.retrievalReferenceNumber."!value".padRight(12," ")}', null),
	('req-core.sms-master', 1, 'TLBWC1', '00', null),
	('req-core.sms-master', 1, 'TLBWC2', '00', null),
	('req-core.sms-master', 1, 'TLBWS', 'ES', null),
	('req-core.sms-master', 1, 'TLCUR1', 'IDR', null),
	('req-core.sms-master', 1, 'TLXUFD', 'SMS', null),
	('req-core.sms-master', 1, 'TMTIMIN', '000000', null),
	('req-core.sms-master', 1, 'TMTXTYP', 'T9999', null),
	('req-core.sms-master', 1, 'dspBankIdNumber', '00000000000', null),
	('req-core.sms-master', 1, 'dspDataFormatId', 'ABCS', null),
	('req-core.sms-master', 1, 'dspDeviceName', '${tar.tellerComplete."!value".split("\\|", -1)[3]}', null),
	('req-core.sms-master', 1, 'dspExchangeId', '4040404040404040404040404040404040404040', null),
	('req-core.sms-master', 1, 'dspFiller1', 'F0', null),
	('req-core.sms-master', 1, 'dspHeaderType', '*HOST', null),
	('req-core.sms-master', 1, 'dspNode', '00', null),
	('req-core.sms-master', 1, 'dspScenarioNumber', 'AXISSYSTEMSDNBHD', null),
	('req-core.sms-master', 1, 'dspSourceId', '*AXIS', null),
	('req-core.sms-master', 1, 'dspTerminalId', '${tar.tellerComplete."!value".split("\\|", -1)[1]}', null),
	('req-core.sms-master', 1, 'dspUserId', '${tar.tellerComplete."!value".split("\\|", -1)[0]}', null),
	('req-core.sms-master', 1, 'dspVersionNumber', '0000', null);


-- INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES 
-- 	('req-core.sms.0200.2.605000.002', '[slamd][iwswc][pay]', CURRENT USER, CURRENT TIMESTAMP);
-- INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
-- 	('req-core.sms.0200.2.605000.002', 1, '/data/body', '/data/body', 'req-core.sms-master', '1');
-- INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
-- 	('req-core.sms.0200.2.605000.002', 1, '@', 'copyMessage("frontOriginal",".");dtree("CHARGES","!group");', 5),
-- 	('req-core.sms.0200.2.605000.002', 1, 'ICDEVN', '10.126.205.18', 10),
-- 	('req-core.sms.0200.2.605000.002', 1, 'TLBCUD', 'I99', 10),
-- 	('req-core.sms.0200.2.605000.002', 1, 'TLBID', '13000006', 10),
-- 	('req-core.sms.0200.2.605000.002', 1, 'dspDeviceName', '10.126.205.18', 10),
-- 	('req-core.sms.0200.2.605000.002', 1, 'dspTerminalId', '13000006', 10),
-- 	('req-core.sms.0200.2.605000.002', 1, 'dspTransactionCode', '7109', 10),
-- 	('req-core.sms.0200.2.605000.002', 1, 'dspUserId', '13000006', 10),
-- 	('req-core.sms.0200.2.605000.002', 1, 'tellerComplete', '${null}', 10),
-- 	('req-core.sms.0200.2.605000.002', 1, 'TLBTCD', '${tar.dspTransactionCode}', 20),
-- 	('req-core.sms.0200.2.605000.002', 1, 'FILLER', '0000', null),
-- 	('req-core.sms.0200.2.605000.002', 1, 'RMADD1', '${msg.additionalDataPrivate."!value".substring(0,16)}', null),
-- 	('req-core.sms.0200.2.605000.002', 1, 'RMAPID', '${msg.retrievalReferenceNumber}${new java.text.SimpleDateFormat("yyMMdd").format(new Date())}|${new java.text.SimpleDateFormat("hhmmss").format(new Date())}', null),
-- 	('req-core.sms.0200.2.605000.002', 1, 'RMCKC', 'LINKAJ', null),
-- 	('req-core.sms.0200.2.605000.002', 1, 'RMCNT', '${msg.additionalDataPrivate."!value".substring(95,105)}', null),
-- 	('req-core.sms.0200.2.605000.002', 1, 'RMPSTC', '${new java.text.SimpleDateFormat("yyyyMMdd").format(new Date())}', null),
-- 	('req-core.sms.0200.2.605000.002', 1, 'RMPYCN', '${msg.timeLocalTransaction."!value".substring(0,2)}:${msg.timeLocalTransaction."!value".substring(2,4)}:${msg.timeLocalTransaction."!value".substring(4,6)}', null),
-- 	('req-core.sms.0200.2.605000.002', 1, 'RMPYID', '${msg.additionalDataPrivate."!value".substring(70,95)}', null),
-- 	('req-core.sms.0200.2.605000.002', 1, 'RMSEHS', '${new java.text.SimpleDateFormat("MMdd").format(new Date())}', null),
-- 	('req-core.sms.0200.2.605000.002', 1, 'RMUSRI', '${msg.additionalDataPrivate."!value".substring(0,16)}', null),
-- 	('req-core.sms.0200.2.605000.002', 1, 'TLBAFL', '0000', null),
-- 	('req-core.sms.0200.2.605000.002', 1, 'TLBDS1', 'SMS:LINKAJ:${msg.additionalDataPrivate."!value".substring(0,16)}:${msg.retrievalReferenceNumber."!value".padRight(12," ")}', null),
-- 	('req-core.sms.0200.2.605000.002', 1, 'TLBDS2', 'LINKAJ:${msg.additionalDataPrivate."!value".substring(0,16)}:${msg.additionalDataPrivate."!value".substring(95,105)}', null),
-- 	('req-core.sms.0200.2.605000.002', 1, 'TLBF01', '187176291417', null),
-- 	('req-core.sms.0200.2.605000.002', 1, 'TLBF02', '${decimalFormat("0",msg.additionalDataPrivate."!value".substring(46,58).toBigDecimal()+(getCharge(1).toBigDecimal()*100) )} ', null),
-- 	('req-core.sms.0200.2.605000.002', 1, 'TLBF09', '${getParamValueWithError("coa-pay", "gl-pendapatan-linkaja-syariah", "error:92Unknown giro")}', null),
-- 	('req-core.sms.0200.2.605000.002', 1, 'TLBF10', '${getCharge(1)?getCharge(1).toBigDecimal()*100:0}', null),
-- 	('req-core.sms.0200.2.605000.002', 1, 'TLBF15', '${getParamValueWithError("coa-pay", "giro-finarya-linkaja-syariah", "error:92Unknown giro")}', null),
-- 	('req-core.sms.0200.2.605000.002', 1, 'TLBF16', '123', null),
-- 	('req-core.sms.0200.2.605000.002', 1, 'TLBFIL', '${tar.dspTerminalId."!value".padRight(16," ")+msg.retrievalReferenceNumber."!value".padRight(12," ")+msg.acquiringInstitutionIdentificationCode."!value".padRight(16," ")}', null),
-- 	('req-core.sms.0200.2.605000.002', 1, 'TLBPST', '0000', null),
-- 	('req-core.sms.0200.2.605000.002', 1, 'TLBTPN', '${tar.dspTerminalId}:${msg.additionalDataPrivate."!value".substring(0,16)}:${msg.retrievalReferenceNumber."!value".padRight(12," ")}', null),
-- 	('req-core.sms.0200.2.605000.002', 1, 'TLXUFD', 'SMS', null),
-- 	('req-core.sms.0200.2.605000.002', 1, 'isMultipleCore', 'false', null);


-- -- req-core.sms.0200.2.605000.002
	CALL MWCONFIG.MERGE_MAPPING('req-core.sms.0200.2.605000.002', null, '[slaip][pay]');
	CALL MWCONFIG.MERGE_MAPPING_GROUP('req-core.sms.0200.2.605000.002', 1, '/data/body', '/data/body', NULL, NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'bis', '${msg.reservedPrivate2."!value".substring(3,6)=="BIS"?"true":"false"}', 1);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, '@', 'copyMessage("frontOriginal",".");dtree("CHARGES","!group");', 5);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'FILLER', '${tar.bis."!value"=="true"?"0000":null}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'ICDEVN', '${tar.bis."!value"=="true"?"10.126.205.18":null}', 10);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'RMADD1', '${tar.bis."!value"=="true"?msg.additionalDataPrivate."!value".substring(0,16):null}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'RMAPID', '${tar.bis."!value"=="true"?msg.retrievalReferenceNumber:null}${tar.bis."!value"=="true"?new java.text.SimpleDateFormat("yyMMdd").format(new Date()):null}|${tar.bis."!value"=="true"?new java.text.SimpleDateFormat("hhmmss").format(new Date()):null}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'RMCKC', '${tar.bis."!value"=="true"?"LINKAJ":null}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'RMCNT', '${tar.bis."!value"=="true"?msg.additionalDataPrivate."!value".substring(95,105):null}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'RMPSTC', '${tar.bis."!value"=="true"?new java.text.SimpleDateFormat("yyyyMMdd").format(new Date()):null}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'RMPYCN', '${tar.bis."!value"=="true"?msg.timeLocalTransaction."!value".substring(0,2):null}:${tar.bis."!value"=="true"?msg.timeLocalTransaction."!value".substring(2,4):null}:${tar.bis."!value"=="true"?msg.timeLocalTransaction."!value".substring(4,6):null}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'RMPYID', '${tar.bis."!value"=="true"?msg.additionalDataPrivate."!value".substring(70,95):null}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'RMSEHS', '${tar.bis."!value"=="true"?new java.text.SimpleDateFormat("MMdd").format(new Date()):null}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'RMUSRI', '${tar.bis."!value"=="true"?msg.additionalDataPrivate."!value".substring(0,16):null}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'TLBAFL', '${tar.bis."!value"=="true"?"0000":null}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'TLBCUD', '${tar.bis."!value"=="true"?"I99":null}', 10);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'TLBDS1', 'SMS:LINKAJ:${tar.bis."!value"=="true"?msg.additionalDataPrivate."!value".substring(0,16):null}:${tar.bis."!value"=="true"?msg.retrievalReferenceNumber."!value".padRight(12," "):null}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'TLBDS2', 'LINKAJ:${tar.bis."!value"=="true"?msg.additionalDataPrivate."!value".substring(0,16):null}:${tar.bis."!value"=="true"?msg.additionalDataPrivate."!value".substring(95,105):null}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'TLBF01', '${tar.bis."!value"=="true"?"187176291417":null}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'TLBF02', '${tar.bis."!value"=="true"?decimalFormat("0",msg.additionalDataPrivate."!value".substring(46,58).toBigDecimal()+(getCharge(1).toBigDecimal()*100) ):null} ', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'TLBF09', '${tar.bis."!value"=="true"?getParamValueWithError("coa-pay", "gl-pendapatan-linkaja-syariah", "error:92Unknown giro"):null}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'TLBF10', '${tar.bis."!value"=="true"?getCharge(3)?getCharge(3).toBigDecimal()*100:0:null}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'TLBF15', '${tar.bis."!value"=="true"?getParamValueWithError("coa-pay", "giro-finarya-linkaja-syariah", "error:92Unknown giro"):null}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'TLBF16', '${tar.bis."!value"=="true"?decimalFormat("0",msg.additionalDataPrivate."!value".substring(46,58).toBigDecimal()+(getCharge(3)?getCharge(3).toBigDecimal()*100:0)):null}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'TLBFIL', '${tar.bis."!value"=="true"?tar.dspTerminalId."!value".padRight(16," ")+msg.retrievalReferenceNumber."!value".padRight(12," ")+msg.acquiringInstitutionIdentificationCode."!value".padRight(16," "):null}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'TLBID', '${tar.bis."!value"=="true"?"13000006":null}', 10);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'TLBPST', '${tar.bis."!value"=="true"?"0000":null}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'TLBTCD', '${tar.bis."!value"=="true"?tar.dspTransactionCode:null}', 20);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'TLBTPN', '${tar.bis."!value"=="true"?tar.dspTerminalId:null}:${tar.bis."!value"=="true"?msg.additionalDataPrivate."!value".substring(0,16):null}:${tar.bis."!value"=="true"?msg.retrievalReferenceNumber."!value".padRight(12," "):null}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'TLXUFD', '${tar.bis."!value"=="true"?"SMS":null}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'dspDeviceName', '${tar.bis."!value"=="true"?"10.126.205.18":null}', 10);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'dspTerminalId', '${tar.bis."!value"=="true"?"13000006":null}', 10);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'dspTransactionCode', '${tar.bis."!value"=="true"?"7109":null}', 10);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'dspUserId', '${tar.bis."!value"=="true"?"13000006":null}', 10);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'isMultipleCore', 'false', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, '!CorrelId', '${tar.bis."!value"=="false"?head.CorrelId:null}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, '!ReplyToQ', 'ROUTER_OUT', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, '!code', '${tar.bis."!value"=="false"?head.code:""+"AXISSYSTEMSDNBHD."+tar.dspTransactionCode}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, '!connid', '${tar.bis."!value"=="false"?head.connid:null}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, '!destination', '${tar.bis."!value"=="false"?"core-syariah-itm":"core-sms"}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, '!destinationQueueName', '${tar.bis."!value"=="false"?"MDW_IN":null}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, '!group', '${tar.bis."!value"=="false"?head.group:null}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, '!mappingCode', '${tar.bis."!value"=="false"?head.code:null}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, '!messageType', '${tar.bis."!value"=="false"?msg.messageType:null}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, '!queueName', '${tar.bis."!value"=="false"?"CORE_SYARIAH_IN":"CORE_IN"}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, '!reqtimestamp', '${head.reqtimestamp}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, '!sid', '${head.sid}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, '!mid', '${head.mid}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, '!source', '${tar.bis."!value"=="false"?head.source:null}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, '!timestamp', '${head.reqtimestamp}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, '!type', '${tar.bis."!value"=="false"?"iso-8583-core-syariah":"dsp"}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, '@', 'copyMessageToChild("original");copyMessage();copyMessage("frontOriginal", ".");dtree("CHARGES","!group")', 10);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'acquiringInstitutionIdentificationCode', '200', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'cardAcceptorTerminalIdentification', '${tar.bis."!value"=="false"?msg.cardAcceptorTerminalIdentification:null}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'dateLocalTransaction', '${tar.bis."!value"=="false"?msg.dateLocalTransaction:null}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'editMessageType', '${tar.bis."!value"=="false"?msg.messageType:null}.${tar.bis."!value"=="false"?tar.reservedPrivate3:null}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'fromAccount', '${tar.bis."!value"=="false"?msg.fromAccount:null}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'isMultipleRequest', '${tar.bis."!value"=="false"?null:null}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'merchantType', '${tar.bis."!value"=="false"?"8000":null}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'primaryAccountNumber', '${tar.bis."!value"=="false"?msg.primaryAccountNumber."!value":null}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'processingCode', '102000', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'reasonCode', 'D${getCharge(1)?decimalFormat("0",(getCharge(1).toBigDecimal())*100).padLeft(12, "0"):"0".padLeft(12, "0")}C000000000000', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'reservedPrivate3', '${tar.bis."!value"=="false"?msg.reservedPrivate3:null}', 10);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'retrievalReferenceNumber', '${tar.bis."!value"=="false"?msg.retrievalReferenceNumber:null}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'systemsTraceAuditNumber', '${tar.bis."!value"=="false"?msg.systemsTraceAuditNumber:null}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'timeLocalTransaction', '${tar.bis."!value"=="false"?msg.timeLocalTransaction:null}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'transmissionDateTime', '${tar.bis."!value"=="false"?msg.transmissionDateTime:null}', NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'dspBankIdNumber', '00000000000', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'dspDataFormatId', 'ABCS', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'tellerComplete', '${getParamValue("device_teller_map", head.group."!value".trim() + "_" + (head.source."!value".substring(4,8) == "2080" || head.source."!value".substring(4,8) == "3180" ?msg.cardAcceptorTerminalIdentification."!value".trim():"13000001"), "|||| ")}', 10);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'dspExchangeId', '4040404040404040404040404040404040404040', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'dspFiller1', 'F0', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'dspHeaderType', '*HOST', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'dspNode', '00', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'dspScenarioNumber', 'AXISSYSTEMSDNBHD', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'dspSourceId', '*AXIS', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'dspVersionNumber', '0000', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'ICEOM', '*EOM', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'ICHEAD', '*MOSA', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'ICID', '00000', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'ICLEN', '1020', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'RMADD3', '${(msg.track2Data==null||msg.track2Data."!value"==null?"":msg.track2Data."!value").padRight(37," ")}', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'TLBCIF', '${msg.timeLocalTransaction}', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'TLBCUR', 'IDR', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'TLBFP1', 'FF', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'TLBFP2', 'FC', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'TLBFP3', 'FF', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'TLBJC1', '00', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'TLBJC2', '00', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'TLBJSN', '${msg.systemsTraceAuditNumber}', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'TLBTDT', '${msg.transmissionDateTime."!value".substring(2,4)+msg.transmissionDateTime."!value".substring(0,2)+new java.text.SimpleDateFormat("yy").format(new Date())}', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'TLBWC1', '00', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'TLBWC2', '00', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'TLBWS', 'ES', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'TLCUR1', 'IDR', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'TMTIMIN', '000000', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.002', 1, 'TMTXTYP', 'T9999', null);

-- req-core.sms.0200.2.605000
	CALL MWCONFIG.MERGE_MAPPING('req-core.sms.0200.2.605000', null, '[slamd][pay]');
	CALL MWCONFIG.MERGE_MAPPING_GROUP('req-core.sms.0200.2.605000', 1, '/data', '/data', NULL, NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP('req-core.sms.0200.2.605000', 2, '/data/body', '/data/body', NULL, NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP('req-core.sms.0200.2.605000', 3, '/data/body', '/data/body/original', NULL, NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP('req-core.sms.0200.2.605000', 4, '/data/body', '/data/coreRequest', NULL, NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000', 1, 'code', '${msg.body.code}', 5);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000', 1, 'mappingCode', '${tar.code}', 10);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000', 1, '@', 'copyMessage();', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000', 1, 'LocalEnv:Destination/MQDestinationList/DestinationData/queueName', 'CORE_SYARIAH_IN', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000', 1, 'LocalEnv:WrittenDestination/MQ/DestinationData/queueName', 'CORE_SYARIAH_IN', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000', 1, 'ReplyToQ', 'MDW_CORE_REPLY', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000', 1, 'queueName', 'CORE_SYARIAH_IN', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000', 2, 'isMultipleRequest', 'true', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000', 2, 'mappingCodeMultiple', 'konven', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000', 3, 'messageType', '${msg.editMessageType}', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000', 3, 'processingCode', '${msg.processingCode}', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000', 4, 'destinationQueueName', 'MDW_IN', null);

-- req-core.sms.0200.2.605000.konven
	CALL MWCONFIG.MERGE_MAPPING('req-core.sms.0200.2.605000.konven', null, '[slamd][pay]');
	CALL MWCONFIG.MERGE_MAPPING_GROUP('req-core.sms.0200.2.605000.konven', 1, '/data/body', '/data/body', 'req-core.sms', '1');
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.konven', 1, '@', 'copyMessageToChild("original");copyMessage();copyMessage("frontOriginal", ".");dtree("CHARGES","!group")', 10);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.konven', 1, 'ICDEVN', '10.126.205.18', 10);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.konven', 1, 'TLBCUD', 'I99', 10);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.konven', 1, 'TLBID', '13000006', 10);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.konven', 1, 'dspDeviceName', '10.126.205.18', 10);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.konven', 1, 'dspTerminalId', '13000006', 10);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.konven', 1, 'dspTransactionCode', '7109', 10);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.konven', 1, 'dspUserId', '13000006', 10);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.konven', 1, 'tellerComplete', '${null}', 10);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.konven', 1, 'TLBTCD', '${tar.dspTransactionCode}', 20);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.konven', 1, '!ReplyToQ', 'MDW_CORE_REPLY', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.konven', 1, '!code', 'AXISSYSTEMSDNBHD.0000007109', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.konven', 1, '!mappingCode', '${head.request.data.mappingCode}', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.konven', 1, '!source', 'core-${head.group}', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.konven', 1, '!timestamp', '${head.reqtimestamp}', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.konven', 1, 'FILLER', '0000', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.konven', 1, 'RMADD1', '${msg.additionalDataPrivate."!value".substring(0,16)}', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.konven', 1, 'RMAPID', '${msg.retrievalReferenceNumber}${new java.text.SimpleDateFormat("yyMMdd").format(new Date())}|${new java.text.SimpleDateFormat("hhmmss").format(new Date())}', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.konven', 1, 'RMCKC', 'LINKAJ', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.konven', 1, 'RMCNT', '${msg.additionalDataPrivate."!value".substring(95,105)}', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.konven', 1, 'RMPSTC', '${new java.text.SimpleDateFormat("yyyyMMdd").format(new Date())}', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.konven', 1, 'RMPYCN', '${msg.timeLocalTransaction."!value".substring(0,2)}:${msg.timeLocalTransaction."!value".substring(2,4)}:${msg.timeLocalTransaction."!value".substring(4,6)}', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.konven', 1, 'RMPYID', '${msg.additionalDataPrivate."!value".substring(70,95)}', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.konven', 1, 'RMSEHS', '${new java.text.SimpleDateFormat("MMdd").format(new Date())}', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.konven', 1, 'RMUSRI', '${msg.additionalDataPrivate."!value".substring(0,16)}', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.konven', 1, 'TLBAFL', '0000', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.konven', 1, 'TLBDS1', 'SMS:LINKAJ:${msg.additionalDataPrivate."!value".substring(0,16)}:${msg.retrievalReferenceNumber."!value".padRight(12," ")}', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.konven', 1, 'TLBDS2', 'LINKAJ:${msg.additionalDataPrivate."!value".substring(0,16)}:${msg.additionalDataPrivate."!value".substring(95,105)}', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.konven', 1, 'TLBF01', '${getParamValueWithError("coa-pay", "gl-tagihan-uus-linkaja-syariah", "error:92Unknown giro")}', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.konven', 1, 'TLBF02', '${decimalFormat("0",msg.additionalDataPrivate."!value".substring(46,58).toBigDecimal()+(getCharge(1).toBigDecimal()*100) )} ', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.konven', 1, 'TLBF09', '${getParamValueWithError("coa-pay", "gl-pendapatan-linkaja-syariah", "error:92Unknown giro")}', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.konven', 1, 'TLBF10', '${getCharge(1)?getCharge(1).toBigDecimal()*100:0}', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.konven', 1, 'TLBF15', '${getParamValueWithError("coa-pay", "giro-finarya-linkaja-syariah", "error:92Unknown giro")}', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.konven', 1, 'TLBF16', '${decimalFormat("0",msg.additionalDataPrivate."!value".substring(46,58).toBigDecimal())}', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.konven', 1, 'TLBFIL', '${tar.dspTerminalId."!value".padRight(16," ")+msg.retrievalReferenceNumber."!value".padRight(12," ")+msg.acquiringInstitutionIdentificationCode."!value".padRight(16," ")}', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.konven', 1, 'TLBPST', '0000', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.konven', 1, 'TLBTPN', '${tar.dspTerminalId}:${msg.additionalDataPrivate."!value".substring(0,16)}:${msg.retrievalReferenceNumber."!value".padRight(12," ")}', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.konven', 1, 'TLXUFD', 'SMS', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.konven', 1, 'fullReverse', 'true', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.konven', 1, 'isMultipleCore', 'true', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.konven', 1, 'isMultipleRequest', 'true', null);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.konven', 1, 'mappingCodeMultiple', 'biller', null);

-- req-core.sms.0200.2.605000.biller
	CALL MWCONFIG.MERGE_MAPPING('req-core.sms.0200.2.605000.biller', null, '[slamd]');
	CALL MWCONFIG.MERGE_MAPPING_GROUP('req-core.sms.0200.2.605000.biller', 1, '/data', '/data', NULL, NULL);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.biller', 1, '@', 'copyMessage();', 10);
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('req-core.sms.0200.2.605000.biller', 1, 'queueName', 'BP.WS.PAYMENT.COREREPLY', null);

-- res-core.sms.0200.605000.error
	CALL MWCONFIG.MERGE_MAPPING('res-core.sms.0200.605000.error', null, '[slamd][pay]');
	CALL MWCONFIG.MERGE_MAPPING_GROUP('res-core.sms.0200.605000.error', 1, '/data/body', '/data/body', 'res-core.sms.0200.error', '1');
	CALL MWCONFIG.MERGE_MAPPING_GROUP_LINE('res-core.sms.0200.605000.error', 1, '!ReplyToQ', 'ROUTER_OUT.SMS', 10);

INSERT INTO MWCONFIG.MAPPING(ID, DESCRIPTION, MODIFIED_BY, TIMESTAMP, MODULE) VALUES
    ('sms.0200.2.605000', '', CURRENT USER, CURRENT TIMESTAMP, '[slaii][slaip]');
INSERT INTO MWCONFIG.MAPPING_GROUP(MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
    ('sms.0200.2.605000', 1, '/data/body', '/TopupRequest', '', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE(MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES
    ('sms.0200.2.605000', 1, 'LocalEnv:Destination/HTTP/RequestURL', 'http://172.16.3.198:8002/linkpay?wsdl', null),
    ('sms.0200.2.605000', 1, 'LocalEnv:Destination/SOAPAction', 'http://tempuri.org/TopupRequest', null),
    ('sms.0200.2.605000', 1, 'LocalEnv:source', 'http://tempuri.org/', null),
    ('sms.0200.2.605000', 1, 'ns:.', 'http://tempuri.org/', null),
    ('sms.0200.2.605000', 1, 'ns:trxDate', 'http://tempuri.org/', 23),
    ('sms.0200.2.605000', 1, 'ns:merchantTrxID', 'http://tempuri.org/', 24),
    ('sms.0200.2.605000', 1, 'ns:sessionID', 'http://tempuri.org/', 25),
    ('sms.0200.2.605000', 1, 'msisdn', '${msg.additionalDataPrivate."!value".substring(0,16).trim()}', 1),
    ('sms.0200.2.605000', 1, 'amount', '${decimalFormat("0",msg.additionalDataPrivate."!value".substring(46,58).toBigDecimal())}', 2),
    ('sms.0200.2.605000', 1, 'trxDate', '${new java.text.SimpleDateFormat("yyyy-MM-dd").format(new Date())}T${new java.text.SimpleDateFormat("HH:mm:ss").format(new Date())}+07:00', 3),
    ('sms.0200.2.605000', 1, 'merchantTrxID', '${msg.retrievalReferenceNumber."!value".padRight(12," ")}', 4),
    ('sms.0200.2.605000', 1, 'ns:msisdn', 'http://tempuri.org/', 21),
    ('sms.0200.2.605000', 1, 'ns:amount', 'http://tempuri.org/', 22),
    ('sms.0200.2.605000', 1, 'sessionID', '${msg.additionalDataPrivate."!value".substring(70,95).trim()}', 5);


INSERT INTO MWCONFIG.MAPPING(ID, DESCRIPTION, MODIFIED_BY, TIMESTAMP, MODULE) VALUES
    ('sms.0200.2.605000.resp', '', CURRENT USER, CURRENT TIMESTAMP, '[slaii][slaip]');
INSERT INTO MWCONFIG.MAPPING_GROUP(MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
    ('sms.0200.2.605000.resp', 1, '/data', '/data', null, null),
    ('sms.0200.2.605000.resp', 2, '/data/response', '/data/body', null, null),
    ('sms.0200.2.605000.resp', 3, '/data/body', '/data/body', null, null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE(MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES
    ('sms.0200.2.605000.resp', 1, '@', 'copyMessage();', 1),
    ('sms.0200.2.605000.resp', 2, 'Add1', '${" "}', 14),
    ('sms.0200.2.605000.resp', 2, 'Add2', '${" "}', 15),
    ('sms.0200.2.605000.resp', 2, 'Add3', '${" "}', 16),
    ('sms.0200.2.605000.resp', 2, 'Add4', '${" "}', 17),
    ('sms.0200.2.605000.resp', 2, 'Add5', '${" "}', 18),
    ('sms.0200.2.605000.resp', 2, 'ErrorCode', '${msg.TopupResponse.responseCode}', 1),
    ('sms.0200.2.605000.resp', 2, 'ErrorDescription', '${msg.TopupResponse.responseMessage}', 2),
    ('sms.0200.2.605000.resp', 2, 'linkRefNum', '${msg.TopupResponse.responseCode."!value".equals("00")?msg.TopupResponse.linkRefNum:""}', 2),
    ('sms.0200.2.605000.resp', 3, '@', 'dtree("CHARGES","!group");', 50),
    ('sms.0200.2.605000.resp', 3, 'additionalDataPrivate', '${tar.responseCode."!value".equals("00")?msg.additionalDataPrivate."!value".substring(0,95)+tar.linkRefNum?."!value".padRight(25," ")+tar.Add1."!value".padRight(50," ")+tar.Add2."!value".padRight(50," ")+tar.Add3."!value".padRight(50," ")+tar.Add4."!value".padRight(50," ")+tar.Add5."!value".padRight(50," "):msg.additionalDataPrivate."!value"}', 99),
    ('sms.0200.2.605000.resp', 3, 'messageType', '0210', 51),
    ('sms.0200.2.605000.resp', 3, 'responseCode', '${getParamValue("error_map|H2HERRLINKPAY", tar.ErrorCode?."!value","99")}', 52);


