INSERT INTO MWCONFIG.MAPPING (ID, DESCRIPTION, MODULE, MODIFIED_BY ,TIMESTAMP) VALUES ('res-dummy.vaccount-btn-service', NULL, '[drs]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID)
	VALUES 
			('res-dummy.vaccount-btn-service', 1, '/Data', '/Data/request', NULL, NULL),
			('res-dummy.vaccount-btn-service', 2, '/Data', '/Data/request/data', NULL, NULL),
			('res-dummy.vaccount-btn-service', 3, '/Data', '/Data/response', NULL, NULL),
			('res-dummy.vaccount-btn-service', 4, '/Data', '/Data/response/data', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ)
	VALUES 
		('res-dummy.vaccount-btn-service', 1, 'cnl', '${msg.cnl}', NULL),
		('res-dummy.vaccount-btn-service', 1, 'tno', '${msg.tno}', NULL),
		('res-dummy.vaccount-btn-service', 1, 'proCode', '${msg.proCode}', NULL),
		('res-dummy.vaccount-btn-service', 1, 'iss', '${msg.iss}', NULL),
		('res-dummy.vaccount-btn-service', 1, 'mid', '${msg.mid}', NULL),
		('res-dummy.vaccount-btn-service', 1, 'exp_iso8601', '${msg.exp_iso8601}', NULL),
		('res-dummy.vaccount-btn-service', 1, 'iat', '${msg.iat}', NULL),
		('res-dummy.vaccount-btn-service', 1, 'bic', '${msg.bic}', NULL),
		('res-dummy.vaccount-btn-service', 1, 'jti', '${msg.jti}', NULL),
		('res-dummy.vaccount-btn-service', 1, 'tid', '${msg.tid}', NULL),
		('res-dummy.vaccount-btn-service', 2, 'trxAmount','${msg.trxAmount."!number"}', null),
		('res-dummy.vaccount-btn-service', 2, 'feeAmount','${msg.feeAmount."!number"}', null),
		('res-dummy.vaccount-btn-service', 2, 'narative','${msg.narative==null?"":msg.narative}', null),
		('res-dummy.vaccount-btn-service', 2, 'narativeExt','${msg.narativeExt==null?"":msg.narativeExt}', null),
		('res-dummy.vaccount-btn-service', 2, 'reffNoRev','${msg.reffNoRev}', null),
		('res-dummy.vaccount-btn-service', 2, 'accNoTo','${msg.accNoTo}', null),
		('res-dummy.vaccount-btn-service', 2, 'accNoFrom','${msg.accNoFrom}', null),
		('res-dummy.vaccount-btn-service', 3, 'cnl', '${msg.cnl}', NULL),
		('res-dummy.vaccount-btn-service', 3, 'tno', '${msg.tno}', NULL),
		('res-dummy.vaccount-btn-service', 3, 'proCode', '${msg.proCode}', NULL),
		('res-dummy.vaccount-btn-service', 3, 'iss', '${msg.iss}', NULL),
		('res-dummy.vaccount-btn-service', 3, 'mid', '${msg.mid}', NULL),
		('res-dummy.vaccount-btn-service', 3, 'exp_iso8601', '${msg.exp_iso8601}', NULL),
		('res-dummy.vaccount-btn-service', 3, 'iat', '${msg.iat}', NULL),
		('res-dummy.vaccount-btn-service', 3, 'bic', '${msg.bic}', NULL),
		('res-dummy.vaccount-btn-service', 3, 'jti', '${msg.jti}', NULL),
		('res-dummy.vaccount-btn-service', 3, 'tid', '${msg.tid}', NULL),
		('res-dummy.vaccount-btn-service', 4, 'trxAmount','${msg.trxAmount."!number"}', null),
		('res-dummy.vaccount-btn-service', 4, 'feeAmount','${msg.feeAmount."!number"}', null),
		('res-dummy.vaccount-btn-service', 4, 'narative','${msg.narative==null?"":msg.narative}', null),
		('res-dummy.vaccount-btn-service', 4, 'narativeExt','${msg.narativeExt==null?"":msg.narativeExt}', null),
		('res-dummy.vaccount-btn-service', 4, 'reffNoRev','${msg.reffNoRev}', null),
		('res-dummy.vaccount-btn-service', 4, 'accNoTo','${msg.accNoTo}', null),
		('res-dummy.vaccount-btn-service', 4, 'accNoFrom','${msg.accNoFrom}', null),
		('res-dummy.vaccount-btn-service', 4, 'accNameFrom', 'TESTING DEV BTN SYARIAH BARU', null),
		('res-dummy.vaccount-btn-service', 4, 'accPoolingFrom', '2000003050', null),
		('res-dummy.vaccount-btn-service', 4, 'accPoolingNameFrom', 'TESTING SYARIAH', null),
		('res-dummy.vaccount-btn-service', 4, 'balanceFrom', '98985425', null);