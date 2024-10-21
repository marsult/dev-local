INSERT INTO MWCONFIG.ADAPTOR (ID, DESCRIPTION, ASYNCHRONOUS, MODIFIED_BY, TIMESTAMP)
    VALUES ('core-syariah-itm', NULL, 1, CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.ADAPTOR_CODEX (ADAPTOR_ID, ID, CODEX_ID)
    VALUES 
        ('core-syariah-itm', 'incoming', 'iso-8583-core-syariah'),
        ('core-syariah-itm', 'outgoing', 'iso-8583-core-syariah');
INSERT INTO MWCONFIG.ADAPTOR_PARAM (ADAPTOR_ID, NAME, VALUE)
    VALUES
        ('core-syariah-itm', 'echo', '60000'),
        ('core-syariah-itm', 'needSignOn', 'true'),
        ('core-syariah-itm', 'timeout', '5000');

INSERT INTO MWCONFIG.CLIENT (ADAPTOR_ID, IDLE_WAIT, TIMEOUT, CLOSE_QUEUE, CONTROL_QUEUE, KEEP_CONN, REUSE_DELAY, NODE)
    VALUES('core-syariah-itm', 0, 0, NULL, NULL, 1, 0, 'core-syariah-client');
INSERT INTO MWCONFIG.CLIENT_TARGET (CLIENT_ID, ID, HOST, WEIGHT, SEQ)
    VALUES ('core-syariah-itm', 'core-syariah-itm', 'DUMMY:30804', 0, 1);

INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES ('core-syariah-itm.SIGN-ON', null, CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) 
    VALUES ('core-syariah-itm.SIGN-ON', 1, '/data', '/data/body', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) 
    VALUES 
        ('core-syariah-itm.SIGN-ON', 1, 'systemsTraceAuditNumber', '${counter("core-syariah-itm", 5, 1, "ddMMyy")} ', 10),
        ('core-syariah-itm.SIGN-ON', 1, 'transmissionDateTime', '${getTimeZoneFormat("MMddHHmmss","GMT")}', 10),
        ('core-syariah-itm.SIGN-ON', 1, '!mid', '${tar.transmissionDateTime."!value"+"."+tar.systemsTraceAuditNumber."!value"}', 20),
        ('core-syariah-itm.SIGN-ON', 1, '!destination', '${msg.source}', null),
        ('core-syariah-itm.SIGN-ON', 1, '!nosignon', 'true', null),
        ('core-syariah-itm.SIGN-ON', 1, '!reqtimestamp', '${head.reqtimestamp}', null),
        ('core-syariah-itm.SIGN-ON', 1, '!sid', '${msg.sid}', null),
        ('core-syariah-itm.SIGN-ON', 1, 'dateLocalTransaction', '${getTimeZoneFormat("MMdd","GMT")}', null),
        ('core-syariah-itm.SIGN-ON', 1, 'messageType', '0800', null),
        ('core-syariah-itm.SIGN-ON', 1, 'networkManagementInformationCode', '001', null),
        ('core-syariah-itm.SIGN-ON', 1, 'timeLocalTransaction', '${getTimeZoneFormat("HHmmss","GMT")}', null);

INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES ('core-syariah-itm.ECHO-TEST', null, CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) 
    VALUES 
	('core-syariah-itm.ECHO-TEST', 1, '/data', '/data/body', 'core-syariah-itm.SIGN-ON', '1');
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) 
    VALUES 
	('core-syariah-itm.ECHO-TEST', 1, 'networkManagementInformationCode', '301', null);


INSERT INTO MWCONFIG.ERROR_MAP(GROUP, ORIGINAL, TARGET, MODIFIED_BY, TIMESTAMP, DETAIL) VALUES
    ('core-syariah-itm', '52', '52', CURRENT USER, CURRENT TIMESTAMP, null),
    ('core-syariah-itm', '53', '53', CURRENT USER, CURRENT TIMESTAMP, null),
    ('core-syariah-itm', '22', '22', CURRENT USER, CURRENT TIMESTAMP, null),
    ('core-syariah-itm', '13', '01', CURRENT USER, CURRENT TIMESTAMP, null),
    ('core-syariah-itm', '81', '81', CURRENT USER, CURRENT TIMESTAMP, 'Failed to Connect'),
    ('core-syariah-itm', '61', '61', CURRENT USER, CURRENT TIMESTAMP, null),
    ('core-syariah-itm', '00', '00', CURRENT USER, CURRENT TIMESTAMP, 'Transaction Success'),
    ('core-syariah-itm', '01', '01', CURRENT USER, CURRENT TIMESTAMP, 'Account number not found'),
    ('core-syariah-itm', '02', '02', CURRENT USER, CURRENT TIMESTAMP, 'Saldo tidak cukup'),
    ('core-syariah-itm', '03', '03', CURRENT USER, CURRENT TIMESTAMP, 'Rekening baru'),
    ('core-syariah-itm', '05', '05', CURRENT USER, CURRENT TIMESTAMP, 'Saldo tidak cukup'),
    ('core-syariah-itm', '07', '07', CURRENT USER, CURRENT TIMESTAMP, 'Invalid mandatory field'),
    ('core-syariah-itm', '08', '08', CURRENT USER, CURRENT TIMESTAMP, 'Cetak buku tabungan dulu'),
    ('core-syariah-itm', '09', '09', CURRENT USER, CURRENT TIMESTAMP, 'Rekening diblokir'),
    ('core-syariah-itm', '11', '11', CURRENT USER, CURRENT TIMESTAMP, 'Transaction amount > Late charges due'),
    ('core-syariah-itm', '12', '12', CURRENT USER, CURRENT TIMESTAMP, 'Bill not available'),
    ('core-syariah-itm', '14', '14', CURRENT USER, CURRENT TIMESTAMP, 'Invalid customer id'),
    ('core-syariah-itm', '15', '15', CURRENT USER, CURRENT TIMESTAMP, 'Rekening belum diaktifkan'),
    ('core-syariah-itm', '17', '17', CURRENT USER, CURRENT TIMESTAMP, 'Blokir Debet'),
    ('core-syariah-itm', '18', '18', CURRENT USER, CURRENT TIMESTAMP, 'Blokir Credit'),
    ('core-syariah-itm', '23', '23', CURRENT USER, CURRENT TIMESTAMP, 'Loan expired'),
    ('core-syariah-itm', '24', '24', CURRENT USER, CURRENT TIMESTAMP, 'Invalid processing code'),
    ('core-syariah-itm', '25', '25', CURRENT USER, CURRENT TIMESTAMP, 'Invalid merchant type'),
    ('core-syariah-itm', '26', '26', CURRENT USER, CURRENT TIMESTAMP, 'Invalid institution code'),
    ('core-syariah-itm', '28', '28', CURRENT USER, CURRENT TIMESTAMP, 'Batas pendebetan perhari'),
    ('core-syariah-itm', '32', '32', CURRENT USER, CURRENT TIMESTAMP, 'Invalid network management information code'),
    ('core-syariah-itm', '40', '40', CURRENT USER, CURRENT TIMESTAMP, 'Transaction is not allowed'),
    ('core-syariah-itm', '43', '43', CURRENT USER, CURRENT TIMESTAMP, 'Invalid/uknown card'),
    ('core-syariah-itm', '48', '48', CURRENT USER, CURRENT TIMESTAMP, 'No Payment'),
    ('core-syariah-itm', '49', '49', CURRENT USER, CURRENT TIMESTAMP, 'No record to reserve'),
    ('core-syariah-itm', '50', '50', CURRENT USER, CURRENT TIMESTAMP, 'Cannot reverse, transaction commited/setted'),
    ('core-syariah-itm', '51', '51', CURRENT USER, CURRENT TIMESTAMP, 'Reversal only can be done for today transaction'),
    ('core-syariah-itm', '54', '54', CURRENT USER, CURRENT TIMESTAMP, 'Bill already pay'),
    ('core-syariah-itm', '59', '59', CURRENT USER, CURRENT TIMESTAMP, 'Invalid transaction amount'),
    ('core-syariah-itm', '82', '82', CURRENT USER, CURRENT TIMESTAMP, 'Core Timeout'),
    ('core-syariah-itm', '83', '83', CURRENT USER, CURRENT TIMESTAMP, 'Core EOD'),
    ('core-syariah-itm', '88', '88', CURRENT USER, CURRENT TIMESTAMP, 'Rekening sudah ditutup'),
    ('core-syariah-itm', '92', '92', CURRENT USER, CURRENT TIMESTAMP, 'No routing available'),
    ('core-syariah-itm', '97', '20', CURRENT USER, CURRENT TIMESTAMP, 'Account closed today'),
    ('core-syariah-itm', '98', '98', CURRENT USER, CURRENT TIMESTAMP, 'Restricted account'),
    ('core-syariah-itm', '99', '99', CURRENT USER, CURRENT TIMESTAMP, 'System error'),
    ('core-syariah-itm', '65', '65', CURRENT USER, CURRENT TIMESTAMP, null),
    ('core-syariah-itm', '04', '04', CURRENT USER, CURRENT TIMESTAMP, 'Pin/tanggal Lahir Salah'),
    ('core-syariah-itm', '68', '68', CURRENT USER, CURRENT TIMESTAMP, null),
    ('core-syariah-itm', '70', '70', CURRENT USER, CURRENT TIMESTAMP, null),
    ('core-syariah-itm', '71', '71', CURRENT USER, CURRENT TIMESTAMP, null),
    ('core-syariah-itm', '72', '72', CURRENT USER, CURRENT TIMESTAMP, null),
    ('core-syariah-itm', '79', '79', CURRENT USER, CURRENT TIMESTAMP, null),
    ('core-syariah-itm', '89', '89', CURRENT USER, CURRENT TIMESTAMP, null),
    ('core-syariah-itm', '90', '90', CURRENT USER, CURRENT TIMESTAMP, null),
    ('core-syariah-itm', '96', '96', CURRENT USER, CURRENT TIMESTAMP, null),
    ('core-syariah-itm', '73', '73', CURRENT USER, CURRENT TIMESTAMP, null);


