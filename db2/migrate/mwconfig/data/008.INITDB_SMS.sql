INSERT INTO MWCONFIG.ADAPTOR (ID, DESCRIPTION, ASYNCHRONOUS, MODIFIED_BY, TIMESTAMP) VALUES 
	('core-sms', 'connector/adaptor untuk CORE SMS', 0, CURRENT USER, CURRENT TIMESTAMP), 
	('sms-10800', 'connector/adaptor untuk ITM', 1, CURRENT USER, CURRENT TIMESTAMP), 
	('sms-10801', 'connector/adaptor untuk ITM', 1, CURRENT USER, CURRENT TIMESTAMP), 
	('sms-10802', 'connector channel core', 1, CURRENT USER, CURRENT TIMESTAMP), 
	('sms-10803', 'connector channel core', 1, CURRENT USER, CURRENT TIMESTAMP), 
	('sms-10804', 'channel sms', 1, CURRENT USER, CURRENT TIMESTAMP), 
	('sms-10805', 'connector channel core', 1, CURRENT USER, CURRENT TIMESTAMP), 
	('sms-10806', 'connector channel sms', 1, CURRENT USER, CURRENT TIMESTAMP), 
	('sms-10807', 'connector channel sms', 1, CURRENT USER, CURRENT TIMESTAMP), 
	('sms-10808', 'connector channel Mobile-AA', 1, CURRENT USER, CURRENT TIMESTAMP), 
	('sms-10809', 'connector channel Mobile-NY', 1, CURRENT USER, CURRENT TIMESTAMP), 
	('sms-10820', 'connector/adaptor untuk ALTO', 1, CURRENT USER, CURRENT TIMESTAMP), 
	('sms-10830', 'connector/adaptor untuk ALTO', 1, CURRENT USER, CURRENT TIMESTAMP), 
	('sms-20800', 'connector channel New Mobile', 1, CURRENT USER, CURRENT TIMESTAMP), 
	('sms-20801', 'connector channel New Mobile', 1, CURRENT USER, CURRENT TIMESTAMP), 
	('sms-20802', 'connector channel New Mobile', 1, CURRENT USER, CURRENT TIMESTAMP), 
	('sms-20803', 'connector channel New Mobile', 1, CURRENT USER, CURRENT TIMESTAMP), 
	('sms-20804', 'connector channel New Mobile', 1, CURRENT USER, CURRENT TIMESTAMP), 
	('sms-20805', 'connector channel New Mobile', 1, CURRENT USER, CURRENT TIMESTAMP), 
	('sms-20806', 'connector channel New Mobile', 1, CURRENT USER, CURRENT TIMESTAMP), 
	('sms-20807', 'connector channel New Mobile', 1, CURRENT USER, CURRENT TIMESTAMP), 
	('sms-20808', 'connector channel New Mobile', 1, CURRENT USER, CURRENT TIMESTAMP), 
	('sms-20809', 'Connector Channel Back Office', 1, CURRENT USER, CURRENT TIMESTAMP), 
	('sms-30800', 'connector channel New Mobile', 1, CURRENT USER, CURRENT TIMESTAMP), 
	('sms-30801', 'connector channel New Mobile', 1, CURRENT USER, CURRENT TIMESTAMP), 
	('sms-30802', 'connector channel New Mobile', 1, CURRENT USER, CURRENT TIMESTAMP), 
	('sms-30803', 'connector channel New Mobile', 1, CURRENT USER, CURRENT TIMESTAMP), 
	('sms-30804', 'connector channel New Mobile', 1, CURRENT USER, CURRENT TIMESTAMP), 
	('sms-30805', 'connector channel New Mobile', 1, CURRENT USER, CURRENT TIMESTAMP), 
	('sms-30806', 'connector channel New Mobile', 1, CURRENT USER, CURRENT TIMESTAMP), 
	('sms-30807', 'connector channel New Mobile', 1, CURRENT USER, CURRENT TIMESTAMP), 
	('sms-30808', 'connector channel New Mobile', 1, CURRENT USER, CURRENT TIMESTAMP), 
	('sms-50801', 'connector channel Xway', 1, CURRENT USER, CURRENT TIMESTAMP), 
	('sms-50802', 'connector channel Xway', 1, CURRENT USER, CURRENT TIMESTAMP), 
	('sms-60802', 'BIS Syariah', 1, CURRENT USER, CURRENT TIMESTAMP);

INSERT INTO MWCONFIG.DTREE(GROUP, PATH, VALUE, MODULE, MODIFIED_BY, TIMESTAMP) VALUES 
	('SMS-CODE', '0200', '0200.${msg.processingCode?.startsWith("1")||msg.processingCode?.startsWith("3")?msg.processingCode?.padLeft(6, "0"):msg.processingCode?.substring(0,2).padRight(6, "0")}', '[smsro]', CURRENT USER, CURRENT TIMESTAMP),
	('SMS-CODE', '0210', '0210.${msg.processingCode?.startsWith("1")||msg.processingCode?.startsWith("3")?msg.processingCode?.padLeft(6, "0"):msg.processingCode?.substring(0,2).padRight(6, "0")}', '[smsro]', CURRENT USER, CURRENT TIMESTAMP),
	('SMS-CODE', '0220', '0220.${msg.processingCode?.startsWith("1")||msg.processingCode?.startsWith("3")?msg.processingCode?.padLeft(6, "0"):msg.processingCode?.substring(0,2).padRight(6, "0")}', '[smsro]', CURRENT USER, CURRENT TIMESTAMP),
	('SMS-CODE', '0230', '0230.${msg.processingCode?.startsWith("1")||msg.processingCode?.startsWith("3")?msg.processingCode?.padLeft(6, "0"):msg.processingCode?.substring(0,2).padRight(6, "0")}', '[smsro]', CURRENT USER, CURRENT TIMESTAMP),
	('SMS-CODE', '0400', '0400.${msg.processingCode?.startsWith("1")||msg.processingCode?.startsWith("3")?msg.processingCode?.padLeft(6, "0"):msg.processingCode?.substring(0,2).padRight(6, "0")}', '[smsro]', CURRENT USER, CURRENT TIMESTAMP),
	('SMS-CODE', '0410', '0410.${msg.processingCode?.startsWith("1")||msg.processingCode?.startsWith("3")?msg.processingCode?.padLeft(6, "0"):msg.processingCode?.substring(0,2).padRight(6, "0")}', '[smsro]', CURRENT USER, CURRENT TIMESTAMP),
	('SMS-CODE', '0420', '0420.${msg.processingCode?.startsWith("1")||msg.processingCode?.startsWith("3")?msg.processingCode?.padLeft(6, "0"):msg.processingCode?.substring(0,2).padRight(6, "0")}', '[smsro]', CURRENT USER, CURRENT TIMESTAMP),
	('SMS-CODE', '0430', '0430.${msg.processingCode?.startsWith("1")||msg.processingCode?.startsWith("3")?msg.processingCode?.padLeft(6, "0"):msg.processingCode?.substring(0,2).padRight(6, "0")}', '[smsro]', CURRENT USER, CURRENT TIMESTAMP),
	('SMS-CODE', '0200.301000', '0200.1.${msg.reservedPrivate3}', '[smsro]', CURRENT USER, CURRENT TIMESTAMP),
	('SMS-CODE', '0200.301010', '0200.1.${msg.reservedPrivate3}', '[smsro]', CURRENT USER, CURRENT TIMESTAMP),
	('SMS-CODE', '0200.301020', '0200.1.${msg.reservedPrivate3}', '[smsro]', CURRENT USER, CURRENT TIMESTAMP),
	('SMS-CODE', '0200.302000', '0200.1.${msg.reservedPrivate3}', '[smsro]', CURRENT USER, CURRENT TIMESTAMP),
	('SMS-CODE', '0200.302010', '0200.1.${msg.reservedPrivate3}', '[smsro]', CURRENT USER, CURRENT TIMESTAMP),
	('SMS-CODE', '0200.302020', '0200.1.${msg.reservedPrivate3}', '[smsro]', CURRENT USER, CURRENT TIMESTAMP),
	('SMS-CODE', '0200.101000', '0200.2.${msg.reservedPrivate3}', '[smsro]', CURRENT USER, CURRENT TIMESTAMP),
	('SMS-CODE', '0200.101010', '0200.2.${msg.reservedPrivate3}', '[smsro]', CURRENT USER, CURRENT TIMESTAMP),
	('SMS-CODE', '0200.101020', '0200.2.${msg.reservedPrivate3}', '[smsro]', CURRENT USER, CURRENT TIMESTAMP),
	('SMS-CODE', '0200.102000', '0200.2.${msg.reservedPrivate3}', '[smsro]', CURRENT USER, CURRENT TIMESTAMP),
	('SMS-CODE', '0200.102010', '0200.2.${msg.reservedPrivate3}', '[smsro]', CURRENT USER, CURRENT TIMESTAMP),
	('SMS-CODE', '0200.102020', '0200.2.${msg.reservedPrivate3}', '[smsro]', CURRENT USER, CURRENT TIMESTAMP),
	('SMS-CODE', '0800', '0800.${msg.networkManagementInformationCode?.padLeft(6, "0")}', '[smsro]', CURRENT USER, CURRENT TIMESTAMP),
	('SMS-CODE', '0810', '0810.${msg.networkManagementInformationCode?.padLeft(6, "0")}', '[smsro]', CURRENT USER, CURRENT TIMESTAMP);


INSERT INTO MWCONFIG.ADAPTOR_CODEX (ADAPTOR_ID, ID, CODEX_ID)
	VALUES 
		('core-sms', 'incoming', 'dsp-response'), 
		('core-sms', 'outgoing', 'dsp'), 
		('sms-10800', 'incoming', 'iso-8583-sms'), 
		('sms-10800', 'outgoing', 'iso-8583-sms'), 
		('sms-10801', 'incoming', 'iso-8583-sms'), 
		('sms-10801', 'outgoing', 'iso-8583-sms'), 
		('sms-10802', 'incoming', 'iso-8583-sms'), 
		('sms-10802', 'outgoing', 'iso-8583-sms'), 
		('sms-10803', 'incoming', 'iso-8583-sms'), 
		('sms-10803', 'outgoing', 'iso-8583-sms'), 
		('sms-10804', 'incoming', 'iso-8583-sms'), 
		('sms-10804', 'outgoing', 'iso-8583-sms'), 
		('sms-10805', 'incoming', 'iso-8583-sms'), 
		('sms-10805', 'outgoing', 'iso-8583-sms'), 
		('sms-10806', 'incoming', 'iso-8583-sms'), 
		('sms-10806', 'outgoing', 'iso-8583-sms'), 
		('sms-10807', 'incoming', 'iso-8583-sms'), 
		('sms-10807', 'outgoing', 'iso-8583-sms'), 
		('sms-10808', 'incoming', 'iso-8583-sms'), 
		('sms-10808', 'outgoing', 'iso-8583-sms'), 
		('sms-10809', 'incoming', 'iso-8583-sms'), 
		('sms-10809', 'outgoing', 'iso-8583-sms'), 
		('sms-10820', 'incoming', 'iso-8583-sms'), 
		('sms-10820', 'outgoing', 'iso-8583-sms'), 
		('sms-10830', 'incoming', 'iso-8583-sms'), 
		('sms-10830', 'outgoing', 'iso-8583-sms'), 
		('sms-20800', 'incoming', 'iso-8583-sms'), 
		('sms-20800', 'outgoing', 'iso-8583-sms'), 
		('sms-20801', 'incoming', 'iso-8583-sms'), 
		('sms-20801', 'outgoing', 'iso-8583-sms'), 
		('sms-20802', 'incoming', 'iso-8583-sms'), 
		('sms-20802', 'outgoing', 'iso-8583-sms'), 
		('sms-20803', 'incoming', 'iso-8583-sms'), 
		('sms-20803', 'outgoing', 'iso-8583-sms'), 
		('sms-20804', 'incoming', 'iso-8583-sms'), 
		('sms-20804', 'outgoing', 'iso-8583-sms'), 
		('sms-20805', 'incoming', 'iso-8583-sms'), 
		('sms-20805', 'outgoing', 'iso-8583-sms'), 
		('sms-20806', 'incoming', 'iso-8583-sms'), 
		('sms-20806', 'outgoing', 'iso-8583-sms'), 
		('sms-20807', 'incoming', 'iso-8583-sms'), 
		('sms-20807', 'outgoing', 'iso-8583-sms'), 
		('sms-20808', 'incoming', 'iso-8583-sms'), 
		('sms-20808', 'outgoing', 'iso-8583-sms'), 
		('sms-20809', 'incoming', 'iso-8583-sms'), 
		('sms-20809', 'outgoing', 'iso-8583-sms'), 
		('sms-30800', 'incoming', 'iso-8583-sms'), 
		('sms-30800', 'outgoing', 'iso-8583-sms'), 
		('sms-30801', 'incoming', 'iso-8583-sms'), 
		('sms-30801', 'outgoing', 'iso-8583-sms'), 
		('sms-30802', 'incoming', 'iso-8583-sms'), 
		('sms-30802', 'outgoing', 'iso-8583-sms'), 
		('sms-30803', 'incoming', 'iso-8583-sms'), 
		('sms-30803', 'outgoing', 'iso-8583-sms'), 
		('sms-30804', 'incoming', 'iso-8583-sms'), 
		('sms-30804', 'outgoing', 'iso-8583-sms'), 
		('sms-30805', 'incoming', 'iso-8583-sms'), 
		('sms-30805', 'outgoing', 'iso-8583-sms'), 
		('sms-30806', 'incoming', 'iso-8583-sms'), 
		('sms-30806', 'outgoing', 'iso-8583-sms'), 
		('sms-30807', 'incoming', 'iso-8583-sms'), 
		('sms-30807', 'outgoing', 'iso-8583-sms'), 
		('sms-30808', 'incoming', 'iso-8583-sms'), 
		('sms-30808', 'outgoing', 'iso-8583-sms'), 
		('sms-50801', 'incoming', 'iso-8583-sms'), 
		('sms-50801', 'outgoing', 'iso-8583-sms'), 
		('sms-50802', 'incoming', 'iso-8583-sms'), 
		('sms-50802', 'outgoing', 'iso-8583-sms'), 
		('sms-60802', 'incoming', 'iso-8583-sms'), 
		('sms-60802', 'outgoing', 'iso-8583-sms');

INSERT INTO MWCONFIG.ADAPTOR_PARAM (ADAPTOR_ID, NAME, VALUE)
	VALUES 
		('core-sms', 'closeOnReply', 'true'), 
		('core-sms', 'maxConnection', '100'), 
		('core-sms', 'timeout', '15000'), 
		('sms-10800', 'maxConnection', '1'), 
		('sms-10801', 'maxConnection', '1'), 
		('sms-10802', 'maxConnection', '1'), 
		('sms-10803', 'maxConnection', '1'), 
		('sms-10804', 'maxConnection', '1'), 
		('sms-10805', 'maxConnection', '1'), 
		('sms-10806', 'maxConnection', '1'), 
		('sms-10807', 'maxConnection', '1'), 
		('sms-10808', 'maxConnection', '1'), 
		('sms-10809', 'maxConnection', '1'), 
		('sms-10820', 'maxConnection', '1'), 
		('sms-10830', 'maxConnection', '1'), 
		('sms-20800', 'maxConnection', '1'), 
		('sms-20801', 'maxConnection', '1'), 
		('sms-20802', 'maxConnection', '1'), 
		('sms-20803', 'maxConnection', '1'), 
		('sms-20804', 'maxConnection', '1'), 
		('sms-20805', 'maxConnection', '1'), 
		('sms-20806', 'maxConnection', '1'), 
		('sms-20807', 'maxConnection', '1'), 
		('sms-20808', 'maxConnection', '1'), 
		('sms-20809', 'maxConnection', '1'), 
		('sms-30800', 'maxConnection', '1'), 
		('sms-30801', 'maxConnection', '1'), 
		('sms-30802', 'maxConnection', '1'), 
		('sms-30803', 'maxConnection', '1'), 
		('sms-30804', 'maxConnection', '1'), 
		('sms-30805', 'maxConnection', '1'), 
		('sms-30806', 'maxConnection', '1'), 
		('sms-30807', 'maxConnection', '1'), 
		('sms-30808', 'maxConnection', '1'), 
		('sms-50801', 'maxConnection', '1'), 
		('sms-50802', 'maxConnection', '1'), 
		('sms-60802', 'maxConnection', '1');

INSERT INTO MWCONFIG.SERVER_PORT (ADAPTOR_ID, PORT, SERVER, GROUP)
	VALUES 
		('sms-10800', 10800, 'server-1', 'sms'), 
		('sms-10801', 10801, 'server-1', 'sms'), 
		('sms-10802', 10802, 'server-1', 'sms'), 
		('sms-10803', 10803, 'server-1', 'sms'), 
		('sms-10804', 10804, 'server-1', 'sms'), 
		('sms-10805', 10805, 'server-1', 'sms'), 
		('sms-10806', 10806, 'server-1', 'sms'), 
		('sms-10807', 10807, 'server-1', 'sms'), 
		('sms-10808', 10808, 'server-1', 'sms'), 
		('sms-10809', 10809, 'server-1', 'sms'), 
		('sms-10820', 10820, 'server-1', 'sms'), 
		('sms-10830', 10830, 'server-1', 'sms'), 
		('sms-20800', 20800, 'server-1', 'sms'), 
		('sms-20801', 20801, 'server-1', 'sms'), 
		('sms-20802', 20802, 'server-1', 'sms'), 
		('sms-20803', 20803, 'server-1', 'sms'), 
		('sms-20804', 20804, 'server-1', 'sms'), 
		('sms-20805', 20805, 'server-1', 'sms'), 
		('sms-20806', 20806, 'server-1', 'sms'), 
		('sms-20807', 20807, 'server-1', 'sms'), 
		('sms-20808', 20808, 'server-1', 'sms'), 
		('sms-20809', 20809, 'server-1', 'sms'), 
		('sms-30800', 30800, 'server-1', 'sms'), 
		('sms-30801', 30801, 'server-1', 'sms'), 
		('sms-30802', 30802, 'server-1', 'sms'), 
		('sms-30803', 30803, 'server-1', 'sms'), 
		('sms-30804', 30804, 'server-1', 'sms'), 
		('sms-30805', 30805, 'server-1', 'sms'), 
		('sms-30806', 30806, 'server-1', 'sms'), 
		('sms-30807', 30807, 'server-1', 'sms'), 
		('sms-30808', 30808, 'server-1', 'sms'), 
		('sms-50801', 50801, 'server-1', 'sms'), 
		('sms-50802', 50802, 'server-1', 'sms'), 
		('sms-60802', 60802, 'server-1', 'sms');

INSERT INTO MWCONFIG.CLIENT (ADAPTOR_ID, IDLE_WAIT, KEEP_CONN, NODE)
	VALUES ('core-sms', 30000, 0, 'core-client');

INSERT INTO MWCONFIG.CLIENT_TARGET (CLIENT_ID, ID, HOST, SEQ)
	VALUES ('core-sms', 'core-sms', 'BTNCOREKONVEN:13000', 1);

INSERT INTO MWCONFIG.ROUTING_TABLE (CODE_START, CODE_END, CHANNEL, START_DATE, QUEUE, STATUS, CREATE_BY, CREATE_DATE)
	VALUES 
		('0800.000000', '0800.999999', 'sms', CURRENT TIMESTAMP, 'ISO_NETWORK_IN', 'ACTIVE', CURRENT USER, CURRENT TIMESTAMP), 
		('*', '*', 'sms', CURRENT TIMESTAMP, 'MDW_IN', 'ACTIVE', CURRENT USER, CURRENT TIMESTAMP);

INSERT INTO MWCONFIG.DEV_TELLER_MAP (GROUP, DEVICE_ID, DEVICE_NAME, TERMINAL_ID, TERMINAL_IP, TELLER_ID, CTRL_UNIT_ID, TIMESTAMP, MODIFIED_BY)
	VALUES 
		('sms', 'ALTO', 'ALTO', 'ALTO', '10.126.205.18', '9921999', 'I99', CURRENT TIMESTAMP, CURRENT USER);

INSERT INTO MWCONFIG.ERROR_MAP (GROUP, ORIGINAL, TARGET, DETAIL, MODIFIED_BY, TIMESTAMP)
	VALUES 
		('core-sms', '996', '81', 'Failed to connect to core', CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '253', 'CE', 'Not authorized to transaction', CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '001', '01', 'Account number not found   ', CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '005', '02', 'Saldo Anda tidak mencukupi', CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '006', '03', 'Rekening Baru', CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '007', '20', 'Rekening sudah ditutup', CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '008', '97', 'Rekening pasif', CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '009', '98', 'Restricted account', CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '010', '78', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '011', '08', 'Cetak buku tabungan dulu', CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '014', '02', 'Saldo Anda tidak mencukupi', CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '016', '02', 'Transaksi > Saldo ', CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '017', '78', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '022', '11', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '033', '16', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '034', '90', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '048', '20', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '062', '10', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '063', '23', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '065', '24', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '072', '24', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '081', '28', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '082', '29', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '085', '85', '', CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '086', '09', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '090', '15', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '092', '33', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '101', '34', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '102', '17', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '104', '18', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '106', '37', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '120', '38', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '123', '88', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '135', '38', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '141', '41', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '142', '21', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '151', '40', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '162', '28', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '173', '25', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '176', '43', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '177', '44', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '178', '91', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '180', '45', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '182', '46', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '185', '47', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '186', '48', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '189', '49', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '190', '50', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '191', '51', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '192', '52', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '193', '53', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '194', '54', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '195', '55', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '217', '02', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '218', '58', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '219', '58', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '234', '59', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '243', '60', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '248', '40', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '262', '79', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '268', '88', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '272', '80', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '279', '68', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '283', '64', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '371', '14', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '378', '54', '', CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '997', '82', null, CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '998', '83', '', CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '370', '99', '', CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '000', '00', 'Account number not found   ', CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '303', 'IF', 'Remit group already exists', CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '264', 'AB', 'Currency discrepancy', CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '422', 'AA', 'Tabungan Investa not Allowed', CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '41 43', '99', 'General Error', CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '426', 'SA', 'Cif tidak sesuai', CURRENT USER, CURRENT TIMESTAMP),
		('core-sms', '269', '69', 'Account in use by other teller', CURRENT USER, CURRENT TIMESTAMP);


INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES ('sms-network-res', NULL, CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) 
	VALUES 
		('sms-network-res', 1, '/data', '/data', NULL, NULL),
		('sms-network-res', 2, '/data/body', '/data/body', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT)
	VALUES 
		('sms-network-res', 1, '@', 'copyMessage();'),
		('sms-network-res', 1, 'connid', '${null}'),
		('sms-network-res', 1, 'mid', '${null}'),
		('sms-network-res', 1, 'nolog', 'true'),
		('sms-network-res', 1, 'sid', '${null}'),
		('sms-network-res', 2, 'messageType', '${msg.messageType.''!value''.substring(0,2).concat("10")}'),
		('sms-network-res', 2, 'responseCode', '00');

INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES ('req-core.sms', '[izzit][iwswc]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES ('req-core.sms', 1, '/data/body', '/data/body', 'dsp', 1);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) 
VALUES 
	('req-core.sms', 1, 'tellerComplete', '${getParamValue("device_teller_map", head.group."!value".trim() + "_" + msg.cardAcceptorTerminalIdentification."!value".trim(), "|||| ")}', 10),
	('req-core.sms', 1, '@', 'copyMessageToChild("original");', NULL), 
	('req-core.sms', 1, '!code', '${"AXISSYSTEMSDNBHD."+tar.dspTransactionCode}', 20),
	('req-core.sms', 1, '!destination', 'core-itm', NULL),
	('req-core.sms', 1, '!mappingCode', '${head.code}', NULL),
	('req-core.sms', 1, '!queueName', 'CORE_IN', NULL),
	('req-core.sms', 1, 'dspHeaderType', '*HOST', NULL),
	('req-core.sms', 1, 'dspDeviceName', '${tar.tellerComplete."!value".split("\\|", -1)[3]}', NULL),
	('req-core.sms', 1, 'dspFiller1', 'F0', NULL),
	('req-core.sms', 1, 'dspVersionNumber', '0000', NULL),
	('req-core.sms', 1, 'dspDataFormatId', 'ABCS', NULL),
	('req-core.sms', 1, 'dspSourceId', '*AXIS', NULL),
	('req-core.sms', 1, 'dspBankIdNumber', '00000000000', NULL),
	('req-core.sms', 1, 'dspNode', '00', NULL),
	('req-core.sms', 1, 'dspExchangeId', '4040404040404040404040404040404040404040', NULL),
	('req-core.sms', 1, 'dspScenarioNumber', 'AXISSYSTEMSDNBHD', NULL),
	('req-core.sms', 1, 'dspTransactionCode', '5001', 10),
	('req-core.sms', 1, 'dspUserId', '${tar.tellerComplete."!value".split("\\|", -1)[0]}', NULL),
	('req-core.sms', 1, 'dspTerminalId', '${tar.tellerComplete."!value".split("\\|", -1)[1]}', NULL),
	('req-core.sms', 1, 'ICLEN', '1020', NULL),
	('req-core.sms', 1, 'ICHEAD', '*MOSA', NULL),
	('req-core.sms', 1, 'ICDEVN', '${tar.tellerComplete."!value".split("\\|", -1)[3]}', NULL),
	('req-core.sms', 1, 'ICID', '00000', NULL),
	('req-core.sms', 1, 'TMTIMIN', '000000', NULL),
	('req-core.sms', 1, 'TMTXTYP', 'T9999', NULL),
	('req-core.sms', 1, 'ICEOM', '*EOM', NULL),
	('req-core.sms', 1, 'TLBCUD', '${tar.tellerComplete."!value".split("\\|", -1)[2]}', NULL),
	('req-core.sms', 1, 'TLBWS', 'ES', NULL),
	('req-core.sms', 1, 'TLBFP3', 'FF', NULL),
	('req-core.sms', 1, 'TLBID', '${tar.tellerComplete."!value".split("\\|", -1)[0]}', NULL),
	('req-core.sms', 1, 'TLBTCD', '${tar.dspTransactionCode}', 20),
	('req-core.sms', 1, 'TLBTDT', '${msg.transmissionDateTime."!value".substring(2,4)+msg.transmissionDateTime."!value".substring(0,2)+new java.text.SimpleDateFormat("yy").format(new Date())}', NULL),
	('req-core.sms', 1, 'TLBWC1', '00', NULL),
	('req-core.sms', 1, 'TLBWC2', '00', NULL),
	('req-core.sms', 1, 'TLBJSN', '${msg.systemsTraceAuditNumber}', NULL),
	('req-core.sms', 1, 'TLBJC1', '00', NULL),
	('req-core.sms', 1, 'TLBJC2', '00', NULL),
	('req-core.sms', 1, 'TLBFP1', 'FF', NULL),
	('req-core.sms', 1, 'TLBFP2', 'FC', NULL),
	('req-core.sms', 1, 'TLBCUR', 'IDR', NULL),
	('req-core.sms', 1, 'TLBCIF', '${msg.timeLocalTransaction}', NULL),
	('req-core.sms', 1, 'TLCUR1', 'IDR', NULL),
	('req-core.sms', 1, 'TLXUFD', 'ATM', NULL),
	('req-core.sms', 1, 'TLBDS1', '${msg.timeLocalTransaction."!value"+msg.dateLocalTransaction."!value"+msg.acquiringInstitutionIdentificationCode."!value".padRight(11," ")+msg.merchantType."!value".padRight(4, " ")+msg.retrievalReferenceNumber."!value".padRight(12," ")}', NULL),
	('req-core.sms', 1, 'RMAPID', '${msg.retrievalReferenceNumber}${new java.text.SimpleDateFormat("yy").format(new Date())+msg.dateLocalTransaction."!value"}${msg.timeLocalTransaction}', NULL),
	('req-core.sms', 1, 'RMADD3', '${(msg.track2Data==null||msg.track2Data."!value"==null?"":msg.track2Data."!value").padRight(37," ")}', NULL),
	('req-core.sms', 1, 'RMPSTC', '${new java.text.SimpleDateFormat("yyyy").format(new Date())+msg.dateLocalTransaction."!value"}', NULL),
	('req-core.sms', 1, 'RMSEHS', '${msg.dateLocalTransaction}', NULL),
	('req-core.sms', 1, 'TLBFIL', '${msg.cardAcceptorTerminalIdentification."!value"+msg.retrievalReferenceNumber."!value".padRight(12," ")+msg.acquiringInstitutionIdentificationCode."!value".padRight(11," ")}', NULL);

INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES ('res-core.sms', '[izzit]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET) VALUES ('res-core.sms', 1, '/data/body', '/data/body');
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ)
VALUES ('res-core.sms', 1, '@', 'copyMessage("../body", "request/data/body/original")', 10),
	   ('res-core.sms', 1, '!connid', '${head.connid}', 20),
	   ('res-core.sms', 1, '!CorrelId', '${head.CorrelId}', 20),
	   ('res-core.sms', 1, '!group', '${head.request.data.group}', 20),
	   ('res-core.sms', 1, '!mid', '${head.request.data.mid}', 20),
	   ('res-core.sms', 1, '!reqtimestamp', '${head.reqtimestamp}', 20),
	   ('res-core.sms', 1, '!sid', '${head.sid}', 20),
	   ('res-core.sms', 1, '!source', '${head.request.data.source}', 20),
	   ('res-core.sms', 1, '!timestamp', '${head.timestamp}', 20),
	   ('res-core.sms', 1, 'primaryAccountNumber', '${head.request.data.body.original.primaryAccountNumber}', 20),
	   ('res-core.sms', 1, 'processingCode', '${head.request.data.body.original.processingCode}', 20),
	   ('res-core.sms', 1, 'amountTransaction', '${head.request.data.body.original.amountTransaction}', 20),
	   ('res-core.sms', 1, 'amountCardholderBilling', '${head.request.data.body.original.amountCardholderBilling}', 20),
	   ('res-core.sms', 1, 'transmissionDateTime', '${head.request.data.body.original.transmissionDateTime}', 20),
	   ('res-core.sms', 1, 'conversionRateCardholderBilling', '${head.request.data.body.original.conversionRateCardholderBilling}', 20),
	   ('res-core.sms', 1, 'systemsTraceAuditNumber', '${head.request.data.body.original.systemsTraceAuditNumber}', 20),
	   ('res-core.sms', 1, 'timeLocalTransaction', '${head.request.data.body.original.timeLocalTransaction}', 20),
	   ('res-core.sms', 1, 'dateLocalTransaction', '${head.request.data.body.original.dateLocalTransaction}', 20),
	   ('res-core.sms', 1, 'dateCapture', '${head.request.data.body.original.dateCapture}', 20),
	   ('res-core.sms', 1, 'merchantType', '${head.request.data.body.original.merchantType}', 20),
	   ('res-core.sms', 1, 'amountTransactionFee', '${head.request.data.body.original.amountTransactionFee}', 20),
	   ('res-core.sms', 1, 'acquiringInstitutionIdentificationCode', '${head.request.data.body.original.acquiringInstitutionIdentificationCode}', 20),
	   ('res-core.sms', 1, 'forwardingInstitutionIdentificationCode', '${head.request.data.body.original.forwardingInstitutionIdentificationCode}', 20),
	   ('res-core.sms', 1, 'track2Data', '${head.request.data.body.original.track2Data}', 20),
	   ('res-core.sms', 1, 'retrievalReferenceNumber', '${head.request.data.body.original.retrievalReferenceNumber}', 20),
	   ('res-core.sms', 1, 'responseCode', '00', 20),
	   ('res-core.sms', 1, 'cardAcceptorTerminalIdentification', '${head.request.data.body.original.cardAcceptorTerminalIdentification}', 20),
	   ('res-core.sms', 1, 'cardAcceptorIdentificationCode', '${head.request.data.body.original.cardAcceptorIdentificationCode}', 20),
	   ('res-core.sms', 1, 'cardAcceptorName', '${head.request.data.body.original.cardAcceptorName}', 20),
	   ('res-core.sms', 1, 'additionalDataPrivate', '${head.request.data.body.original.additionalDataPrivate}', 20),
	   ('res-core.sms', 1, 'currencyCodeTransaction', '${head.request.data.body.original.currencyCodeTransaction}', 20),
	   ('res-core.sms', 1, 'reasonCode', '${head.request.data.body.original.reasonCode}', 20),
	   ('res-core.sms', 1, 'reservedPrivate1', '${head.request.data.body.original.reservedPrivate1}', 20),
	   ('res-core.sms', 1, 'reservedPrivate2', '${head.request.data.body.original.reservedPrivate2}', 20),
	   ('res-core.sms', 1, 'receivingInstitutionIdentificationCode', '${head.request.data.body.original.receivingInstitutionIdentificationCode}', 20),
	   ('res-core.sms', 1, 'fromAccount', '${head.request.data.body.original.fromAccount}', 20),
	   ('res-core.sms', 1, 'toAccount', '${head.request.data.body.original.toAccount}', 20),
	   ('res-core.sms', 1, 'reservedForPrivateUse1', '${head.request.data.body.original.reservedForPrivateUse1}', 20),
	   ('res-core.sms', 1, 'networkManagementInformation', '${head.request.data.body.original.networkManagementInformation}', 20),
	   ('res-core.sms', 1, 'reservedForPrivateUse', '${head.request.data.body.original.reservedForPrivateUse}', 20);

INSERT INTO MWCONFIG.MAPPING(ID, MODIFIED_BY, TIMESTAMP, MODULE) 
VALUES  ('req-core.sms.multiple-master.konven', CURRENT USER, CURRENT TIMESTAMP, '[smsd]');
INSERT INTO MWCONFIG.MAPPING_GROUP(MAPPING_ID, ID, "SOURCE", TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) 
VALUES  ('req-core.sms.multiple-master.konven', 1, '/data/body', '/data/body', null, null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE(MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) 
VALUES  ('req-core.sms.multiple-master.konven', 1, '!connid', '${null}', null),
        ('req-core.sms.multiple-master.konven', 1, '!destination', 'core-sms', null),
        ('req-core.sms.multiple-master.konven', 1, '!group', '${head.request.data.group}', null),
        ('req-core.sms.multiple-master.konven', 1, '!mappingCode', '${head.request.data.mappingCode}', null),
        ('req-core.sms.multiple-master.konven', 1, '!mid', '${head.mid}', null),
        ('req-core.sms.multiple-master.konven', 1, '!queueName', 'CORE_IN', null),
        ('req-core.sms.multiple-master.konven', 1, '!remaining', 'AAA=', null),
        ('req-core.sms.multiple-master.konven', 1, '!remainingPos', '1268', null),
        ('req-core.sms.multiple-master.konven', 1, '!reqtimestamp', '${head.request.data.reqtimestamp}', null),
        ('req-core.sms.multiple-master.konven', 1, '!sid', '${head.sid}', null),
        ('req-core.sms.multiple-master.konven', 1, '!source', '${head.request.data.source}', null),
        ('req-core.sms.multiple-master.konven', 1, '!timestamp', '${head.request.data.reqtimestamp}', null),
        ('req-core.sms.multiple-master.konven', 1, '!type', 'dsp', null),
        ('req-core.sms.multiple-master.konven', 1, '@', 'copyMessage("original", "request/data/body/original");copyMessage("../original1", ".");', null),
        ('req-core.sms.multiple-master.konven', 1, 'dspTransactionCode', '${getParamValue("sms-konven-code", "0200."+head.body.processingCode ."!value"+"."+head.body.reservedPrivate2."!value", "0000")}', 10),
        ('req-core.sms.multiple-master.konven', 1, '!code', '${"AXISSYSTEMSDNBHD."+tar.dspTransactionCode}', 20),
        ('req-core.sms.multiple-master.konven', 1, 'TLBTCD', '${tar.dspTransactionCode}', 20),
        ('req-core.sms.multiple-master.konven', 1, 'dspBankIdNumber', '00000000000', null),
        ('req-core.sms.multiple-master.konven', 1, 'dspDataFormatId', 'ABCS', null),
        ('req-core.sms.multiple-master.konven', 1, 'dspDeviceName', '${tar.tellerComplete."!value".split("\\|", -1)[3]}', 20),
        ('req-core.sms.multiple-master.konven', 1, 'dspExchangeId', '4040404040404040404040404040404040404040', null),
        ('req-core.sms.multiple-master.konven', 1, 'dspFiller1', 'F0', null),
        ('req-core.sms.multiple-master.konven', 1, 'dspHeaderType', '*HOST', null),
        ('req-core.sms.multiple-master.konven', 1, 'dspNode', '00', null),
        ('req-core.sms.multiple-master.konven', 1, 'dspScenarioNumber', 'AXISSYSTEMSDNBHD', null),
        ('req-core.sms.multiple-master.konven', 1, 'dspSourceId', '*AXIS', null),
        ('req-core.sms.multiple-master.konven', 1, 'dspTerminalId', '${tar.tellerComplete."!value".split("\\|", -1)[1]}', 20),
        ('req-core.sms.multiple-master.konven', 1, 'dspUserId', '${tar.tellerComplete."!value".split("\\|", -1)[0]}', 20),
        ('req-core.sms.multiple-master.konven', 1, 'dspVersionNumber', '0000', null),
        ('req-core.sms.multiple-master.konven', 1, 'fullReverse', 'true', null),
        ('req-core.sms.multiple-master.konven', 1, 'isMultipleRequest', '${null}', null),
        ('req-core.sms.multiple-master.konven', 1, 'ICDEVN', '${tar.tellerComplete."!value".split("\\|", -1)[3]}', 20),
        ('req-core.sms.multiple-master.konven', 1, 'ICEOM', '*EOM', null),
        ('req-core.sms.multiple-master.konven', 1, 'ICHEAD', '*MOSA', null),
        ('req-core.sms.multiple-master.konven', 1, 'ICID', '00000', null),
        ('req-core.sms.multiple-master.konven', 1, 'ICLEN', '1020', null),
        ('req-core.sms.multiple-master.konven', 1, 'RMADD3', '${(head.request.data.body.original.track2Data==null||head.request.data.body.original.track2Data."!value"==null?"":head.request.data.body.original.track2Data."!value").padRight(37," ")}', null),
        ('req-core.sms.multiple-master.konven', 1, 'RMAPID', '${head.request.data.body.original.retrievalReferenceNumber}${new java.text.SimpleDateFormat("yy").format(new Date())+head.request.data.body.original.dateLocalTransaction."!value"}${head.request.data.body.original.timeLocalTransaction}', null),
        ('req-core.sms.multiple-master.konven', 1, 'RMPSTC', '${new java.text.SimpleDateFormat("yyyy").format(new Date())+head.request.data.body.original.dateLocalTransaction."!value"}', null),
        ('req-core.sms.multiple-master.konven', 1, 'RMSEHS', '${msg.dateLocalTransaction}', null),
        ('req-core.sms.multiple-master.konven', 1, 'tellerComplete', '${getParamValue("device_teller_map", head.request.data.group."!value".trim() + "_" + "13000006", "|||| ")}', 10),
        ('req-core.sms.multiple-master.konven', 1, 'TLBCIF', '${head.request.data.body.original.timeLocalTransaction}', null),
        ('req-core.sms.multiple-master.konven', 1, 'TLBCUD', '${tar.tellerComplete."!value".split("\\|", -1)[2]}', 20),
        ('req-core.sms.multiple-master.konven', 1, 'TLBCUR', 'IDR', null),
        ('req-core.sms.multiple-master.konven', 1, 'TLBDS1', '${head.request.data.body.original.timeLocalTransaction."!value"+head.request.data.body.original.dateLocalTransaction."!value"+head.request.data.body.original.acquiringInstitutionIdentificationCode."!value".padRight(11," ")+head.request.data.body.original.merchantType."!value".padRight(4, " ")+head.request.data.body.original.retrievalReferenceNumber."!value".padRight(12," ")}', null),
        ('req-core.sms.multiple-master.konven', 1, 'TLBFIL', '${head.request.data.body.original.cardAcceptorTerminalIdentification."!value"+head.request.data.body.original.retrievalReferenceNumber."!value".padRight(12," ")+head.request.data.body.original.acquiringInstitutionIdentificationCode."!value".padRight(11," ")}', null),
        ('req-core.sms.multiple-master.konven', 1, 'TLBFP1', 'FF', null),
        ('req-core.sms.multiple-master.konven', 1, 'TLBFP2', 'FC', null),
        ('req-core.sms.multiple-master.konven', 1, 'TLBFP3', 'FF', null),
        ('req-core.sms.multiple-master.konven', 1, 'TLBID', '${tar.tellerComplete."!value".split("\\|", -1)[0]}', 20),
        ('req-core.sms.multiple-master.konven', 1, 'TLBJC1', '00', null),
        ('req-core.sms.multiple-master.konven', 1, 'TLBJC2', '00', null),
        ('req-core.sms.multiple-master.konven', 1, 'TLBJSN', '${head.request.data.body.original.systemsTraceAuditNumber}', null),
        ('req-core.sms.multiple-master.konven', 1, 'TLBTDT', '${head.request.data.body.original.transmissionDateTime."!value".substring(2,4)+head.request.data.body.original.transmissionDateTime."!value".substring(0,2)+new java.text.SimpleDateFormat("yy").format(new Date())}', null),
        ('req-core.sms.multiple-master.konven', 1, 'TLBWC1', '00', null),
        ('req-core.sms.multiple-master.konven', 1, 'TLBWC2', '00', null),
        ('req-core.sms.multiple-master.konven', 1, 'TLBWS', 'ES', null),
        ('req-core.sms.multiple-master.konven', 1, 'TLCUR1', 'IDR', null),
        ('req-core.sms.multiple-master.konven', 1, 'TLXUFD', 'SMS', null),
        ('req-core.sms.multiple-master.konven', 1, 'TMTIMIN', '000000', null),
        ('req-core.sms.multiple-master.konven', 1, 'TMTXTYP', 'T9999', null),
        ('req-core.sms.multiple-master.konven', 1, 'RMUSRI', '${head.request.data.body.original.reservedIso2}', null),
        ('req-core.sms.multiple-master.konven', 1, 'TLBTPN', '${tar.tellerComplete."!value".split("\\|", -1)[0].padRight(7," ")}${head.request.data.body.original.reservedIso2."!value".padRight(14," ")}${head.request.data.body.original.retrievalReferenceNumber."!value".padRight(12," ")}', 99);


INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES ('res-core.sms.0200', '[izzit]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES ('res-core.sms.0200', 1, '/data/body', '/data/body', 'res-core.sms', 1);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ)
VALUES ('res-core.sms.0200', 1, 'messageType', '0210', 10),
	   ('res-core.sms.0200', 1, '!code', '${tar.messageType."!value"+"."+tar.processingCode."!value"}', 20);

INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES ('res-core.sms.error', '[izzit]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES ('res-core.sms.error', 1, '/data/body', '/data/body', 'res-core.sms', 1);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT)
VALUES ('res-core.sms.error', 1, '!error', '${head.error}'),
	   ('res-core.sms.error', 1, '!errorDetail', '${head.errorDetail}'),
	   ('res-core.sms.error', 1, 'responseCode', '${getParamValue("error_map|".concat(head.adaptor==null?head.destination."!value":head.adaptor."!value"), msg.responseCode."!value", "99")}');

INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES ('res-core.sms.0200.error', '[izzit]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES ('res-core.sms.0200.error', 1, '/data/body', '/data/body', 'res-core.sms.error', 1);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ)
VALUES ('res-core.sms.0200.error', 1, 'messageType', '0210', 10),
	   ('res-core.sms.0200.error', 1, '!code', '${tar.messageType."!value"+"."+tar.processingCode."!value"}', 20);

INSERT INTO MWCONFIG.RELOADTS(BROKER, EXECUTIONGROUP, MODIFIED_BY, TIMESTAMP, TYPE) 
VALUES 	('SMSBROKER', 'SMS', CURRENT USER, CURRENT TIMESTAMP, 'codex'), 
		('SMSBROKER', 'SMS', CURRENT USER, CURRENT TIMESTAMP, 'db'), 
		('SMSBROKER', 'SMS', CURRENT USER, CURRENT TIMESTAMP, 'mapping'), 
		('SMSBROKER', 'SMS', CURRENT USER, CURRENT TIMESTAMP, 'param'), 
		('SMSBROKER', 'SMS', CURRENT USER, CURRENT TIMESTAMP, 'parser'), 
		('SMSBROKER', 'SMS', CURRENT USER, CURRENT TIMESTAMP, 'port'), 
		('SMSBROKER', 'SMS', CURRENT USER, CURRENT TIMESTAMP, 'routing'), 
		('SMSBROKER', 'SMS', CURRENT USER, CURRENT TIMESTAMP, 'rpg'), 
		('SMSBROKER', 'SMSMDW', CURRENT USER, CURRENT TIMESTAMP, 'codex'), 
		('SMSBROKER', 'SMSMDW1', CURRENT USER, CURRENT TIMESTAMP, 'mapping'), 
		('SMSBROKER', 'SMSMDW1', CURRENT USER, CURRENT TIMESTAMP, 'param');


INSERT INTO MWCONFIG.MAPPING(ID, DESCRIPTION, MODIFIED_BY, TIMESTAMP, MODULE) VALUES ('resp-ln.sms', null, CURRENT USER, CURRENT TIMESTAMP, '[sms]');
INSERT INTO MWCONFIG.MAPPING_GROUP(MAPPING_ID, ID, "SOURCE", TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) 
VALUES	('resp-ln.sms', 1, '/data', '/data', null, null),
		('resp-ln.sms', 2, '/data/body', '/data/body', null, null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE(MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) 
VALUES 	('resp-ln.sms', 1, '@', 'copyMessage()', 1),
		('resp-ln.sms', 2, 'messageType', '0210', 1),
		('resp-ln.sms', 2, 'responseCode', '89', 2);

INSERT INTO MWCONFIG.MAPPING(ID, DESCRIPTION, MODIFIED_BY, TIMESTAMP, MODULE) VALUES ('checkRepeat', '', CURRENT USER, CURRENT TIMESTAMP, '[sms]');
INSERT INTO MWCONFIG.MAPPING_GROUP(MAPPING_ID, ID, "SOURCE", TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES ('checkRepeat', 1, '/data', '/data', null, null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE(MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ)
VALUES 	('checkRepeat', 1, '@', 'copyMessage()', null),
		('checkRepeat', 1, 'isRepeat', '${getParamValue("isRepeat."+msg.source."!value",  head.body.messageType."!value"+"."+head.body.responseCode."!value","no")}', null);


INSERT INTO MWCONFIG.PARAM_MAP("GROUP", NAME, "VALUE", SEQ, MODIFIED_BY, TIMESTAMP, DESCRIPTION) 
VALUES 	('isRepeat.itm-conn', '0210.68', 'repeat', null, CURRENT USER, CURRENT TIMESTAMP, null),
		('isRepeat.itm-conn', '0410.68', 'repeat', null, CURRENT USER, CURRENT TIMESTAMP, null);



INSERT INTO MWCONFIG.PARAM_MAP("GROUP", NAME, "VALUE", SEQ, MODIFIED_BY, TIMESTAMP, DESCRIPTION) VALUES
	('core-response-ok', 'AXISSYSTEMSDNBHD.0000005412', 'F1', null, CURRENT USER, CURRENT TIMESTAMP, null),
	('core-response-ok', 'AXISSYSTEMSDNBHD.0000007029', 'F1', null, CURRENT USER, CURRENT TIMESTAMP, null),
	('core-response-ok', 'AXISSYSTEMSDNBHD.0000007109', 'F1', null, CURRENT USER, CURRENT TIMESTAMP, null),
	('core-response-ok', 'AXISSYSTEMSDNBHD.0000007030', 'F1', null, CURRENT USER, CURRENT TIMESTAMP, null);

INSERT INTO MWCONFIG.MAPPING(ID, DESCRIPTION, MODIFIED_BY, TIMESTAMP, MODULE) VALUES 
    ('get-parser-type', '', CURRENT USER, CURRENT TIMESTAMP, '[pay][bmii][iwswc]');
INSERT INTO MWCONFIG.MAPPING_GROUP(MAPPING_ID, ID, "SOURCE", TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
    ('get-parser-type', 1, '/data', '/data', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE(MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
    ('get-parser-type', 1, '@', 'copyMessage();', NULL),
    ('get-parser-type', 1, 'parserType', '${getParamValue("parser-type", msg.type."!value".startsWith("iso")?msg.group."!value".startsWith("itm")?msg.body.reservedPrivate3?."!value":msg.group."!value".startsWith("kpos")||msg.group."!value".startsWith("pos")?msg.group."!value"+"."+msg.body.processingCode."!value":msg.group."!value"+"."+msg.body.reservedPrivate3?."!value":msg.body.dspTransactionCode?."!value", msg.type."!value".startsWith("dsp")?"dsp":"default")}', NULL);
    -- ('get-parser-type', 1, 'parserType', '${getParamValue("parser-type", msg.type."!value".startsWith("iso") ? msg.group."!value".startsWith("itm")? msg.body.reservedPrivate3?."!value": (msg.group."!value".startsWith("kpos") || msg.group."!value".startsWith("pos"))? msg.group."!value" + "." + msg.body.processingCode."!value": (msg.body.reservedPrivate2."!value" === "002001002" && msg.body.reservedPrivate3."!value" == 605000)? msg.group."!value" + "." + msg.body.reservedPrivate3."!value" + "." + msg.body.reservedPrivate2."!value": msg.group."!value" + "." + msg.body.reservedPrivate3?."!value": msg.body.dspTransactionCode?."!value", msg.type."!value".startsWith("dsp")?"dsp":"default")}', NULL);

-- req-core.sms.0200.new-mobile.master
INSERT INTO MWCONFIG.MAPPING(ID, DESCRIPTION, MODIFIED_BY, TIMESTAMP, MODULE) VALUES
	('req-core.sms.0200.new-mobile.master', null, CURRENT USER, CURRENT TIMESTAMP, '[smsmd][sfiip][ibb][pay][iwswc]');
INSERT INTO MWCONFIG.MAPPING_GROUP(MAPPING_ID, ID, "SOURCE", TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
	('req-core.sms.0200.new-mobile.master', 1, '/data/body', '/data/body', 'req-core.sms', 1);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE(MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES
	('req-core.sms.0200.new-mobile.master', 1, 'dspDeviceName', '${tar.tellerComplete."!value".split("\\|", -1)[3]}', 20),
	('req-core.sms.0200.new-mobile.master', 1, 'dspTerminalId', '${tar.tellerComplete."!value".split("\\|", -1)[1]}', 20),
	('req-core.sms.0200.new-mobile.master', 1, 'dspUserId', '${tar.tellerComplete."!value".split("\\|", -1)[0]}', 20),
	('req-core.sms.0200.new-mobile.master', 1, 'ICDEVN', '${tar.tellerComplete."!value".split("\\|", -1)[3]}', 20),
	('req-core.sms.0200.new-mobile.master', 1, 'TLBCUD', '${tar.tellerComplete."!value".split("\\|", -1)[2]}', 20),
	('req-core.sms.0200.new-mobile.master', 1, 'TLBID', '${tar.tellerComplete."!value".split("\\|", -1)[0]}', 20),
	('req-core.sms.0200.new-mobile.master', 1, 'TLBTCD', '${tar.dspTransactionCode}', 20),
	('req-core.sms.0200.new-mobile.master', 1, 'RMAPID', '${msg.retrievalReferenceNumber."!value".padRight(12," ")}${new java.text.SimpleDateFormat("yyMMdd").format(new Date())}${new java.text.SimpleDateFormat("HHmmss").format(new Date())}', null),
	('req-core.sms.0200.new-mobile.master', 1, 'RMPSTC', '${new java.text.SimpleDateFormat("yyyyMMdd").format(new Date())}', null),
	('req-core.sms.0200.new-mobile.master', 1, 'RMSEHS', '${new java.text.SimpleDateFormat("MMdd").format(new Date())}', null),
	('req-core.sms.0200.new-mobile.master', 1, 'RMPYCN', '${msg.timeLocalTransaction."!value".substring(0,2)}:${msg.timeLocalTransaction."!value".substring(2,4)}:${msg.timeLocalTransaction."!value".substring(4,6)}', null),
	('req-core.sms.0200.new-mobile.master', 1, 'TLBFIL', '${tar.dspTerminalId."!value".padRight(16," ")+msg.retrievalReferenceNumber."!value".padRight(12," ")+msg.acquiringInstitutionIdentificationCode."!value".padRight(16," ")}', 30),
	('req-core.sms.0200.new-mobile.master', 1, 'TLXUFD', 'NEWMB', null),
	('req-core.sms.0200.new-mobile.master', 1, 'RMADD3', '${(msg.reservedIso2==null||msg.reservedIso2."!value"==null?"00000000000":msg.reservedIso2."!value").padRight(16," ")}', null),
	('req-core.sms.0200.new-mobile.master', 1, 'RMPYNM', '${msg.cardAcceptorTerminalIdentification."!value".padRight(8," ")} ${(msg.reservedIso2==null||msg.reservedIso2."!value"==null?"00000000000":msg.reservedIso2."!value").padRight(16," ")}${msg.retrievalReferenceNumber."!value".padRight(12," ")}', null),
	('req-core.sms.0200.new-mobile.master', 1, 'tellerComplete', '${getParamValue("device_teller_map", "sms_" + msg.cardAcceptorTerminalIdentification."!value".trim(), "|||| ")}', 10);

INSERT INTO MWCONFIG.MAPPING(ID, DESCRIPTION, MODIFIED_BY, TIMESTAMP, MODULE) VALUES 
	('sms.iso-err-to-iso', null, CURRENT USER, CURRENT TIMESTAMP, '[iwswc]');
INSERT INTO MWCONFIG.MAPPING_GROUP(MAPPING_ID, ID, "SOURCE", TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES 
	('sms.iso-err-to-iso', 1, '/data', '/data', null, null),
	('sms.iso-err-to-iso', 2, '/data/coreResponse/body', '/data/body', null, null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE(MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
	('sms.iso-err-to-iso', 1, '@', 'copyMessage()', 1),
	('sms.iso-err-to-iso', 2, 'messageType', '0210', 1),
	('sms.iso-err-to-iso', 2, 'responseCode', '${msg.responseCode}', 2),
	('sms.iso-err-to-iso', 2, 'additionalDataPrivate', '${msg.additionalDataPrivate}', 3);

INSERT INTO MWCONFIG.MAPPING(ID, DESCRIPTION, MODIFIED_BY, TIMESTAMP, MODULE) VALUES
	('checkCoreResp', '', CURRENT USER, CURRENT TIMESTAMP, '[core][iwswc][zzzwp]');
INSERT INTO MWCONFIG.MAPPING_GROUP(MAPPING_ID, ID, "SOURCE", TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
	('checkCoreResp', 1, '/data', '/data', null, null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE(MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
	('checkCoreResp', 1, '@', 'copyMessage();', 1),
	('checkCoreResp', 1, 'coreAct', '${getParamValue("core."+msg.coreResponse.source."!value", msg.coreResponse.body.responseCode."!value","not")}', 10);

INSERT INTO MWCONFIG.MAPPING(ID, DESCRIPTION, MODIFIED_BY, TIMESTAMP, MODULE) VALUES
	('checkBillerResp', '', CURRENT USER, CURRENT TIMESTAMP, '[sms][bbpp][pay][iwswc]');
INSERT INTO MWCONFIG.MAPPING_GROUP(MAPPING_ID, ID, "SOURCE", TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
	('checkBillerResp', 1, '/data', '/data', null, null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE(MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
	('checkBillerResp', 1, '@', 'copyMessage();', 1),
	('checkBillerResp', 1, 'coreAct', '${getParamValue("biller.rc.toReverse", msg.type."!value".startsWith("dsp")?msg.body.dspTransactionCode."!value"+"."+msg.body.TLBERR_F2?."!value":(msg.body.reservedPrivate3==null?msg.body.processingCode."!value":msg.body.reservedPrivate3?."!value")+"."+msg.body.messageType?."!value"+"."+msg.body.responseCode?."!value","not")}', 10);

