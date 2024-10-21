-- INSERT INTO MWCONFIG.ADAPTOR (ID, DESCRIPTION, ASYNCHRONOUS, MODIFIED_BY, TIMESTAMP) VALUES 
-- 	('qris-11800', 'connector channel qris-AA', 0, CURRENT USER, CURRENT TIMESTAMP), 
-- 	('qris-11801', 'connector channel qris-AA', 0, CURRENT USER, CURRENT TIMESTAMP), 
-- 	('qris-11802', 'connector channel qris-AA', 1, CURRENT USER, CURRENT TIMESTAMP),
-- 	('qris-11803', 'connector channel qris-AA', 1, CURRENT USER, CURRENT TIMESTAMP),
-- 	('qris-13281', 'connector channel alto tuntas', 1, CURRENT USER, CURRENT TIMESTAMP),
-- 	('qris-13282', 'connector channel alto tuntas', 1, CURRENT USER, CURRENT TIMESTAMP),
--     ('qriscpm-11815', 'connector channel alto-AA', 1, CURRENT USER, CURRENT TIMESTAMP),
--     ('qriscpm-11816', 'connector channel alto-AA', 1, CURRENT USER, CURRENT TIMESTAMP);

-- INSERT INTO MWCONFIG.ADAPTOR_CODEX (ADAPTOR_ID, ID, CODEX_ID) VALUES
--     ('qris-11800', 'incoming', 'iso-8583-qris'),
--     ('qris-11800', 'outgoing', 'iso-8583-qris'),
--     ('qris-11801', 'incoming', 'iso-8583-qris'),
--     ('qris-11801', 'outgoing', 'iso-8583-qris'),
--     ('qris-11802', 'incoming', 'iso-8583-qris'),
--     ('qris-11802', 'outgoing', 'iso-8583-qris'),
--     ('qris-11803', 'incoming', 'iso-8583-qris'),
--     ('qris-11803', 'outgoing', 'iso-8583-qris'),
--     ('qris-13281', 'incoming', 'iso-8583-qris'),
--     ('qris-13281', 'outgoing', 'iso-8583-qris'),
--     ('qris-13282', 'incoming', 'iso-8583-qris'),
--     ('qris-13282', 'outgoing', 'iso-8583-qris'),
--     ('qriscpm-11815', 'incoming', 'iso-8583-qriscpm'),
--     ('qriscpm-11815', 'outgoing', 'iso-8583-qriscpm'),
--     ('qriscpm-11816', 'incoming', 'iso-8583-qriscpm'),
--     ('qriscpm-11816', 'outgoing', 'iso-8583-qriscpm');

-- INSERT INTO MWCONFIG.ADAPTOR_PARAM (ADAPTOR_ID, NAME, VALUE) VALUES
--     ('qris-11800', 'maxConnection', '1'),
--     ('qris-11801', 'maxConnection', '1'),
--     ('qris-11802', 'maxConnection', '1'),
--     ('qris-11803', 'maxConnection', '1'),
--     ('qris-13281', 'maxConnection', '1'),
--     ('qris-13282', 'maxConnection', '1'),
--     ('qriscpm-11815', 'maxConnection', '1'),
--     ('qriscpm-11816', 'maxConnection', '1');

-- INSERT INTO MWCONFIG.SERVER_PORT (ADAPTOR_ID, PORT, SERVER, "GROUP") VALUES
--     ('qris-11800', 11800, 'server-1', 'qris'),
--     ('qris-11801', 11801, 'server-1', 'qris'),
--     ('qris-11803', 11803, 'server-1', 'qris'),
--     ('qris-13281', 13281, 'server-1', 'qris'),
--     ('qris-13282', 13282, 'server-1', 'qris'),
--     ('qriscpm-11815', 11815, 'server-1', 'qriscpm'),
--     ('qriscpm-11816', 11816, 'server-1', 'qriscpm');


INSERT INTO MWCONFIG.ROUTING_TABLE(CODE_START, CODE_END, CHANNEL, START_DATE, END_DATE, QUEUE, CREATE_BY, CREATE_DATE, MODIFIED_BY, MODIFIED_DATE, STATUS, SUBCODEX, ADDITIONAL, REPLY_TO, REPLY_TO_QMGR) VALUES 
    ('0200.1.301125', '0200.1.301125', 'sms', CURRENT TIMESTAMP, null, 'BP.ISO.PAYMENT.IN', CURRENT USER, CURRENT TIMESTAMP, null, null, 'ACTIVE', null, null, 'ROUTER_OUT.SMS', 'PAYBROKER.QM'),
    ('0200.2.301125', '0200.2.301125', 'sms', CURRENT TIMESTAMP, null, 'BP.ISO.PAYMENT.IN', CURRENT USER, CURRENT TIMESTAMP, null, null, 'ACTIVE', null, null, 'ROUTER_OUT.SMS', 'PAYBROKER.QM'),
    ('0400.2.301125', '0400.2.301125', 'sms', CURRENT TIMESTAMP, null, 'BP.ISO.REVERSAL.IN', CURRENT USER, CURRENT TIMESTAMP, null, null, 'ACTIVE', null, null, 'ROUTER_OUT.SMS', 'PAYBROKER.QM');