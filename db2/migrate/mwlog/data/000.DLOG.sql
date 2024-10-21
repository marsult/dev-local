INSERT INTO MWLOG.DLOG_MD (TYPE, PBASE, MODIFIED_BY, TIMESTAMP)
	VALUES ('*', '.', CURRENT USER, CURRENT TIMESTAMP);

INSERT INTO MWLOG.DLOG_MD (TYPE, CODEX, PBASE, MODIFIED_BY, TIMESTAMP)
	VALUES ('dsp-abcs-request', 'dsp', NULL, CURRENT USER, CURRENT TIMESTAMP);
UPDATE MWLOG.DLOG_MD SET CODEX = 'dsp'	
						, C_11 = 'SEQUENCE_NUMBER', P_11 = 'TLBJSN'
						, C_12 = 'TELLER_ID', P_12 = 'dspUserId'
						, C_13 = 'WORKSTATION_ID', P_13 = 'dspTerminalId'
						, C_14 = 'CONTROL_UNIT', P_14 = 'TLBCUD'
						, C_15 = 'IP_ADDRESS', P_15 = 'ICDEVN'
						, C_16 = 'TRANSACTION_CODE', P_16 = 'dspTransactionCode'
						, C_17 = 'DATE_TIME', P_17 = 'TLBTDT'
						, C_19 = 'REVERSAL_INDICATOR', P_19 = 'TLBWC2' WHERE TYPE = 'dsp-abcs-request';

INSERT INTO MWLOG.DLOG_MD (TYPE, CODEX, PBASE, MODIFIED_BY, TIMESTAMP)
	VALUES ('dsp-abcs-response', 'dsp-response', NULL, CURRENT USER, CURRENT TIMESTAMP);
UPDATE MWLOG.DLOG_MD SET C_11 = 'SEQUENCE_NUMBER', P_11 = 'sequenceNumber'
						, C_12 = 'TELLER_ID', P_12 = 'dspUserId'
						, C_13 = 'WORKSTATION_ID', P_13 = 'dspTerminalId'
						, C_15 = 'IP_ADDRESS', P_15 = 'ICDEVN'
						, C_16 = 'TRANSACTION_CODE', P_16 = 'dspTransactionCode'
						, C_17 = 'ABCS_RESPONSES', P_17 = 'abcsResponses'
						, C_18 = 'RESPONSE_CODE', P_18 = 'responseCode'
						, C_19 = 'ERROR_DESC', P_19 = 'ERROR_F2' WHERE TYPE = 'dsp-abcs-response';

INSERT INTO MWLOG.DLOG_MD (TYPE, PBASE, MODIFIED_BY, TIMESTAMP, C_1, P_1, C_2, P_2, C_3, P_3)
	VALUES ('error', '.', CURRENT USER, CURRENT TIMESTAMP, 'TELLER_ID', 'data/body/dspUserId', 'WORKSTATION_ID', 'data/body/dspTerminalId','SEQUENCE_NUMBER', 'data/body/sequenceNumber');

INSERT INTO MWLOG.DLOG_MD (TYPE, CODEX, PBASE, MODIFIED_BY, TIMESTAMP)
	VALUES ('iso-8583-itm', 'iso-8583-itm', NULL, CURRENT USER, CURRENT TIMESTAMP);
UPDATE MWLOG.DLOG_MD SET 
						  C_1 = 'systemsTraceAuditNumber', P_1 = 'systemsTraceAuditNumber'
						, C_2 = 'transmissionDateTime', P_2 = 'transmissionDateTime'
						, C_3 = 'merchantType', P_3 = 'merchantType'
						, C_4 = 'responseCode', P_4 = 'responseCode'
						, C_5 = 'cardAcceptorTerminalIdentification', P_5 = 'cardAcceptorTerminalIdentification'
						, C_6 = 'cardAcceptorName', P_6 = 'cardAcceptorName'
						, C_7 = 'primaryAccountNumber', P_7 = 'primaryAccountNumber'
						, C_8 = 'fromAccount', P_8 = 'fromAccount'
						, C_9 = 'toAccount', P_9 = 'toAccount'
						, C_10 = 'amountTransaction', P_10 = 'amountTransaction'
						, C_11 = 'dateSettlement', P_11 = 'dateSettlement'
						, C_12 = 'retrievalReferenceNumber', P_12 = 'retrievalReferenceNumber'
						, C_13 = 'dateLocalTransaction', P_13 = 'dateLocalTransaction'
						, C_14 = 'timeLocalTransaction', P_14 = 'timeLocalTransaction'
						, C_15 = 'dateCapture', P_15 = 'dateCapture'
						, C_16 = 'track2data', P_16 = 'track2data'
						, C_17 = 'acquiringInstitutionIdentificationCode', P_17 = 'acquiringInstitutionIdentificationCode'
						, C_21 = 'reservedPrivate3', P_21 = 'reservedPrivate3'
						, C_39 = 'additionalDataPrivate', P_39 = 'additionalDataPrivate'
						, C_40 = 'reservedPrivate2', P_40 = 'reservedPrivate2'
						, MODIFIED_BY = CURRENT USER
						, TIMESTAMP = CURRENT TIMESTAMP WHERE TYPE = 'iso-8583-itm';

INSERT INTO MWLOG.DLOG_MD (TYPE, CODEX, PBASE, MODIFIED_BY, TIMESTAMP)
	VALUES ('iso-8583-core-syariah', 'iso-8583-core-syariah', NULL, CURRENT USER, CURRENT TIMESTAMP);
UPDATE MWLOG.DLOG_MD SET 
						  C_1 = 'systemsTraceAuditNumber', P_1 = 'systemsTraceAuditNumber'
						, C_2 = 'transmissionDateTime', P_2 = 'transmissionDateTime'
						, C_3 = 'merchantType', P_3 = 'merchantType'
						, C_4 = 'responseCode', P_4 = 'responseCode'
						, C_5 = 'cardAcceptorTerminalIdentification', P_5 = 'cardAcceptorTerminalIdentification'
						, C_6 = 'cardAcceptorName', P_6 = 'cardAcceptorName'
						, C_7 = 'primaryAccountNumber', P_7 = 'primaryAccountNumber'
						, C_8 = 'fromAccount', P_8 = 'fromAccount'
						, C_9 = 'toAccount', P_9 = 'toAccount'
						, C_10 = 'amountTransaction', P_10 = 'amountTransaction'
						, C_11 = 'dateSettlement', P_11 = 'dateSettlement'
						, C_12 = 'retrievalReferenceNumber', P_12 = 'retrievalReferenceNumber'
						, C_13 = 'dateLocalTransaction', P_13 = 'dateLocalTransaction'
						, C_14 = 'timeLocalTransaction', P_14 = 'timeLocalTransaction'
						, C_15 = 'dateCapture', P_15 = 'dateCapture'
						, C_16 = 'track2data', P_16 = 'track2data'
						, C_17 = 'acquiringInstitutionIdentificationCode', P_17 = 'acquiringInstitutionIdentificationCode'
						, C_21 = 'reservedPrivate3', P_21 = 'reservedPrivate3'
						, C_39 = 'additionalDataPrivate', P_39 = 'additionalDataPrivate'
						, C_40 = 'reservedPrivate2', P_40 = 'reservedPrivate2'
						, MODIFIED_BY = CURRENT USER
						, TIMESTAMP = CURRENT TIMESTAMP WHERE TYPE = 'iso-8583-core-syariah';

INSERT INTO MWLOG.DLOG_MD (TYPE, CODEX, PBASE, MODIFIED_BY, TIMESTAMP)
	VALUES ('iso-8583-sms', 'iso-8583-sms', NULL, CURRENT USER, CURRENT TIMESTAMP);
UPDATE MWLOG.DLOG_MD SET 
						  C_1 = 'systemsTraceAuditNumber', P_1 = 'systemsTraceAuditNumber'
						, C_2 = 'transmissionDateTime', P_2 = 'transmissionDateTime'
						, C_3 = 'merchantType', P_3 = 'merchantType'
						, C_4 = 'responseCode', P_4 = 'responseCode'
						, C_5 = 'cardAcceptorTerminalIdentification', P_5 = 'cardAcceptorTerminalIdentification'
						, C_6 = 'cardAcceptorName', P_6 = 'cardAcceptorName'
						, C_7 = 'primaryAccountNumber', P_7 = 'primaryAccountNumber'
						, C_8 = 'fromAccount', P_8 = 'fromAccount'
						, C_9 = 'toAccount', P_9 = 'toAccount'
						, C_10 = 'amountTransaction', P_10 = 'amountTransaction'
						, C_11 = 'dateSettlement', P_11 = 'dateSettlement'
						, C_12 = 'retrievalReferenceNumber', P_12 = 'retrievalReferenceNumber'
						, C_13 = 'dateLocalTransaction', P_13 = 'dateLocalTransaction'
						, C_14 = 'timeLocalTransaction', P_14 = 'timeLocalTransaction'
						, C_15 = 'dateCapture', P_15 = 'dateCapture'
						, C_16 = 'track2data', P_16 = 'track2data'
						, C_17 = 'acquiringInstitutionIdentificationCode', P_17 = 'acquiringInstitutionIdentificationCode'
						, C_21 = 'reservedPrivate3', P_21 = 'reservedPrivate3'
						, C_39 = 'additionalDataPrivate', P_39 = 'additionalDataPrivate'
						, C_40 = 'reservedPrivate2', P_40 = 'reservedPrivate2'
						, MODIFIED_BY = CURRENT USER
						, TIMESTAMP = CURRENT TIMESTAMP WHERE TYPE = 'iso-8583-sms';

INSERT INTO MWLOG.DLOG_MD (TYPE, CODEX, PBASE, MODIFIED_BY, TIMESTAMP)
	VALUES ('iso-8583-itmibft', 'iso-8583-itmibft', NULL, CURRENT USER, CURRENT TIMESTAMP);
UPDATE MWLOG.DLOG_MD SET 
						  C_1 = 'systemsTraceAuditNumber', P_1 = 'systemsTraceAuditNumber'
						, C_2 = 'transmissionDateTime', P_2 = 'transmissionDateTime'
						, C_3 = 'merchantType', P_3 = 'merchantType'
						, C_4 = 'responseCode', P_4 = 'responseCode'
						, C_5 = 'cardAcceptorTerminalIdentification', P_5 = 'cardAcceptorTerminalIdentification'
						, C_6 = 'cardAcceptorName', P_6 = 'cardAcceptorName'
						, C_7 = 'primaryAccountNumber', P_7 = 'primaryAccountNumber'
						, C_8 = 'fromAccount', P_8 = 'fromAccount'
						, C_9 = 'toAccount', P_9 = 'toAccount'
						, C_10 = 'amountTransaction', P_10 = 'amountTransaction'
						, C_11 = 'dateSettlement', P_11 = 'dateSettlement'
						, C_12 = 'retrievalReferenceNumber', P_12 = 'retrievalReferenceNumber'
						, C_13 = 'dateLocalTransaction', P_13 = 'dateLocalTransaction'
						, C_14 = 'timeLocalTransaction', P_14 = 'timeLocalTransaction'
						, C_15 = 'dateCapture', P_15 = 'dateCapture'
						, C_16 = 'track2data', P_16 = 'track2data'
						, C_17 = 'acquiringInstitutionIdentificationCode', P_17 = 'acquiringInstitutionIdentificationCode'
						, C_21 = 'reservedPrivate3', P_21 = 'reservedPrivate3'
						, C_39 = 'additionalDataPrivate', P_39 = 'additionalDataPrivate'
						, C_40 = 'reservedPrivate2', P_40 = 'reservedPrivate2'
						, MODIFIED_BY = CURRENT USER
						, TIMESTAMP = CURRENT TIMESTAMP WHERE TYPE = 'iso-8583-itmibft';

INSERT INTO MWLOG.DLOG_MD (TYPE, CODEX, PBASE, MODIFIED_BY, TIMESTAMP)
	VALUES ('iso-8583-cms', 'iso-8583-cms', NULL, CURRENT USER, CURRENT TIMESTAMP);
UPDATE MWLOG.DLOG_MD SET 
						  C_1 = 'systemsTraceAuditNumber', P_1 = 'systemsTraceAuditNumber'
						, C_2 = 'transmissionDateTime', P_2 = 'transmissionDateTime'
						, C_3 = 'merchantType', P_3 = 'merchantType'
						, C_4 = 'responseCode', P_4 = 'responseCode'
						, C_5 = 'cardAcceptorTerminalIdentification', P_5 = 'cardAcceptorTerminalIdentification'
						, C_6 = 'cardAcceptorName', P_6 = 'cardAcceptorName'
						, C_7 = 'primaryAccountNumber', P_7 = 'primaryAccountNumber'
						, C_8 = 'fromAccount', P_8 = 'fromAccount'
						, C_9 = 'toAccount', P_9 = 'toAccount'
						, C_10 = 'amountTransaction', P_10 = 'amountTransaction'
						, C_11 = 'dateSettlement', P_11 = 'dateSettlement'
						, C_12 = 'retrievalReferenceNumber', P_12 = 'retrievalReferenceNumber'
						, C_13 = 'dateLocalTransaction', P_13 = 'dateLocalTransaction'
						, C_14 = 'timeLocalTransaction', P_14 = 'timeLocalTransaction'
						, C_15 = 'dateCapture', P_15 = 'dateCapture'
						, C_16 = 'track2data', P_16 = 'track2data'
						, C_17 = 'acquiringInstitutionIdentificationCode', P_17 = 'acquiringInstitutionIdentificationCode'
						, C_21 = 'reservedPrivate3', P_21 = 'reservedPrivate3'
						, C_39 = 'additionalDataPrivate', P_39 = 'additionalDataPrivate'
						, C_40 = 'reservedPrivate2', P_40 = 'reservedPrivate2'
						, MODIFIED_BY = CURRENT USER
						, TIMESTAMP = CURRENT TIMESTAMP WHERE TYPE = 'iso-8583-cms';

INSERT INTO MWLOG.DLOG_MD (TYPE, CODEX, PBASE, MODIFIED_BY, TIMESTAMP)
	VALUES ('iso-8583-bi-conn', 'iso-8583-bi-conn', NULL, CURRENT USER, CURRENT TIMESTAMP);
UPDATE MWLOG.DLOG_MD SET 
						  C_1 = 'systemsTraceAuditNumber', P_1 = 'systemsTraceAuditNumber'
						, C_2 = 'transmissionDateTime', P_2 = 'transmissionDateTime'
						, C_3 = 'merchantType', P_3 = 'merchantType'
						, C_4 = 'responseCode', P_4 = 'responseCode'
						, C_5 = 'cardAcceptorTerminalIdentification', P_5 = 'cardAcceptorTerminalIdentification'
						, C_6 = 'cardAcceptorName', P_6 = 'cardAcceptorName'
						, C_7 = 'primaryAccountNumber', P_7 = 'primaryAccountNumber'
						, C_8 = 'fromAccount', P_8 = 'fromAccount'
						, C_9 = 'toAccount', P_9 = 'toAccount'
						, C_10 = 'amountTransaction', P_10 = 'amountTransaction'
						, C_11 = 'dateSettlement', P_11 = 'dateSettlement'
						, C_12 = 'retrievalReferenceNumber', P_12 = 'retrievalReferenceNumber'
						, C_13 = 'dateLocalTransaction', P_13 = 'dateLocalTransaction'
						, C_14 = 'timeLocalTransaction', P_14 = 'timeLocalTransaction'
						, C_15 = 'dateCapture', P_15 = 'dateCapture'
						, C_16 = 'track2data', P_16 = 'track2data'
						, C_17 = 'acquiringInstitutionIdentificationCode', P_17 = 'acquiringInstitutionIdentificationCode'
						, C_21 = 'reservedPrivate3', P_21 = 'reservedPrivate3'
						, C_39 = 'additionalDataPrivate', P_39 = 'additionalDataPrivate'
						, C_40 = 'reservedPrivate2', P_40 = 'reservedPrivate2'
						, MODIFIED_BY = CURRENT USER
						, TIMESTAMP = CURRENT TIMESTAMP WHERE TYPE = 'iso-8583-bi-conn';

INSERT INTO MWLOG.DLOG_MD (TYPE, CODEX, PBASE, MODIFIED_BY, TIMESTAMP)
	VALUES ('iso-8583-cws', 'iso-8583-cws', NULL, CURRENT USER, CURRENT TIMESTAMP);
UPDATE MWLOG.DLOG_MD SET 
						  C_1 = 'systemsTraceAuditNumber', P_1 = 'systemsTraceAuditNumber'
						, C_2 = 'transmissionDateTime', P_2 = 'transmissionDateTime'
						, C_3 = 'merchantType', P_3 = 'merchantType'
						, C_4 = 'responseCode', P_4 = 'responseCode'
						, C_5 = 'cardAcceptorTerminalIdentification', P_5 = 'cardAcceptorTerminalIdentification'
						, C_6 = 'cardAcceptorName', P_6 = 'cardAcceptorName'
						, C_7 = 'primaryAccountNumber', P_7 = 'primaryAccountNumber'
						, C_8 = 'fromAccount', P_8 = 'fromAccount'
						, C_9 = 'toAccount', P_9 = 'toAccount'
						, C_10 = 'amountTransaction', P_10 = 'amountTransaction'
						, C_11 = 'dateSettlement', P_11 = 'dateSettlement'
						, C_12 = 'retrievalReferenceNumber', P_12 = 'retrievalReferenceNumber'
						, C_13 = 'dateLocalTransaction', P_13 = 'dateLocalTransaction'
						, C_14 = 'timeLocalTransaction', P_14 = 'timeLocalTransaction'
						, C_15 = 'dateCapture', P_15 = 'dateCapture'
						, C_16 = 'track2data', P_16 = 'track2data'
						, C_17 = 'acquiringInstitutionIdentificationCode', P_17 = 'acquiringInstitutionIdentificationCode'
						, C_21 = 'reservedPrivate3', P_21 = 'reservedPrivate3'
						, C_39 = 'additionalDataPrivate', P_39 = 'additionalDataPrivate'
						, C_40 = 'reservedPrivate2', P_40 = 'reservedPrivate2'
						, MODIFIED_BY = CURRENT USER
						, TIMESTAMP = CURRENT TIMESTAMP WHERE TYPE = 'iso-8583-cws';

INSERT INTO MWLOG.DLOG_MD (TYPE,PCORRELATIONID,PSOURCE,PCODE,PBASE,MODIFIED_BY,TIMESTAMP,C_1,P_1,C_2,P_2,C_3,P_3,C_4,P_4,C_5,P_5,C_6,P_6,C_7,P_7,C_8,P_8,C_9,P_9,C_10,P_10,C_11,P_11,C_12,P_12,C_13,P_13,C_14,P_14,C_15,P_15,C_16,P_16,C_17,P_17,C_18,P_18,C_19,P_19,C_20,P_20,C_21,P_21,C_22,P_22,C_23,P_23,C_24,P_24,C_25,P_25,C_26,P_26,C_27,P_27,C_28,P_28,C_29,P_29,C_30,P_30,C_31,P_31,C_32,P_32,C_33,P_33,C_34,P_34,C_35,P_35,C_36,P_36,C_37,P_37,C_38,P_38,C_39,P_39,C_40,P_40,CODEX) VALUES
	 ('http://*',NULL,NULL,NULL,'.',CURRENT USER,CURRENT TIMESTAMP,'X-Remote-Addr','/HTTPInputHeader/X-Remote-Addr','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://*');
