INSERT INTO MWCONFIG.PARSER(ID, MODIFIED_BY, TIMESTAMP) VALUES ('iso', CURRENT USER, CURRENT TIMESTAMP);

INSERT INTO MWCONFIG.PARSER_CODEX(PARSER_ID, ID, CODEX_ID) VALUES ('iso', 'iso', 'iso-8583-itm-instid');

INSERT INTO MWCONFIG.PARAM_MAP("GROUP", NAME, "VALUE", SEQ, MODIFIED_BY, TIMESTAMP, DESCRIPTION) VALUES 
    ('parser-type', 'sms.201106', 'iso-8583-sms-instid', null, CURRENT USER, CURRENT TIMESTAMP, null);

INSERT INTO MWCONFIG.ROUTING_TABLE(CODE_START, CODE_END, CHANNEL, START_DATE, END_DATE, QUEUE, CREATE_BY, CREATE_DATE, MODIFIED_BY, MODIFIED_DATE, STATUS, SUBCODEX, ADDITIONAL, REPLY_TO, REPLY_TO_QMGR) VALUES 
    ('0200.1.201106', '0200.1.201106', 'sms', CURRENT TIMESTAMP, null, 'MDW_IN', CURRENT USER, CURRENT TIMESTAMP, null, null, 'ACTIVE', 'iso/iso-8583-sms-instid', null, 'ROUTER_OUT', 'SMSBROKER.QM'),
    ('0200.2.201106', '0200.2.201106', 'sms', CURRENT TIMESTAMP, null, 'MDW_IN', CURRENT USER, CURRENT TIMESTAMP, null, null, 'ACTIVE', 'iso/iso-8583-sms-instid', null, 'ROUTER_OUT', 'SMSBROKER.QM'),
    ('0200.1.201106.0266', '0200.1.201106.0266', 'sms', CURRENT TIMESTAMP, null, 'BP.WS.INQUIRY.IN', CURRENT USER, CURRENT TIMESTAMP, null, null, 'ACTIVE', null, null, 'ROUTER_OUT', 'SMSBROKER.QM'),
    ('0200.2.201106.0266', '0200.2.201106.0266', 'sms', CURRENT TIMESTAMP, null, 'BP.WS.PAYMENT.IN', CURRENT USER, CURRENT TIMESTAMP, null, null, 'ACTIVE', null, null, 'ROUTER_OUT', 'SMSBROKER.QM'),
    ('0200.1.201106.0248', '0200.1.201106.0248', 'sms', CURRENT TIMESTAMP, null, 'BP.WS.INQUIRY.IN', CURRENT USER, CURRENT TIMESTAMP, null, null, 'ACTIVE', null, null, 'ROUTER_OUT', 'SMSBROKER.QM'),
    ('0200.2.201106.0248', '0200.2.201106.0248', 'sms', CURRENT TIMESTAMP, null, 'BP.WS.PAYMENT.IN', CURRENT USER, CURRENT TIMESTAMP, null, null, 'ACTIVE', null, null, 'ROUTER_OUT', 'SMSBROKER.QM'),
    ('0200.1.201106.0203.002', '0200.1.201106.0203.002', 'sms', CURRENT TIMESTAMP, null, 'BP.WS.INQUIRY.IN', CURRENT USER, CURRENT TIMESTAMP, null, null, 'ACTIVE', null, null, 'ROUTER_OUT.SMS', 'PAYBROKER.QM'),
    ('0200.2.201106.0203.002', '0200.2.201106.0203.002', 'sms', CURRENT TIMESTAMP, null, 'BP.WS.PAYMENT.IN', CURRENT USER, CURRENT TIMESTAMP, null, null, 'ACTIVE', null, null, 'ROUTER_OUT.SMS', 'PAYBROKER.QM'),
    ('0200.2.201106.0266.002', '0200.2.201106.0266.002', 'sms', CURRENT TIMESTAMP, null, 'BP.WS.INQUIRY.IN', CURRENT USER, CURRENT TIMESTAMP, null, null, 'ACTIVE', null, null, 'ROUTER_OUT.SMS', 'PAYBROKER.QM'),
    ('0200.2.201106.0248.002', '0200.2.201106.0248.002', 'sms', CURRENT TIMESTAMP, null, 'BP.WS.INQUIRY.IN', CURRENT USER, CURRENT TIMESTAMP, null, null, 'ACTIVE', null, null, 'ROUTER_OUT.SMS', 'PAYBROKER.QM'),
    ('0200.2.201106.0203.002', '0200.2.201106.0203.002', 'sms', CURRENT TIMESTAMP, null, 'BP.WS.INQUIRY.IN', CURRENT USER, CURRENT TIMESTAMP, null, null, 'ACTIVE', null, null, 'ROUTER_OUT.SMS', 'PAYBROKER.QM');

INSERT INTO MWCONFIG.ROUTING_TABLE(CODE_START, CODE_END, CHANNEL, START_DATE, END_DATE, QUEUE, CREATE_BY, CREATE_DATE, MODIFIED_BY, MODIFIED_DATE, STATUS, SUBCODEX, ADDITIONAL, REPLY_TO, REPLY_TO_QMGR) VALUES 
    ('0200.2.201106.0203.002', '0200.2.201106.0203.002', 'sms', CURRENT TIMESTAMP, null, 'BP.WS.INQUIRY.IN', CURRENT USER, CURRENT TIMESTAMP, null, null, 'ACTIVE', null, null, 'ROUTER_OUT', 'SMSBROKER.QM');


INSERT INTO MWCONFIG.MAPPING(ID, DESCRIPTION, MODIFIED_BY, TIMESTAMP, MODULE) VALUES 
    ('pnl.master.inq.req', '', CURRENT USER, CURRENT TIMESTAMP, '[iwsip][swsip]');
INSERT INTO MWCONFIG.MAPPING_GROUP(MAPPING_ID, ID, "SOURCE", TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
    ('pnl.master.inq.req', 1, '/data/body', '/Inquiry', null, null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE(MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
    ('pnl.master.inq.req', 1, 'ns:.', 'http://BTN-PNL/', null),
    ('pnl.master.inq.req', 1, 'LocalEnv:Destination/HTTP/RequestURL', '${getParamValue(head.group."!value",msg.additionalDataPrivate."!value".substring(0,4).trim(),"http://localhost:7800")}', null),
    ('pnl.master.inq.req', 1, 'LocalEnv:Destination/SOAPAction', 'http://BTN-PNL/Inquiry', null),
    ('pnl.master.inq.req', 1, 'LocalEnv:source', 'http://BTN-PNL/', null),
    ('pnl.master.inq.req', 1, 'ns:billkey3', 'http://BTN-PNL/', 11),
    ('pnl.master.inq.req', 1, 'ns:terminalID', 'http://BTN-PNL/', 12),
    ('pnl.master.inq.req', 1, 'ns:idTransaksi', 'http://BTN-PNL/', 13),
    ('pnl.master.inq.req', 1, 'ns:transDateTime', 'http://BTN-PNL/', 14),
    ('pnl.master.inq.req', 1, 'billkey3', '${msg.additionalDataPrivate."!value".substring(7,27).trim()}', 1),
    ('pnl.master.inq.req', 1, 'terminalID', '${msg.cardAcceptorTerminalIdentification}', 2),
    ('pnl.master.inq.req', 1, 'idTransaksi', '${new java.text.SimpleDateFormat("MMddHHmmss").format(new Date())}${msg.systemsTraceAuditNumber."!value".padLeft(8,"0")}', 3),
    ('pnl.master.inq.req', 1, 'transDateTime', '${new java.text.SimpleDateFormat("yyyyMMddHHmmss").format(new Date())}', 4),
    ('pnl.master.inq.req', 1, 'billkey9', '${msg.additionalDataPrivate."!value".substring(4,7)}', 5),
    ('pnl.master.inq.req', 1, 'ns:billkey9', 'http://BTN-PNL/', 15);


INSERT INTO MWCONFIG.MAPPING(ID, DESCRIPTION, MODIFIED_BY, TIMESTAMP, MODULE) VALUES 
    ('pnl.master.inq.resp', '', CURRENT USER, CURRENT TIMESTAMP, '[swsip]');
INSERT INTO MWCONFIG.MAPPING_GROUP(MAPPING_ID, ID, "SOURCE", TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
    ('pnl.master.inq.resp', 1, '/data', '/data', null, null),
    ('pnl.master.inq.resp', 2, '/data/response', '/data/body', null, null),
    ('pnl.master.inq.resp', 3, '/data/body', '/data/body', null, null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE(MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
    ('pnl.master.inq.resp', 1, '@', 'copyMessage();', 1),
    ('pnl.master.inq.resp', 2, 'ErrorCode', '${msg.InquiryResponse.InquiryResult.status.Status.errorCode}', 1),
    ('pnl.master.inq.resp', 2, 'ErrorDescription', '${msg.InquiryResponse.InquiryResult.status.Status.errorDescription}', 2),
    ('pnl.master.inq.resp', 2, 'Nama', '${msg.InquiryResponse.InquiryResult.billinfo6}', 3),
    ('pnl.master.inq.resp', 2, 'TotalAmount', '${msg.InquiryResponse.InquiryResult.totalAmount}', 4),
    ('pnl.master.inq.resp', 2, 'BillReff', '${" "}', 5),
    ('pnl.master.inq.resp', 2, 'DueDate', '${" "}', 6),
    ('pnl.master.inq.resp', 2, 'Semester', '${" "}', 7),
    ('pnl.master.inq.resp', 2, 'KodeProdi', '${" "}', 8),
    ('pnl.master.inq.resp', 2, 'NamaProdi', '${msg.InquiryResponse.InquiryResult.billinfo8==null||msg.InquiryResponse.InquiryResult.billinfo8."!value"==null?" ":msg.InquiryResponse.InquiryResult.billinfo8}', 9),
    ('pnl.master.inq.resp', 2, 'NamaInstitusi', 'POLITEKNIK NEGERI LHOKSEUMAWE', 10),
    ('pnl.master.inq.resp', 2, 'KodeAkses', '${msg.InquiryResponse.InquiryResult.billinfo4==null||msg.InquiryResponse.InquiryResult.billinfo4."!value"==null?" ":msg.InquiryResponse.InquiryResult.billinfo4}', 11),
    ('pnl.master.inq.resp', 2, 'AdditionalInfo', '${" "}', 12),
    ('pnl.master.inq.resp', 3, 'PayMethod', 'F', 13),
    ('pnl.master.inq.resp', 2, 'Add1', '${" "}', 14),
    ('pnl.master.inq.resp', 2, 'Add2', '${" "}', 15),
    ('pnl.master.inq.resp', 2, 'Add3', '${" "}', 16),
    ('pnl.master.inq.resp', 2, 'Add4', '${" "}', 17),
    ('pnl.master.inq.resp', 2, 'Add5', '${" "}', 18),
    ('pnl.master.inq.resp', 3, '@', 'dtree("CHARGES","!group");', 50),
    ('pnl.master.inq.resp', 3, 'messageType', '0210', 51),
    ('pnl.master.inq.resp', 3, 'responseCode', '${head.source."!value".substring(0,9).equals("sms-10802")?getParamValue("error_map|H2HERRPNL", tar.ErrorCode?."!value","99"):head.source."!value".substring(0,6).equals("sms-10")?"B1":getParamValue("error_map|H2HERRPNL", tar.ErrorCode?."!value","99")}', 52),
    ('pnl.master.inq.resp', 3, 'amountTransaction', '${tar.responseCode."!value".equals("00")?decimalFormat("0",(tar.TotalAmount."!value".toBigDecimal()+getCharge(2).toBigDecimal())*100):"0"}', 53),
    ('pnl.master.inq.resp', 3, 'additionalDataPrivate', '${tar.responseCode."!value".equals("00")?msg.additionalDataPrivate."!value".substring(0,27)+tar.Nama?."!value".padRight(30," ").substring(0,30)+decimalFormat("0",tar.TotalAmount."!value".toBigDecimal()*100).padLeft(12,"0")+decimalFormat("0",getCharge(2).toBigDecimal()*100).padLeft(12,"0")+tar.BillReff?."!value".padRight(30," ")+tar.DueDate?."!value".padRight(8," ")+tar.Semester?."!value".padRight(11," ")+tar.KodeProdi?."!value".padRight(10," ")+tar.NamaProdi?."!value".padRight(40," ")+tar.NamaInstitusi?."!value".padRight(30," ")+tar.KodeAkses?."!value".padRight(10," ")+tar.AdditionalInfo?."!value".padRight(30," ")+tar.PayMethod?."!value"+tar.Add1."!value".padRight(32," ")+tar.Add2."!value".padRight(32," ")+tar.Add3."!value".padRight(32," ")+tar.Add4."!value".padRight(32," ")+tar.Add5."!value".padRight(32," "):msg.additionalDataPrivate."!value"}', 99);


INSERT INTO MWCONFIG.MAPPING(ID, DESCRIPTION, MODIFIED_BY, TIMESTAMP, MODULE) VALUES 
    ('pnl.master.pay.req', '', CURRENT USER, CURRENT TIMESTAMP, '[swsip]');
INSERT INTO MWCONFIG.MAPPING_GROUP(MAPPING_ID, ID, "SOURCE", TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
    ('pnl.master.pay.req', 1, '/data/body', '/Payment', null, null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE(MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
    ('pnl.master.pay.req', 1, 'ns:.', 'http://BTN-PNL/', null),
    ('pnl.master.pay.req', 1, 'LocalEnv:Destination/HTTP/RequestURL', '${getParamValue(head.group."!value",msg.additionalDataPrivate."!value".substring(0,4).trim(),"http://localhost:7800")}', null),
    ('pnl.master.pay.req', 1, 'LocalEnv:Destination/SOAPAction', 'http://BTN-PNL/Payment', null),
    ('pnl.master.pay.req', 1, 'LocalEnv:source', 'http://BTN-PNL/', null),
    ('pnl.master.pay.req', 1, '@', 'dtree("CHARGES","!group");', 1),
    ('pnl.master.pay.req', 1, 'ns:billkey3', 'http://BTN-PNL/', 11),
    ('pnl.master.pay.req', 1, 'ns:billkey10', 'http://BTN-PNL/', 12),
    ('pnl.master.pay.req', 1, 'ns:idTransaksi', 'http://BTN-PNL/', 13),
    ('pnl.master.pay.req', 1, 'ns:terminalID', 'http://BTN-PNL/', 14),
    ('pnl.master.pay.req', 1, 'ns:totalAmount', 'http://BTN-PNL/', 15),
    ('pnl.master.pay.req', 1, 'ns:transDateTime', 'http://BTN-PNL/', 16),
    ('pnl.master.pay.req', 1, 'billkey3', '${msg.additionalDataPrivate."!value".substring(7,27).trim()}', 1),
    ('pnl.master.pay.req', 1, 'billkey10', '${msg.acquiringInstitutionIdentificationCode}', 2),
    ('pnl.master.pay.req', 1, 'idTransaksi', '${new java.text.SimpleDateFormat("MMddHHmmss").format(new Date())}${msg.systemsTraceAuditNumber."!value".padLeft(8,"0")}', 3),
    ('pnl.master.pay.req', 1, 'terminalID', '${msg.cardAcceptorTerminalIdentification}', 4),
    ('pnl.master.pay.req', 1, 'totalAmount', '${decimalFormat("0.00",head.coreRequest.body.TLBF16."!value".toBigDecimal()/100)}', 5),
    ('pnl.master.pay.req', 1, 'transDateTime', '${new java.text.SimpleDateFormat("yyyyMMddHHmmss").format(new Date())}', 6),
    ('pnl.master.pay.req', 1, 'ns:billkey9', 'http://BTN-PNL/', 17),
    ('pnl.master.pay.req', 1, 'billkey9', '${msg.additionalDataPrivate."!value".substring(4,7)}', 7);

INSERT INTO MWCONFIG.MAPPING(ID, DESCRIPTION, MODIFIED_BY, TIMESTAMP, MODULE) VALUES 
    ('pnl.master.pay.resp', '', CURRENT USER, CURRENT TIMESTAMP, '[swsip]');
INSERT INTO MWCONFIG.MAPPING_GROUP(MAPPING_ID, ID, "SOURCE", TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
    ('pnl.master.pay.resp', 1, '/data', '/data', null, null),
    ('pnl.master.pay.resp', 2, '/data/response', '/data/body', null, null),
    ('pnl.master.pay.resp', 3, '/data/body', '/data/body', null, null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE(MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
    ('pnl.master.pay.resp', 1, '@', 'copyMessage();', 1),
    ('pnl.master.pay.resp', 2, 'ErrorCode', '${msg.PaymentResponse==null?"68":msg.PaymentResponse.PaymentResult.status.Status.errorCode}', 1),
    ('pnl.master.pay.resp', 2, 'KodeAkses', '${msg.PaymentResponse==null||msg.PaymentResponse.PaymentResult.billinfo4==null||msg.PaymentResponse.PaymentResult.billinfo4."!value"==null?" ":msg.PaymentResponse.PaymentResult.billinfo4}', 1),
    ('pnl.master.pay.resp', 2, 'billInfo1', '${" "}', 2),
    ('pnl.master.pay.resp', 2, 'billInfo2', '${" "}', 3),
    ('pnl.master.pay.resp', 2, 'billInfo3', '${" "}', 4),
    ('pnl.master.pay.resp', 2, 'billInfo4', '${" "}', 5),
    ('pnl.master.pay.resp', 2, 'billInfo5', '${" "}', 6),
    ('pnl.master.pay.resp', 3, '@', 'dtree("CHARGES","!group");', 10),
    ('pnl.master.pay.resp', 3, 'additionalDataPrivate', '${tar.responseCode."!value".equals("00")?msg.additionalDataPrivate."!value".substring(0,210)+tar.KodeAkses?."!value".padRight(10," ")+msg.additionalDataPrivate."!value".substring(220):msg.additionalDataPrivate."!value"}', 14),
    ('pnl.master.pay.resp', 3, 'messageType', '0210', 11),
    ('pnl.master.pay.resp', 3, 'responseCode', '${getParamValue("error_map|H2HERRPNL", tar.ErrorCode?."!value","99")}', 12);

--0266.002

INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES 
    ('sms.0200.1.201106.0266.002', '[swsip]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
    ('sms.0200.1.201106.0266.002', 1, '/data/body', '/Inquiry', 'pnl.master.inq.req', '1');
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
    ('sms.0200.1.201106.0266.002', 1, 'billkey3', '${msg.additionalDataPrivate."!value".substring(7,27).trim()}', 1),
    ('sms.0200.1.201106.0266.002', 1, 'terminalID', '${msg.cardAcceptorTerminalIdentification}', 2),
    ('sms.0200.1.201106.0266.002', 1, 'idTransaksi', '${new java.text.SimpleDateFormat("MMddHHmmss").format(new Date())}${msg.systemsTraceAuditNumber."!value".padLeft(8,"0")}', 3),
    ('sms.0200.1.201106.0266.002', 1, 'transDateTime', '${new java.text.SimpleDateFormat("yyyyMMddHHmmss").format(new Date())}', 4),
    ('sms.0200.1.201106.0266.002', 1, 'billkey9', '${msg.additionalDataPrivate."!value".substring(4,7)}', 5),
    ('sms.0200.1.201106.0266.002', 1, 'ns:billkey3', 'http://BTN-PNL/', 11),
    ('sms.0200.1.201106.0266.002', 1, 'ns:terminalID', 'http://BTN-PNL/', 12),
    ('sms.0200.1.201106.0266.002', 1, 'ns:idTransaksi', 'http://BTN-PNL/', 13),
    ('sms.0200.1.201106.0266.002', 1, 'ns:transDateTime', 'http://BTN-PNL/', 14),
    ('sms.0200.1.201106.0266.002', 1, 'ns:billkey9', 'http://BTN-PNL/', 15),
    ('sms.0200.1.201106.0266.002', 1, 'LocalEnv:Destination/HTTP/RequestURL', '${getParamValue(head.group."!value",msg.additionalDataPrivate."!value".substring(0,4).trim(),"http://localhost:7800")}', null),
    ('sms.0200.1.201106.0266.002', 1, 'LocalEnv:Destination/SOAPAction', 'http://BTN-PNL/Inquiry', null),
    ('sms.0200.1.201106.0266.002', 1, 'LocalEnv:source', 'http://BTN-PNL/', null),
    ('sms.0200.1.201106.0266.002', 1, 'ns:.', 'http://BTN-PNL/', null);

INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES 
    ('sms.0200.1.201106.0266.002.resp', '[swsip]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
    ('sms.0200.1.201106.0266.002.resp', 1, '/data', '/data', 'pnl.master.inq.resp', '1'),
    ('sms.0200.1.201106.0266.002.resp', 2, '/data/response', '/data/body', 'pnl.master.inq.resp', '2'),
    ('sms.0200.1.201106.0266.002.resp', 3, '/data/body', '/data/body', 'pnl.master.inq.resp', '3');



INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES 
    ('sms.0200.2.201106.0266.002', '[swsip]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
    ('sms.0200.2.201106.0266.002', 1, '/data/body', '/Payment', 'pnl.master.pay.req', '1');
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
    ('sms.0200.2.201106.0266.002', 1, 'totalAmount', '${decimalFormat("0",msg.additionalDataPrivate."!value".substring(57,69).toBigDecimal()/100)}', 5),
    ('sms.0200.2.201106.0266.002', 1, 'ns:totalAmount', 'http://BTN-PNL/', 15);

INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES 
    ('sms.0200.2.201106.0266.002.resp', '[swsip]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
    ('sms.0200.2.201106.0266.002.resp', 1, '/data', '/data', 'pnl.master.pay.resp', '1'),
    ('sms.0200.2.201106.0266.002.resp', 2, '/data/response', '/data/body', 'pnl.master.pay.resp', '2'),
    ('sms.0200.2.201106.0266.002.resp', 3, '/data/body', '/data/body', 'pnl.master.pay.resp', '3'),
    ('sms.0200.2.201106.0266.002.resp', 4, '/data/coreRequest/body', '/data/coreRequest/body', 'null', NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
    ('sms.0200.2.201106.0266.002.resp', 4, '!code', '${msg.isMultipleCore."!value"=="true"?"0200.2.201106.0266.SyariahRev":head.code."!value"}', null),
    ('sms.0200.2.201106.0266.002.resp', 4, '!destinationQueueName', '${msg.isMultipleCore."!value"=="true"?"MDW_IN":null}', null),
    ('sms.0200.2.201106.0266.002.resp', 4, '@', 'copyMessage("BodyOriginal", "./body");', null);


--0248.002
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES 
    ('sms.0200.1.201106.0248.002', '[swsip]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
    ('sms.0200.1.201106.0248.002', 1, '/data/body', '/inquery', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
    ('sms.0200.1.201106.0248.002', 1, 'nim', '${msg.additionalDataPrivate."!value".substring(7,27).trim()}', 10),
    ('sms.0200.1.201106.0248.002', 1, 'LocalEnv:Destination/HTTP/RequestURL', '${getParamValue(head.group."!value",msg.additionalDataPrivate."!value".substring(0,4),"http://localhost:7800")}', null),
    ('sms.0200.1.201106.0248.002', 1, 'LocalEnv:Destination/SOAPAction', '', null),
    ('sms.0200.1.201106.0248.002', 1, 'LocalEnv:source', 'http://ws.action.ais', null),
    ('sms.0200.1.201106.0248.002', 1, 'ns:.', 'http://ws.action.ais', null),
    ('sms.0200.1.201106.0248.002', 1, 'ns:nim', 'http://ws.action.ais', null);


INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES 
    ('sms.0200.1.201106.0248.002.resp', '[swsip]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
    ('sms.0200.1.201106.0248.002.resp', 1, '/data', '/data', NULL, NULL),
    ('sms.0200.1.201106.0248.002.resp', 2, '/data/response', '/data/body', NULL, NULL),
    ('sms.0200.1.201106.0248.002.resp', 3, '/data/body', '/data/body', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
    ('sms.0200.1.201106.0248.002.resp', 2, 'angkatan', '${msg.inqueryResponse==null||msg.inqueryResponse.inqueryReturn==null||msg.inqueryResponse.inqueryReturn.angkatan==null||msg.inqueryResponse.inqueryReturn.angkatan."!value"==null?"":msg.inqueryResponse.inqueryReturn.angkatan}', 10),
    ('sms.0200.1.201106.0248.002.resp', 2, 'fakultas', '${msg.inqueryResponse==null||msg.inqueryResponse.inqueryReturn==null||msg.inqueryResponse.inqueryReturn.angkatan==null||msg.inqueryResponse.inqueryReturn.angkatan."!value"==null?"":msg.inqueryResponse.inqueryReturn.fakultas}', 10),
    ('sms.0200.1.201106.0248.002.resp', 2, 'info1', '${msg.inqueryResponse==null||msg.inqueryResponse.inqueryReturn==null||msg.inqueryResponse.inqueryReturn.info1==null||msg.inqueryResponse.inqueryReturn.info1."!value"==null?"":msg.inqueryResponse.inqueryReturn.info1}', 10),
    ('sms.0200.1.201106.0248.002.resp', 2, 'info10', '${msg.inqueryResponse==null||msg.inqueryResponse.inqueryReturn==null||msg.inqueryResponse.inqueryReturn.info10==null||msg.inqueryResponse.inqueryReturn.info10."!value"==null?"":msg.inqueryResponse.inqueryReturn.info10}', 10),
    ('sms.0200.1.201106.0248.002.resp', 2, 'info2', '${msg.inqueryResponse==null||msg.inqueryResponse.inqueryReturn==null||msg.inqueryResponse.inqueryReturn.info2==null||msg.inqueryResponse.inqueryReturn.info2."!value"==null?"":msg.inqueryResponse.inqueryReturn.info2}', 10),
    ('sms.0200.1.201106.0248.002.resp', 2, 'info3', '${msg.inqueryResponse==null||msg.inqueryResponse.inqueryReturn==null||msg.inqueryResponse.inqueryReturn.info3==null||msg.inqueryResponse.inqueryReturn.info3."!value"==null?"":msg.inqueryResponse.inqueryReturn.info3}', 10),
    ('sms.0200.1.201106.0248.002.resp', 2, 'info4', '${msg.inqueryResponse==null||msg.inqueryResponse.inqueryReturn==null||msg.inqueryResponse.inqueryReturn.info4==null||msg.inqueryResponse.inqueryReturn.info4."!value"==null?"":msg.inqueryResponse.inqueryReturn.info4}', 10),
    ('sms.0200.1.201106.0248.002.resp', 2, 'info5', '${msg.inqueryResponse==null||msg.inqueryResponse.inqueryReturn==null||msg.inqueryResponse.inqueryReturn.info5==null||msg.inqueryResponse.inqueryReturn.info5."!value"==null?"":msg.inqueryResponse.inqueryReturn.info5}', 10),
    ('sms.0200.1.201106.0248.002.resp', 2, 'info6', '${msg.inqueryResponse==null||msg.inqueryResponse.inqueryReturn==null||msg.inqueryResponse.inqueryReturn.info6==null||msg.inqueryResponse.inqueryReturn.info6."!value"==null?"":msg.inqueryResponse.inqueryReturn.info6}', 10),
    ('sms.0200.1.201106.0248.002.resp', 2, 'info7', '${msg.inqueryResponse==null||msg.inqueryResponse.inqueryReturn==null||msg.inqueryResponse.inqueryReturn.info7==null||msg.inqueryResponse.inqueryReturn.info7."!value"==null?"":msg.inqueryResponse.inqueryReturn.info7}', 10),
    ('sms.0200.1.201106.0248.002.resp', 2, 'info8', '${msg.inqueryResponse==null||msg.inqueryResponse.inqueryReturn==null||msg.inqueryResponse.inqueryReturn.info8==null||msg.inqueryResponse.inqueryReturn.info8."!value"==null?"":msg.inqueryResponse.inqueryReturn.info8}', 10),
    ('sms.0200.1.201106.0248.002.resp', 2, 'info9', '${msg.inqueryResponse==null||msg.inqueryResponse.inqueryReturn==null||msg.inqueryResponse.inqueryReturn.info9==null||msg.inqueryResponse.inqueryReturn.info9."!value"==null?"":msg.inqueryResponse.inqueryReturn.info9}', 10),
    ('sms.0200.1.201106.0248.002.resp', 2, 'keterangan_status_pembayaran', '${msg.inqueryResponse==null||msg.inqueryResponse.inqueryReturn==null||msg.inqueryResponse.inqueryReturn.keterangan_status_pembayaran0==null||msg.inqueryResponse.inqueryReturn.keterangan_status_pembayaran."!value"==null?"":msg.inqueryResponse.inqueryReturn.keterangan_status_pembayaran}', 10),
    ('sms.0200.1.201106.0248.002.resp', 2, 'kode_status_pembayaran', '${msg.inqueryResponse==null||msg.inqueryResponse.inqueryReturn==null||msg.inqueryResponse.inqueryReturn.kode_status_pembayaran==null||msg.inqueryResponse.inqueryReturn.kode_status_pembayaran."!value"==null?"":msg.inqueryResponse.inqueryReturn.kode_status_pembayaran}', 10),
    ('sms.0200.1.201106.0248.002.resp', 2, 'kurs', '${msg.inqueryResponse==null||msg.inqueryResponse.inqueryReturn==null||msg.inqueryResponse.inqueryReturn.kurs==null||msg.inqueryResponse.inqueryReturn.kurs."!value"==null?"":msg.inqueryResponse.inqueryReturn.kurs}', 10),
    ('sms.0200.1.201106.0248.002.resp', 2, 'nama', '${msg.inqueryResponse==null||msg.inqueryResponse.inqueryReturn==null||msg.inqueryResponse.inqueryReturn.nama==null||msg.inqueryResponse.inqueryReturn.nama."!value"==null?"":msg.inqueryResponse.inqueryReturn.nama}', 10),
    ('sms.0200.1.201106.0248.002.resp', 2, 'nim', '${msg.inqueryResponse==null||msg.inqueryResponse.inqueryReturn==null||msg.inqueryResponse.inqueryReturn.nim==null||msg.inqueryResponse.inqueryReturn.nim."!value"==null?"":msg.inqueryResponse.inqueryReturn.nim}', 10),
    ('sms.0200.1.201106.0248.002.resp', 2, 'prodi', '${msg.inqueryResponse==null||msg.inqueryResponse.inqueryReturn==null||msg.inqueryResponse.inqueryReturn.prodi==null||msg.inqueryResponse.inqueryReturn.prodi."!value"==null?"":msg.inqueryResponse.inqueryReturn.prodi}', 10),
    ('sms.0200.1.201106.0248.002.resp', 2, 'program', '${msg.inqueryResponse==null||msg.inqueryResponse.inqueryReturn==null||msg.inqueryResponse.inqueryReturn.program==null||msg.inqueryResponse.inqueryReturn.program."!value"==null?"":msg.inqueryResponse.inqueryReturn.program}', 10),
    ('sms.0200.1.201106.0248.002.resp', 2, 'rc', '${msg.inqueryResponse==null||msg.inqueryResponse.inqueryReturn==null||msg.inqueryResponse.inqueryReturn.response_code==null||msg.inqueryResponse.inqueryReturn.response_code."!value"==null?msg.Envelope.Body.Fault.faultcode:msg.inqueryResponse.inqueryReturn.response_code}', 10),
    ('sms.0200.1.201106.0248.002.resp', 2, 'reference_number', '${msg.inqueryResponse==null||msg.inqueryResponse.inqueryReturn==null||msg.inqueryResponse.inqueryReturn.reference_number==null||msg.inqueryResponse.inqueryReturn.reference_number."!value"==null?"":msg.inqueryResponse.inqueryReturn.reference_number}', 10),
    ('sms.0200.1.201106.0248.002.resp', 2, 'response_description', '${msg.inqueryResponse==null||msg.inqueryResponse.inqueryReturn==null||msg.inqueryResponse.inqueryReturn.response_description==null||msg.inqueryResponse.inqueryReturn.response_description."!value"==null?"":msg.inqueryResponse.inqueryReturn.response_description}', 10),
    ('sms.0200.1.201106.0248.002.resp', 2, 'semester', '${msg.inqueryResponse==null||msg.inqueryResponse.inqueryReturn==null||msg.inqueryResponse.inqueryReturn.semester==null||msg.inqueryResponse.inqueryReturn.semester."!value"==null?"":msg.inqueryResponse.inqueryReturn.semester}', 10),
    ('sms.0200.1.201106.0248.002.resp', 2, 'semester_ke', '${msg.inqueryResponse==null||msg.inqueryResponse.inqueryReturn==null||msg.inqueryResponse.inqueryReturn.semester_ke==null||msg.inqueryResponse.inqueryReturn.semester_ke."!value"==null?"":msg.inqueryResponse.inqueryReturn.semester_ke}', 10),
    ('sms.0200.1.201106.0248.002.resp', 2, 'total_amount', '${msg.inqueryResponse==null||msg.inqueryResponse.inqueryReturn==null||msg.inqueryResponse.inqueryReturn.total_amount==null||msg.inqueryResponse.inqueryReturn.total_amount."!value"==null?"":msg.inqueryResponse.inqueryReturn.total_amount}', 10),
    ('sms.0200.1.201106.0248.002.resp', 3, '@', 'dtree("CHARGES","!group");', 10),
    ('sms.0200.1.201106.0248.002.resp', 3, 'responseCode', '${getParamValue("error_map|IAIN-Bukittinggi", tar.rc?."!value","99")}', 20),
    ('sms.0200.1.201106.0248.002.resp', 3, 'additionalDataPrivate', '${tar.responseCode."!value".equals("00")?msg.additionalDataPrivate."!value".substring(0,27)+tar.nama."!value".padRight(30," ")+decimalFormat("0",tar.total_amount."!value".toBigDecimal()*100).padLeft(12,"0")+decimalFormat("0",getCharge(2).toBigDecimal()*100).padLeft(12,"0")+" ".padRight(30," ")+" ".padRight(8," ")+tar.semester."!value".padRight(11," ")+" ".padRight(10," ")+tar.prodi."!value".padRight(40," ")+"IAIN BUKIT TINGGI".padRight(30," ")+" ".padRight(10," ")+" ".padRight(30," ")+"F"+" ".padRight(32," ")+" ".padRight(32," ")+" ".padRight(32," ")+" ".padRight(32," ")+" ".padRight(32," "):msg.additionalDataPrivate."!value"}', 30),
    ('sms.0200.1.201106.0248.002.resp', 3, 'amountTransaction', '${tar.responseCode."!value".equals("00")?decimalFormat("0",(tar.total_amount."!value".toBigDecimal())*100):"0"}', 30),
    ('sms.0200.1.201106.0248.002.resp', 1, '@', 'copyMessage();', null),
    ('sms.0200.1.201106.0248.002.resp', 3, 'messageType', '0210', null);


INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES 
    ('sms.0200.2.201106.0248.002', '[pay][iwswc][zsim]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
    ('sms.0200.2.201106.0248.002', 1, '/data/body', '/pay', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
    ('sms.0200.2.201106.0248.002', 1, 'jamBayar', '${(new java.text.SimpleDateFormat("HHmmss")).format(new Date() )}', 10),
    ('sms.0200.2.201106.0248.002', 1, 'namaCabang', '', 10),
    ('sms.0200.2.201106.0248.002', 1, 'nim', '${msg.additionalDataPrivate."!value".substring(7,27).trim()}', 10),
    ('sms.0200.2.201106.0248.002', 1, 'nominalTagihan', '${decimalFormat("0", (msg.additionalDataPrivate."!value".substring(57,69).toBigDecimal()/100))}', 10),
    ('sms.0200.2.201106.0248.002', 1, 'reffNumber', '', 10),
    ('sms.0200.2.201106.0248.002', 1, 'tanggalBayar', '${new java.text.SimpleDateFormat("yyyyMMdd").format(new Date())}', 10),
    ('sms.0200.2.201106.0248.002', 1, 'userID', '', 10),
    ('sms.0200.2.201106.0248.002', 1, 'ns:nim', 'http://ws.action.ais', 20),
    ('sms.0200.2.201106.0248.002', 1, 'ns:reffNumber', 'http://ws.action.ais', 30),
    ('sms.0200.2.201106.0248.002', 1, 'ns:tanggalBayar', 'http://ws.action.ais', 40),
    ('sms.0200.2.201106.0248.002', 1, 'ns:jamBayar', 'http://ws.action.ais', 50),
    ('sms.0200.2.201106.0248.002', 1, 'ns:userID', 'http://ws.action.ais', 60),
    ('sms.0200.2.201106.0248.002', 1, 'ns:namaCabang', 'http://ws.action.ais', 70),
    ('sms.0200.2.201106.0248.002', 1, 'ns:nominalTagihan', 'http://ws.action.ais', 80),
    ('sms.0200.2.201106.0248.002', 1, 'LocalEnv:Destination/HTTP/RequestURL', '${getParamValue(head.group."!value",msg.additionalDataPrivate."!value".substring(0,4),"http://localhost:7800")}', null),
    ('sms.0200.2.201106.0248.002', 1, 'LocalEnv:Destination/SOAPAction', 'http://ws.action.ais/pay', null),
    ('sms.0200.2.201106.0248.002', 1, 'LocalEnv:source', 'http://ws.action.ais', null),
    ('sms.0200.2.201106.0248.002', 1, 'ns:.', 'http://ws.action.ais', null);

INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES 
    ('sms.0200.2.201106.0248.002.resp', '[pay][iwswc][zsim]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
    ('sms.0200.2.201106.0248.002.resp', 1, '/data', '/data', NULL, NULL),
    ('sms.0200.2.201106.0248.002.resp', 2, '/data/response', '/data/body', NULL, NULL),
    ('sms.0200.2.201106.0248.002.resp', 3, '/data/body', '/data/body', NULL, NULL),
    ('sms.0200.2.201106.0248.002.resp', 4, '/data/coreRequest/body', '/data/coreRequest/body', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
    ('sms.0200.2.201106.0248.002.resp', 3, 'responseCode', '${getParamValue("error_map|IAIN-Bukittinggi", tar.ErrorCode."!value","99")}', 10),
    ('sms.0200.2.201106.0248.002.resp', 1, '@', 'copyMessage();dtree("CHARGES","!group");', null),
    ('sms.0200.2.201106.0248.002.resp', 2, 'ErrorCode', '${msg.payResponse==null||msg.payResponse.payReturn==null||msg.payResponse.payReturn.response_code==null||msg.payResponse.payReturn.response_code."!value"==null?msg.Envelope.Body.Fault.faultcode:msg.payResponse.payReturn.response_code}', null),
    ('sms.0200.2.201106.0248.002.resp', 3, 'additionalDataPrivate', '${msg.additionalDataPrivate."!value".substring(0,180)+"IAIN BUKITTINGGI"+msg.additionalDataPrivate."!value".substring(210,251)}', null),
    ('sms.0200.2.201106.0248.002.resp', 3, 'messageType', '0210', null),
    ('sms.0200.2.201106.0248.002.resp', 4, '!code', '${msg.isMultipleCore."!value"=="true"?"0200.2.201106.0248.SyariahRev":head.code."!value"}', null),
    ('sms.0200.2.201106.0248.002.resp', 4, '!destinationQueueName', '${msg.isMultipleCore."!value"=="true"?"MDW_IN":null}', null),
    ('sms.0200.2.201106.0248.002.resp', 4, '@', 'copyMessage("BodyOriginal", "./body");', null);




INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES 
    ('sms.0200.1.201106.0203.002', '[iwswc][pay]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
    ('sms.0200.1.201106.0203.002', 1, '/data/body', '/Inquiry', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
    ('sms.0200.1.201106.0203.002', 1, 'channel', '1', 10),
    ('sms.0200.1.201106.0203.002', 1, 'codeInstitution', '0203', 10),
    ('sms.0200.1.201106.0203.002', 1, 'idChannel', '${head.body.cardAcceptorTerminalIdentification}', 10),
    ('sms.0200.1.201106.0203.002', 1, 'idTerminal', '${head.body.cardAcceptorTerminalIdentification}', 10),
    ('sms.0200.1.201106.0203.002', 1, 'nim', '${msg.additionalDataPrivate."!value".substring(7,27).trim()}', 10),
    ('sms.0200.1.201106.0203.002', 1, 'ns:channel', 'http://UNSYIAH/', 10),
    ('sms.0200.1.201106.0203.002', 1, 'ns:codeInstitution', 'http://UNSYIAH/', 10),
    ('sms.0200.1.201106.0203.002', 1, 'ns:idChannel', 'http://UNSYIAH/', 10),
    ('sms.0200.1.201106.0203.002', 1, 'ns:idTerminal', 'http://UNSYIAH/', 10),
    ('sms.0200.1.201106.0203.002', 1, 'ns:nim', 'http://UNSYIAH/', 10),
    ('sms.0200.1.201106.0203.002', 1, 'ns:pwd', 'http://UNSYIAH/', 10),
    ('sms.0200.1.201106.0203.002', 1, 'ns:trxTime', 'http://UNSYIAH/', 10),
    ('sms.0200.1.201106.0203.002', 1, 'ns:uid', 'http://UNSYIAH/', 10),
    ('sms.0200.1.201106.0203.002', 1, 'pwd', '92jfWZlhcekZga39TWAITg==', 10),
    ('sms.0200.1.201106.0203.002', 1, 'trxTime', '${new java.text.SimpleDateFormat("yyyyMMddHHmmss").format(new Date())}', 10),
    ('sms.0200.1.201106.0203.002', 1, 'uid', 'p3xaYPDbHsvt+63LYckxLQ==', 10),
    ('sms.0200.1.201106.0203.002', 1, 'LocalEnv:Destination/HTTP/RequestURL', 'http://UNSYIAH:8083/ws_unsyiah/Service.asmx?WSDL', null),
    ('sms.0200.1.201106.0203.002', 1, 'LocalEnv:Destination/SOAPAction', 'http://UNSYIAH/Inquiry', null),
    ('sms.0200.1.201106.0203.002', 1, 'LocalEnv:source', 'http://UNSYIAH/', null),
    ('sms.0200.1.201106.0203.002', 1, 'ns:.', 'http://UNSYIAH/', null);



INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES 
    ('sms.0200.1.201106.0203.002.resp', '[iwswc][pay]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
    ('sms.0200.1.201106.0203.002.resp', 1, '/data', '/data', NULL, NULL),
    ('sms.0200.1.201106.0203.002.resp', 2, '/data/response', '/data/body', NULL, NULL),
    ('sms.0200.1.201106.0203.002.resp', 3, '/data/body', '/data/body', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
    ('sms.0200.1.201106.0203.002.resp', 1, '@', 'copyMessage();', 1),
    ('sms.0200.1.201106.0203.002.resp', 2, 'AMOUNT', '${msg.InquiryResponse.InquiryResult.TotalTagihan}', 1),
    ('sms.0200.1.201106.0203.002.resp', 2, 'PRODI', '${msg.InquiryResponse.InquiryResult.Prodi}', 2),
    ('sms.0200.1.201106.0203.002.resp', 2, 'TAHUN', '${msg.InquiryResponse.InquiryResult.Periode}', 3),
    ('sms.0200.1.201106.0203.002.resp', 2, 'NAMA', '${msg.InquiryResponse.InquiryResult.Nama}', 4),
    ('sms.0200.1.201106.0203.002.resp', 2, 'reference1', '-', 5),
    ('sms.0200.1.201106.0203.002.resp', 2, 'statusDescription', '${msg.InquiryResponse.InquiryResult.Status.Status.statusDescription}', 5),
    ('sms.0200.1.201106.0203.002.resp', 2, 'errorCode', '${msg.InquiryResponse.InquiryResult.Status.Status.errorCode}', 7),
    ('sms.0200.1.201106.0203.002.resp', 2, 'billInfo5', ';', 8),
    ('sms.0200.1.201106.0203.002.resp', 3, '@', 'dtree("CHARGES","!group");', 10),
    ('sms.0200.1.201106.0203.002.resp', 3, 'messageType', '0210', 11),
    ('sms.0200.1.201106.0203.002.resp', 3, 'responseCode', '${getParamValue("error_map|unsyiah", tar.errorCode?."!value","99")}', 12),
    ('sms.0200.1.201106.0203.002.resp', 3, 'amountTransaction', '${tar.responseCode."!value".equals("00")?decimalFormat("0",(tar.AMOUNT."!value".toBigDecimal()*100)):"0"}', 13),
    ('sms.0200.1.201106.0203.002.resp', 3, 'additionalDataPrivate', '${tar.responseCode."!value".equals("00")?msg.additionalDataPrivate."!value".substring(0,27)+tar.NAMA."!value".padRight(30," ").substring(0,30)+decimalFormat("0",tar.AMOUNT."!value".toBigDecimal()*100).padLeft(12,"0")+"0".padLeft(12,"0")+tar.reference1."!value".padRight(30," ")+" ".padRight(8," ")+" ".padRight(11," ")+" ".padRight(10," ")+tar.PRODI."!value".padRight(40," ")+"UNSYIAH KUALA BANDA ACEH".padRight(30," ")+" ".padRight(10," ")+"RINCIAN TGH DPT DICETAK KE BTN".padRight(30," ")+"F":msg.additionalDataPrivate."!value"}', 14);

INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES 
    ('sms.0200.2.201106.0203.002', '[swsip]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
    ('sms.0200.2.201106.0203.002', 1, '/data/body', '/Payment', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
    ('sms.0200.2.201106.0203.002', 1, 'nim', '${msg.additionalDataPrivate."!value".substring(7,27).trim()}', 1),
    ('sms.0200.2.201106.0203.002', 1, 'trxTime', '${new java.text.SimpleDateFormat("yyyyMMddHHmmss").format(new Date())}', 2),
    ('sms.0200.2.201106.0203.002', 1, 'amount', '${decimalFormat("0", msg.additionalDataPrivate."!value".substring(57,69).toBigDecimal()/100)}', 3),
    ('sms.0200.2.201106.0203.002', 1, 'idTransaction', '${msg.systemsTraceAuditNumber}${msg.transmissionDateTime}', 4),
    ('sms.0200.2.201106.0203.002', 1, 'channel', '1', 5),
    ('sms.0200.2.201106.0203.002', 1, 'idChannel', '${head.body.cardAcceptorTerminalIdentification}', 6),
    ('sms.0200.2.201106.0203.002', 1, 'idTerminal', '${head.body.cardAcceptorTerminalIdentification}', 7),
    ('sms.0200.2.201106.0203.002', 1, 'codeInstitution', '0203', 8),
    ('sms.0200.2.201106.0203.002', 1, 'uid', 'p3xaYPDbHsvt+63LYckxLQ==', 9),
    ('sms.0200.2.201106.0203.002', 1, 'pwd', '92jfWZlhcekZga39TWAITg==', 10),
    ('sms.0200.2.201106.0203.002', 1, 'ns:nim', 'http://UNSYIAH/', 11),
    ('sms.0200.2.201106.0203.002', 1, 'ns:trxTime', 'http://UNSYIAH/', 12),
    ('sms.0200.2.201106.0203.002', 1, 'ns:amount', 'http://UNSYIAH/', 13),
    ('sms.0200.2.201106.0203.002', 1, 'ns:idTransaction', 'http://UNSYIAH/', 14),
    ('sms.0200.2.201106.0203.002', 1, 'ns:channel', 'http://UNSYIAH/', 15),
    ('sms.0200.2.201106.0203.002', 1, 'ns:idChannel', 'http://UNSYIAH/', 16),
    ('sms.0200.2.201106.0203.002', 1, 'ns:idTerminal', 'http://UNSYIAH/', 17),
    ('sms.0200.2.201106.0203.002', 1, 'ns:codeInstitution', 'http://UNSYIAH/', 18),
    ('sms.0200.2.201106.0203.002', 1, 'ns:uid', 'http://UNSYIAH/', 19),
    ('sms.0200.2.201106.0203.002', 1, 'ns:pwd', 'http://UNSYIAH/', 20),
    ('sms.0200.2.201106.0203.002', 1, 'LocalEnv:Destination/HTTP/RequestURL', '${getParamValue(head.group."!value",msg.additionalDataPrivate."!value".substring(0,4).trim(),"http://localhost:7800")}', null),
    ('sms.0200.2.201106.0203.002', 1, 'LocalEnv:Destination/SOAPAction', 'http://UNSYIAH/Payment', null),
    ('sms.0200.2.201106.0203.002', 1, 'LocalEnv:source', 'http://UNSYIAH/', null),
    ('sms.0200.2.201106.0203.002', 1, 'ns:.', 'http://UNSYIAH/', null);

INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES 
    ('sms.0200.2.201106.0203.002.resp', '[swsip]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
    ('sms.0200.2.201106.0203.002.resp', 1, '/data', '/data', NULL, NULL),
    ('sms.0200.2.201106.0203.002.resp', 2, '/data/response', '/data/body', NULL, NULL),
    ('sms.0200.2.201106.0203.002.resp', 3, '/data/body', '/data/body', NULL, NULL),
    ('sms.0200.2.201106.0203.002.resp', 4, '/data/coreRequest/body', '/data/coreRequest/body', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
    ('sms.0200.2.201106.0203.002.resp', 1, '@', 'copyMessage();', 1),
    ('sms.0200.2.201106.0203.002.resp', 2, 'ErrorCode', '${msg.PaymentResponse==null?"05":msg.PaymentResponse.PaymentResult.Status.Status.errorCode}', 1),
    ('sms.0200.2.201106.0203.002.resp', 2, 'billInfo5', '-', 2),
    ('sms.0200.2.201106.0203.002.resp', 3, 'messageType', '0210', 11),
    ('sms.0200.2.201106.0203.002.resp', 3, 'responseCode', '${getParamValue("error_map|unsyiah", tar.ErrorCode?."!value","99")}', 12),
    ('sms.0200.2.201106.0203.002.resp', 3, 'additionalDataPrivate', '${tar.responseCode."!value".equals("00")?msg.additionalDataPrivate."!value".substring(4,7).trim().equals("PMB")?msg.additionalDataPrivate."!value".substring(0,210)+tar.billInfo5."!value".trim().padRight(10," ")+msg.additionalDataPrivate."!value".substring(220,251):msg.additionalDataPrivate."!value":msg.additionalDataPrivate."!value"}', 14),
    ('sms.0200.2.201106.0203.002.resp', 4, '!code', '${msg.isMultipleCore."!value"=="true"?"0200.2.201106.0203.SyariahRev":head.code."!value"}', null),
    ('sms.0200.2.201106.0203.002.resp', 4, '!destinationQueueName', '${msg.isMultipleCore."!value"=="true"?"MDW_IN":null}', null),
    ('sms.0200.2.201106.0203.002.resp', 4, '@', 'copyMessage("BodyOriginal", "./body");', null);




INSERT INTO MWCONFIG.ROUTING_TABLE(CODE_START, CODE_END, CHANNEL, START_DATE, END_DATE, QUEUE, CREATE_BY, CREATE_DATE, MODIFIED_BY, MODIFIED_DATE, STATUS, SUBCODEX, ADDITIONAL, REPLY_TO, REPLY_TO_QMGR) VALUES 
    ('0200.1.201106.0204.002', '0200.1.201106.0204.002', 'sms', CURRENT TIMESTAMP, null, 'BP.WS.INQUIRY.IN', CURRENT USER, CURRENT TIMESTAMP, null, null, 'ACTIVE', null, null, 'ROUTER_OUT', 'SMSBROKER.QM'),
    ('0200.2.201106.0204.002', '0200.2.201106.0204.002', 'sms', CURRENT TIMESTAMP, null, 'BP.WS.INQUIRY.IN', CURRENT USER, CURRENT TIMESTAMP, null, null, 'ACTIVE', null, null, 'ROUTER_OUT', 'SMSBROKER.QM');


INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES 
    ('sms.0200.1.201106.0204', '[iwswc][pay]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
    ('sms.0200.1.201106.0204', 1, '/data/body', '/Inquiry', 'sms.0200.1.201106.0203.002', 1);

INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES 
    ('sms.0200.1.201106.0204.resp', '[iwswc][pay]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
    ('sms.0200.1.201106.0204.resp', 1, '/data', '/data', 'sms.0200.1.201106.0203.002.resp', 1),
    ('sms.0200.1.201106.0204.resp', 2, '/data/response', '/data/body', 'sms.0200.1.201106.0203.002.resp', 2),
    ('sms.0200.1.201106.0204.resp', 3, '/data/body', '/data/body', 'sms.0200.1.201106.0203.002.resp', 3);

INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES 
    ('sms.0200.2.201106.0204.002', '[swsip]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
    ('sms.0200.2.201106.0204.002', 1, '/data/body', '/Payment', 'sms.0200.2.201106.0203.002', 1);

INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES 
    ('sms.0200.2.201106.0204.002.resp', '[swsip]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
    ('sms.0200.2.201106.0204.002.resp', 1, '/data', '/data', 'sms.0200.2.201106.0203.002.resp', 1),
    ('sms.0200.2.201106.0204.002.resp', 2, '/data/response', '/data/body', 'sms.0200.2.201106.0203.002.resp', 2),
    ('sms.0200.2.201106.0204.002.resp', 3, '/data/body', '/data/body', 'sms.0200.2.201106.0203.002.resp', 3),
    ('sms.0200.2.201106.0204.002.resp', 4, '/data/coreRequest/body', '/data/coreRequest/body', 'sms.0200.2.201106.0203.002.resp', 4);

