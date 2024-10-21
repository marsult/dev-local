INSERT INTO MWCONFIG.DTREE(GROUP, PATH, VALUE, MODIFIED_BY, TIMESTAMP, MODULE) VALUES 
	('ITM-CODE', '0200.235000', '0200.230000.${msg.reservedPrivate2.substring(0, 6)}', CURRENT USER, CURRENT TIMESTAMP, '[itmro]'),
	('ITM-CODE', '0210.235000', '0210.230000.${msg.reservedPrivate2.substring(0, 6)}', CURRENT USER, CURRENT TIMESTAMP, '[itmro]'),
	('ITM-CODE', '0400.235000', '0400.230000.${msg.reservedPrivate2.substring(0, 6)}', CURRENT USER, CURRENT TIMESTAMP, '[itmro]'),
	('ITM-CODE', '0410.235000', '0410.230000.${msg.reservedPrivate2.substring(0, 6)}', CURRENT USER, CURRENT TIMESTAMP, '[itmro]'),
	('ITM-CODE', '0200.000010', '0200.000010.${msg.reservedPrivate2.substring(0, 6)}', CURRENT USER, CURRENT TIMESTAMP, '[itmro]'),
	('ITM-CODE', '0210.000010', '0210.000010.${msg.reservedPrivate2.substring(0, 6)}', CURRENT USER, CURRENT TIMESTAMP, '[itmro]'),
	('ITM-CODE', '0400.000010', '0400.000010.${msg.reservedPrivate2.substring(0, 6)}', CURRENT USER, CURRENT TIMESTAMP, '[itmro]'),
	('ITM-CODE', '0410.000010', '0410.000010.${msg.reservedPrivate2.substring(0, 6)}', CURRENT USER, CURRENT TIMESTAMP, '[itmro]'),
	('ITM-CODE', '0200.230000.002NMB', '0200.235000.002NMB', CURRENT USER, CURRENT TIMESTAMP, '[itmro]'),
	('ITM-CODE', '0210.230000.002NMB', '0210.235000.002NMB', CURRENT USER, CURRENT TIMESTAMP, '[itmro]'),
	('ITM-CODE', '0400.230000.002NMB', '0400.235000.002NMB', CURRENT USER, CURRENT TIMESTAMP, '[itmro]'),
	('ITM-CODE', '0410.230000.002NMB', '0410.235000.002NMB', CURRENT USER, CURRENT TIMESTAMP, '[itmro]');

INSERT INTO MWCONFIG.PARAM_MAP(GROUP, NAME, VALUE, SEQ, MODIFIED_BY, TIMESTAMP, DESCRIPTION) VALUES
	('coa', 'gl-withdrawal-acquire-ACR-31189', '111360001189', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center CRM ACEH QANUN'),
	('coa', 'gl-withdrawal-acquire-BTN', '111330000000', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Cash ATM BTN'),
	('coa', 'gl-withdrawal-acquire-VND', '111340000061', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Cash ATM Vendor'),
	('coa', 'gl-withdrawal-acquire-BCR', '111360000000', null, CURRENT USER, CURRENT TIMESTAMP, null),
	('coa', 'gl-withdrawal-acquire-VCR', '111360000000', null, CURRENT USER, CURRENT TIMESTAMP, null),
	('coa', 'gl-withdrawal-acquire-CCU', '111340000014', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Cash ATM CCU'),
	('coa', 'gl-withdrawal-acquire-CCU-00002', '111340000002', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center SUARABAYA'),
	('coa', 'gl-withdrawal-acquire-CCU-00003', '111340000003', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center MEDAN'),
	('coa', 'gl-withdrawal-acquire-CCU-00014', '111340000043', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KC TANGERANG'),
	('coa', 'gl-withdrawal-acquire-CCU-09912', '111340000012', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KC MALANG'),
	('coa', 'gl-withdrawal-acquire-CCU-09928', '111340000028', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KC BANGKALAN'),
	('coa', 'gl-withdrawal-acquire-CCU-09947', '111340000047', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KC CILEGON'),
	('coa', 'gl-withdrawal-acquire-RC2-09912', '111340000012', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KC MALANG'),
	('coa', 'gl-withdrawal-acquire-RC2-09928', '111340000028', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KC BANGKALAN'),
	('coa', 'gl-withdrawal-acquire-RC1-09947', '111340000047', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KC CILEGON'),
	('coa', 'gl-withdrawal-acquire-RC1-20043', '111340000043', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KC TANGERANG CONTR JALIN'),
	('coa', 'gl-withdrawal-acquire-CCU-20089', '111340001189', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center ATM Qanun Aceh CONTR JALIN'),
	('coa', 'gl-withdrawal-acquire-RCA-99204', '111330000204', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KC BINTARO'),
	('coa', 'gl-withdrawal-acquire-RCB-09928', '111330000028', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KC BANGKALAN'),
	('coa', 'gl-withdrawal-acquire-RCC-09991', '111330000091', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KC BANDUNG'),
	('coa', 'gl-withdrawal-acquire-RCD-09913', '111330000013', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KC SEMARANG'),
	('coa', 'gl-withdrawal-acquire-RCC-20091', '111330000091', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KC BANDUNG'),
	('coa', 'gl-withdrawal-acquire-RCB-20028', '111330000028', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KC BANGKALAN'),
	('coa', 'gl-withdrawal-acquire-RCD-20013', '111330000013', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KC SEMARANG'),
	('coa', 'gl-withdrawal-acquire-RCA-20204', '111330000204', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KC BINTARO'),
	('coa', 'gl-withdrawal-acquire-RCE-91189', '111330001189', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center ACEH QANUN'),
	('coa', 'gl-withdrawal-acquire-RC5-91189', '111340001189', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center ACEH QANUN'),
	('coa', 'gl-withdrawal-acquire-RCE-09903', '111330000003', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KC MEDAN'),
	('coa', 'gl-withdrawal-acquire-RC5-09903', '111340000003', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KC MEDAN'),
	('coa', 'gl-withdrawal-acquire-RCE-09945', '111330000045', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KC PALANGKARAYA'),
	('coa', 'gl-withdrawal-acquire-RC5-09945', '111340000045', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KC PALANGKARAYA'),
	('coa', 'gl-withdrawal-acquire-RCE-20108', '111330000108', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KC BANJARBARU'),
	('coa', 'gl-withdrawal-acquire-RC5-20108', '111340000108', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KC BANJARBARU'),
	('coa', 'gl-withdrawal-acquire-RCE-20010', '111330000010', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KC BANJARMASIN'),
	('coa', 'gl-withdrawal-acquire-RC5-20010', '111340000010', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KC BANJARMASIN'),
	('coa', 'gl-withdrawal-acquire-JLN', '111330000000', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Cash ATM JALIN'),
	('coa', 'gl-withdrawal-acquire-CO1-00016', '111360000016', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center CRM KC BEKASI'),
	('coa', 'gl-withdrawal-acquire-COA-00016', '111360000016', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center CRM KC BEKASI'),
	('coa', 'gl-withdrawal-acquire-CO1-09947', '111360000047', null, CURRENT USER, CURRENT TIMESTAMP, null),
	('coa', 'gl-withdrawal-acquire-COA-09947', '111360000047', null, CURRENT USER, CURRENT TIMESTAMP, null),
	('coa', 'gl-withdrawal-acquire-CO2-09928', '111360000028', null, CURRENT USER, CURRENT TIMESTAMP, null),
	('coa', 'gl-withdrawal-acquire-COB-09928', '111360000028', null, CURRENT USER, CURRENT TIMESTAMP, null),
	('coa', 'gl-withdrawal-acquire-CO2-99393', '111360000393', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center CRM KC SBD'),
	('coa', 'gl-withdrawal-acquire-COB-99393', '111360000393', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center  CRM KC SBD'),
	('coa', 'gl-withdrawal-acquire-CO3-09906', '111360000006', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center SB KC BANDUNG'),
	('coa', 'gl-withdrawal-acquire-COC-09906', '111360000006', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center SB KC BANDUNG'),
	('coa', 'gl-withdrawal-acquire-CO3-09935', '111360000035', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KK PALIMANAN'),
	('coa', 'gl-withdrawal-acquire-COC-09935', '111360000035', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KK PALIMANAN'),
	('coa', 'gl-withdrawal-acquire-CO4-09933', '111360000033', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KCP UNSOED'),
	('coa', 'gl-withdrawal-acquire-COD-09933', '111360000033', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KCP UNSOED'),
	('coa', 'gl-withdrawal-acquire-CO4-99153', '111360000153', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center CRM KC TEGAL'),
	('coa', 'gl-withdrawal-acquire-COD-99153', '111360000153', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center CRM KC TEGAL'),
	('coa', 'gl-withdrawal-acquire-co5-09924', '111360000024', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KCP CRM KC AMBON'),
	('coa', 'gl-withdrawal-acquire-coE-09924', '111360000024', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KCP CRM KC AMBON'),
	('coa', 'gl-withdrawal-acquire-CO5-09926', '111360000026', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KCP CRM KCP RAJAWALI'),
	('coa', 'gl-withdrawal-acquire-COE-09926', '111360000026', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KCP CRM KCP RAJAWALI'),
	('coa', 'gl-withdrawal-acquire-CO5-09924', '111360000024', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KCP CRM KC AMBON'),
	('coa', 'gl-withdrawal-acquire-COE-09924', '111360000024', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KCP CRM KC AMBON'),
	('coa', 'gl-withdrawal-acquire-RC5-20003', '111340000003', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center MEDAN'),
	('coa', 'gl-withdrawal-acquire-RCE-20003', '111330000003', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center MEDAN'),
	('coa', 'gl-withdrawal-acquire-APR-09924', '111330000024', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center ATM KC AMBON'),
	('coa', 'gl-withdrawal-acquire-APR-99601', '111330000601', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center ATM KCP MUARA ENIM'),
	('coa', 'gl-withdrawal-acquire-CPR-91198', '111360001198', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center CRM KCP PENAJAM'),
	('coa', 'gl-withdrawal-acquire-CPR-99210', '111360000210', null, CURRENT USER, CURRENT TIMESTAMP, null),
	('coa', 'gl-withdrawal-acquire-CO5-99283', '111360000383', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KCP CRM KCP BALIGE'),
	('coa', 'gl-withdrawal-acquire-COE-99245', '111360000245', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KC TARAKAN'),
	('coa', 'gl-withdrawal-acquire-RCE-99242', '111330000242', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KCP SAMPIT'),
	('coa', 'gl-withdrawal-acquire-RC5-99383', '111340000383', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KCP SIBOLGA'),
	('coa', 'gl-withdrawal-acquire-RCE-99187', '111330000187', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KC PADANG'),
	('coa', 'onus-bill-syariah', '187171200000', null, CURRENT USER, CURRENT TIMESTAMP, NULL),
	('coa', 'onus-revenue-syariah', '467915200000', null, CURRENT USER, CURRENT TIMESTAMP, NULL);

INSERT INTO MWCONFIG.PARAM_MAP(GROUP, NAME, VALUE, SEQ, MODIFIED_BY, TIMESTAMP, DESCRIPTION) VALUES
	('coa', 'gl-cash-CRM-BCR', '111360000000', null, CURRENT USER, CURRENT TIMESTAMP, null),
	('coa', 'gl-cash-CRM-VCR', '111360000000', null, CURRENT USER, CURRENT TIMESTAMP, null),
	('coa', 'gl-cash-CRM-BTN', '111360000000', null, CURRENT USER, CURRENT TIMESTAMP, null),
	('coa', 'gl-cash-CRM-VND', '111360000000', null, CURRENT USER, CURRENT TIMESTAMP, null),
	('coa', 'gl-cash-CRM-ACR', '111360000000', null, CURRENT USER, CURRENT TIMESTAMP, null),
	('coa', 'gl-cash-CRM-COB-99393', '111360000393', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center  CRM KC SBD'),
	('coa', 'gl-cash-CRM-CO2-99393', '111360000393', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center  CRM KC SBD'),
	('coa', 'gl-cash-CRM-COC-09906', '111360000006', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center SB KC BANDUNG'),
	('coa', 'gl-cash-CRM-CO3-09906', '111360000006', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center SB KC BANDUNG'),
	('coa', 'gl-cash-CRM-COC-09935', '111360000035', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KK PALIMANAN'),
	('coa', 'gl-cash-CRM-CO3-09935', '111360000035', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KK PALIMANAN'),
	('coa', 'gl-cash-CRM-COD-99153', '111360000153', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Dalam Perjalanan CRM KC TEGAL'),
	('coa', 'gl-cash-CRM-CO4-99153', '111360000153', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Dalam Perjalanan CRM KC TEGAL'),
	('coa', 'gl-cash-CRM-COD-09933', '111360000033', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KCP UNSOED'),
	('coa', 'gl-cash-CRM-CO4-09933', '111360000033', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KCP UNSOED'),
	('coa', 'gl-cash-CRM-COE-09926', '111360000026', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KCP CRM KCP RAJAWALI'),
	('coa', 'gl-cash-CRM-CO5-09926', '111360000026', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KCP CRM KCP RAJAWALI'),
	('coa', 'gl-cash-CRM-COE-09924', '111360000024', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KCP CRM KC AMBON'),
	('coa', 'gl-cash-CRM-CO5-09924', '111360000024', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KCP CRM KC AMBON'),
	('coa', 'gl-cash-CRM-COA-00016', '111360000016', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center CRM KC BEKASI'),
	('coa', 'gl-cash-CRM-CO1-00016', '111360000016', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center CRM KC BEKASI'),
	('coa', 'gl-cash-CRM-COA-09947', '111360000047', null, CURRENT USER, CURRENT TIMESTAMP, null),
	('coa', 'gl-cash-CRM-CO1-09947', '111360000047', null, CURRENT USER, CURRENT TIMESTAMP, null),
	('coa', 'gl-cash-CRM-COB-09928', '111360000028', null, CURRENT USER, CURRENT TIMESTAMP, null),
	('coa', 'gl-cash-CRM-CO2-09928', '111360000028', null, CURRENT USER, CURRENT TIMESTAMP, null),
	('coa', 'gl-cash-CRM-CPR-91198', '111360001198', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center CRM KCP PENAJAM'),
	('coa', 'gl-cash-CRM-CPR-99210', '111360000210', null, CURRENT USER, CURRENT TIMESTAMP, null),
	('coa', 'gl-cash-CRM-COE-99245', '111360000245', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KCP CRM KC TARAKAN'),
	('coa', 'gl-cash-CRM-CO5-99283', '111360000383', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center KCP CRM KC TARAKAN'),
	('coa', 'gl-cash-CRM-ACR-31189', '111360001189', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center CRM ACEH QANUN'),
	('coa', 'gl-pendapatan-crm', '111360001189', null, CURRENT USER, CURRENT TIMESTAMP, 'GL Kas Cash Center CRM ACEH QANUN');

INSERT INTO MWCONFIG.ERROR_MAP(GROUP, ORIGINAL, TARGET, MODIFIED_BY, TIMESTAMP, DETAIL) VALUES
	('ist-syariah-conn', '00', '00', CURRENT USER, CURRENT TIMESTAMP, 'Berhasil (Request Berhasil)'),
	('ist-syariah-conn', 'XA', 'XA', CURRENT USER, CURRENT TIMESTAMP, 'CW Token Expired'),
	('ist-syariah-conn', 'XB', 'XB', CURRENT USER, CURRENT TIMESTAMP, 'Kombinasi No Handphone dan Token Tidak Sesuai'),
	('ist-syariah-conn', 'XC', 'XC', CURRENT USER, CURRENT TIMESTAMP, 'Sudah ada token yang aktif'),
	('ist-syariah-conn', 'XD', 'XD', CURRENT USER, CURRENT TIMESTAMP, 'No Handphone tidak ditemukan di CWS'),
	('ist-syariah-conn', 'XE', 'XE', CURRENT USER, CURRENT TIMESTAMP, 'CW Token tidak ditemukan'),
	('ist-syariah-conn', 'XF', 'XF', CURRENT USER, CURRENT TIMESTAMP, 'Token cancel (Token sudah dicancel oleh nasabah)'),
	('ist-syariah-conn', 'XG', 'XG', CURRENT USER, CURRENT TIMESTAMP, 'Token Inactive (Token yang dikirim pada saat request sudah di non aktifkan oleh Petugas Bank)'),
	('ist-syariah-conn', 'XH', 'XH', CURRENT USER, CURRENT TIMESTAMP, 'Token withdrawn (token sudah berhasil ditarik dari ATM)'),
	('ist-syariah-conn', 'XI', 'XI', CURRENT USER, CURRENT TIMESTAMP, 'Nominal pengambilan dalam 1 hari melebihi batas maximal'),
	('ist-syariah-conn', 'XJ', 'XJ', CURRENT USER, CURRENT TIMESTAMP, 'Volume pengambilan dalam 1 hari melebihi batas maximal'),
	('ist-syariah-conn', 'XK', 'XK', CURRENT USER, CURRENT TIMESTAMP, 'Nominal tidak valid. (pada saat create token nasabah input nominal dibawah limit minimal penarikan, default 100rb)'),
	('ist-syariah-conn', 'XL', 'XL', CURRENT USER, CURRENT TIMESTAMP, 'Token block (karena salah input CW token atau no HP pada saat penarikan)'),
	('ist-syariah-conn', 'XM', 'XM', CURRENT USER, CURRENT TIMESTAMP, 'Processing code tidak valid (bit 49 tidak valid)'),
	('ist-syariah-conn', 'XN', 'XN', CURRENT USER, CURRENT TIMESTAMP, 'Client code tidak valid (bit 18 tidak valid)'),
	('ist-syariah-conn', 'XO', 'XO', CURRENT USER, CURRENT TIMESTAMP, NULL),
	('ist-syariah-conn', 'XP', 'XP', CURRENT USER, CURRENT TIMESTAMP, 'Token tidak valid (bit 63 kosong pada saat req withdrawal, cancellation)'),
	('ist-syariah-conn', 'XQ', 'XQ', CURRENT USER, CURRENT TIMESTAMP, 'RRN atau STAN tidak valid'),
	('ist-syariah-conn', 'XR', 'XR', CURRENT USER, CURRENT TIMESTAMP, 'Kombinasi CIF dan No HP tidak sesuai'),
	('ist-syariah-conn', 'XZ', 'XZ', CURRENT USER, CURRENT TIMESTAMP, 'General error'),
	('ist-syariah-conn', '81', 'XZ', CURRENT USER, CURRENT TIMESTAMP, 'General error'),
	('ist-syariah-conn', '82', 'XZ', CURRENT USER, CURRENT TIMESTAMP, 'General error');


INSERT INTO MWCONFIG.DTREE(GROUP, PATH, VALUE, MODIFIED_BY, TIMESTAMP, MODULE) VALUES 
	('CHARGES', 'itm|235000', 'cardless-btn${msg.reservedPrivate2."!value".startsWith("002NMB")?"-shad":""}', CURRENT USER, CURRENT TIMESTAMP, '[itm][itmit]'),
	('CHARGES', 'itm|942000', 'cardless-btn${msg.reservedPrivate2."!value".startsWith("002NMB")?"-shad":""}', CURRENT USER, CURRENT TIMESTAMP, '[itm][itmit]'),
	('CHARGES', 'itm|952000', 'cardless-cash-deposit${msg.reservedPrivate2."!value".startsWith("002NMB")?"-shad":""}', CURRENT USER, CURRENT TIMESTAMP, '[itm][itmit]'),
	('CHARGES', 'cardless-btn-shad', 'Cardless-Withdrawal-NMBS', CURRENT USER, CURRENT TIMESTAMP, '[itm][itmit]'),
	('CHARGES', 'cardless-cash-deposit-shad', 'Cardless-Deposit-NMBS', CURRENT USER, CURRENT TIMESTAMP, '[itm][itmit]'),
	('CHARGES', 'Cardless-Withdrawal-NMBS', '---', CURRENT USER, CURRENT TIMESTAMP, '[itm][itmit]'),
	('CHARGES', 'Cardless-Deposit-NMBS', '---', CURRENT USER, CURRENT TIMESTAMP, '[itm][itmit]');

INSERT INTO MWCONFIG.MAPPING(ID, DESCRIPTION, MODIFIED_BY, TIMESTAMP, MODULE) VALUES
    ('req-core.itm.core-reverse', '', CURRENT USER, CURRENT TIMESTAMP, '[itm][iwswc][zsim][iecit][vas][itmit]');
INSERT INTO MWCONFIG.MAPPING_GROUP(MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
    ('req-core.itm.core-reverse', 1, '/data/body', '/data/body', null, null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE(MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES
    ('req-core.itm.core-reverse', 1, 'TLBF20', '${msg.systemsTraceAuditNumber}', null),
    ('req-core.itm.core-reverse', 1, 'TLBJSN', '${msg.systemsTraceAuditNumber."!number"+1000000}', null),
    ('req-core.itm.core-reverse', 1, 'TLBWC2', '10', null),
    ('req-core.itm.core-reverse', 1, '!mid', '${msg.transmissionDateTime."!value"+".1"+msg.systemsTraceAuditNumber."!value"}', null);

INSERT INTO MWCONFIG.CHARGES(ID, C1_VALUE, C1_NAME, C1_SCRIPT, C1_ACCOUNT, C2_VALUE, C2_NAME, C2_SCRIPT, C2_ACCOUNT, C3_VALUE, C3_NAME, C3_SCRIPT, C3_ACCOUNT, C4_VALUE, C4_NAME, C4_SCRIPT, C4_ACCOUNT, C5_VALUE, C5_NAME, C5_SCRIPT, C5_ACCOUNT, MODIFIED_BY, TIMESTAMP) VALUES 
	('Cardless-Withdrawal-NMBS', 1000.00, 'fee nasabah', null, null, 0.00, null, null, null, 0.00, null, null, null, 0.00, null, null, null, 0.00, null, null, null, CURRENT USER, CURRENT TIMESTAMP),
	('Cardless-Deposit-NMBS', 1000.00, 'fee nasabah', null, null, 0.00, null, null, null, 0.00, null, null, null, 0.00, null, null, null, 0.00, null, null, null, CURRENT USER, CURRENT TIMESTAMP);

INSERT INTO MWCONFIG.PARAM_MAP(GROUP, NAME, VALUE, MODIFIED_BY, TIMESTAMP) VALUES
	('coa', 'gl-tagihan-uus', '111360000000', CURRENT USER, CURRENT TIMESTAMP),
	('coa', 'gl-tagihan-uus-cardless', '111360000000', CURRENT USER, CURRENT TIMESTAMP),
	('coa', 'gl-pendapatan-syah', '111360000000', CURRENT USER, CURRENT TIMESTAMP),
	('coa', 'gl-kewajiban-uus-crm-cardless', '111360000000', CURRENT USER, CURRENT TIMESTAMP),
	('core-response-ok', 'AXISSYSTEMSDNBHD.0000005194', 'F1', CURRENT USER, CURRENT TIMESTAMP),
	('core-response-ok', 'AXISSYSTEMSDNBHD.0000005197', 'F1', CURRENT USER, CURRENT TIMESTAMP),
	('core-response-ok', 'AXISSYSTEMSDNBHD.0000005043', 'F1', CURRENT USER, CURRENT TIMESTAMP);

-- Mapping General

-- req-core.itm.multiple-master.syariah
INSERT INTO MWCONFIG.MAPPING(ID, DESCRIPTION, MODIFIED_BY, TIMESTAMP, MODULE) VALUES
	('req-core.itm.multiple-master.syariah', null, CURRENT USER, CURRENT TIMESTAMP, '[impit]');
INSERT INTO MWCONFIG.MAPPING_GROUP(MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
	('req-core.itm.multiple-master.syariah', 1, '/data/body', '/data/body', null, null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE(MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES
	('req-core.itm.multiple-master.syariah', 1, '!connid', '${head.request.data.connid}', null),
	('req-core.itm.multiple-master.syariah', 1, '!destination', 'core-syariah-itm', null),
	('req-core.itm.multiple-master.syariah', 1, '!group', '${head.request.data.group}', null),
	('req-core.itm.multiple-master.syariah', 1, '!mappingCode', '${head.request.data.mappingCode}', null),
	('req-core.itm.multiple-master.syariah', 1, '!queueName', 'CORE_SYARIAH_IN', null),
	('req-core.itm.multiple-master.syariah', 1, '!reqtimestamp', '${head.request.data.reqtimestamp}', null),
	('req-core.itm.multiple-master.syariah', 1, '!sid', '${null}', null),
	('req-core.itm.multiple-master.syariah', 1, '!source', '${head.request.data.source}', null),
	('req-core.itm.multiple-master.syariah', 1, '!timestamp', '${head.request.data.reqtimestamp}', null),
	('req-core.itm.multiple-master.syariah', 1, '@', 'copyMessage(".", "request/data/body/original");copyMessage("../original1", ".");copyMessage("original", "request/data/body/original");', null),
	('req-core.itm.multiple-master.syariah', 1, 'fullReverse', 'true', null),
	('req-core.itm.multiple-master.syariah', 1, 'isMultipleRequest', '${null}', null);

-- req-core.itm.res-reverse-master
INSERT INTO MWCONFIG.MAPPING(ID, DESCRIPTION, MODIFIED_BY, TIMESTAMP, MODULE) VALUES
	('req-core.itm.res-reverse-master', '', CURRENT USER, CURRENT TIMESTAMP, '[iwswc][itm][itsii]');
INSERT INTO MWCONFIG.MAPPING_GROUP(MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
	('req-core.itm.res-reverse-master', 1, '/data/body', '/data/body', null, null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE(MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES
	('req-core.itm.res-reverse-master', 1, '!connid', '${head.request.data.original1.request.data.connid}', 20),
	('req-core.itm.res-reverse-master', 1, '!destination', '${head.request.data.original1.request.data.destination}', 20),
	('req-core.itm.res-reverse-master', 1, '!group', '${head.request.data.original1.request.data.group}', 20),
	('req-core.itm.res-reverse-master', 1, '!mappingCode', '${head.request.data.original1.request.data.mappingCode}', 20),
	('req-core.itm.res-reverse-master', 1, '!mid', '${head.request.data.original1.request.data.mid}.2', 20),
	('req-core.itm.res-reverse-master', 1, '!queueName', '${head.request.data.original1.request.data.queueName}', 20),
	('req-core.itm.res-reverse-master', 1, '!reqtimestamp', '${head.request.data.original1.request.data.reqtimestamp}', 20),
	('req-core.itm.res-reverse-master', 1, '!sid', '${head.sid}', 20),
	('req-core.itm.res-reverse-master', 1, '!source', '${head.request.data.original1.request.data.source}', 20),
	('req-core.itm.res-reverse-master', 1, '!timestamp', '${head.request.data.original1.request.data.timestamp}', 20),
	('req-core.itm.res-reverse-master', 1, '@', 'copyMessage(".", "request/data/original1/request/data/body");', 10);





-- cardless tarik tunai

-- req-core.itm.0200.235000.002NMB
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES
	('req-core.itm.0200.235000.002NMB', '[itmit]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
	('req-core.itm.0200.235000.002NMB', 1, '/data/body', '/data/body', NULL, NULL),
	('req-core.itm.0200.235000.002NMB', 2, '/data/body', '/data/body', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES
	('req-core.itm.0200.235000.002NMB', 1, '!CorrelId', '${head.CorrelId}', null),
	('req-core.itm.0200.235000.002NMB', 1, '!ReplyToQ', 'ITM_CORE_REPLY', null),
	('req-core.itm.0200.235000.002NMB', 1, '!ReplyToQMgr', 'FNTBROKER.QM', null),
	('req-core.itm.0200.235000.002NMB', 1, '!code', '${head.code}', null),
	('req-core.itm.0200.235000.002NMB', 1, '!connid', '${head.connid}', null),
	('req-core.itm.0200.235000.002NMB', 1, '!destination', 'ist-syariah-conn', null),
	('req-core.itm.0200.235000.002NMB', 1, '!group', '${head.group}', null),
	('req-core.itm.0200.235000.002NMB', 1, '!mappingCode', '${head.code}', null),
	('req-core.itm.0200.235000.002NMB', 1, '!mid', '${head.mid}', null),
	('req-core.itm.0200.235000.002NMB', 1, '!queueName', 'BACKEND_ISO_IN.FNT', null),
	('req-core.itm.0200.235000.002NMB', 1, '!reqtimestamp', '${head.reqtimestamp}', null),
	('req-core.itm.0200.235000.002NMB', 1, '!sid', '${null}', null),
	('req-core.itm.0200.235000.002NMB', 1, '!source', '${head.source}', null),
	('req-core.itm.0200.235000.002NMB', 1, '!timestamp', '${head.reqtimestamp}', null),
	('req-core.itm.0200.235000.002NMB', 1, '!type', 'iso-8583-cws', null),
	('req-core.itm.0200.235000.002NMB', 1, '@', 'copyMessage();copyMessageToChild("original");', null),
	('req-core.itm.0200.235000.002NMB', 2, 'additionalDataPrivate', '${msg.additionalDataPrivate."!value".substring(0,16)}', null),
	('req-core.itm.0200.235000.002NMB', 2, 'amountTransaction', '${msg.amountTransaction}', null),
	('req-core.itm.0200.235000.002NMB', 2, 'fromAccount', '${msg.fromAccount}', null),
	('req-core.itm.0200.235000.002NMB', 2, 'isMultipleRequest', 'true', null),
	('req-core.itm.0200.235000.002NMB', 2, 'mappingCodeMultiple', 'syariah', null),
	('req-core.itm.0200.235000.002NMB', 2, 'processingCode', '940000', null),
	('req-core.itm.0200.235000.002NMB', 2, 'reservedPrivate3', '${msg.additionalDataPrivate."!value".substring(16,80)}', null);

-- req-core.itm.0200.235000.002NMB.syariah
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES
	('req-core.itm.0200.235000.002NMB.syariah', '[itmit]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
	('req-core.itm.0200.235000.002NMB.syariah', 1, '/data/body', '/data/body', 'req-core.itm.multiple-master.syariah', '1');
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES
	('req-core.itm.0200.235000.002NMB.syariah', 1, '@', 'dtree("CHARGES", "!group");', 10),
	('req-core.itm.0200.235000.002NMB.syariah', 1, 'additionalDataPrivate', '${msg.additionalDataPrivate."!value".substring(0,16).padLeft(19,"0")}${msg.fromAccount."!value".padLeft(19,"0")}${msg.amountTransaction."!value".padLeft(12,"0")}${head.request.data.body.cardAcceptorTerminalIdentification."!value".substring(0,8).padRight(8," ")}${head.request.data.body.track2Data."!value".substring(0,16).padRight(19," ")}${head.request.data.body.retrievalReferenceNumber."!value".padRight(12," ")}${msg.merchantType."!value".padLeft(4," ")}${msg.additionalDataPrivate."!value".substring(65,80)}', null),
	('req-core.itm.0200.235000.002NMB.syariah', 1, 'amountTransaction', '${msg.amountTransaction}', null),
	('req-core.itm.0200.235000.002NMB.syariah', 1, 'fromAccount', '${msg.fromAccount}', null),
	('req-core.itm.0200.235000.002NMB.syariah', 1, 'isMultipleRequest', 'true', null),
	('req-core.itm.0200.235000.002NMB.syariah', 1, 'mappingCodeMultiple', 'konven', null),
	('req-core.itm.0200.235000.002NMB.syariah', 1, 'processingCode', '${msg.processingCode}', null),
	('req-core.itm.0200.235000.002NMB.syariah', 1, 'reasonCode', 'D${getCharge(1)?decimalFormat("0",(getCharge(1).toBigDecimal())*100).padLeft(12, "0"):0}C000000000000', null),
	('req-core.itm.0200.235000.002NMB.syariah', 1, 'reservedPrivate3', '${msg.reservedPrivate3}', null);

-- req-core.itm.0200.235000.002NMB.konven
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES
	('req-core.itm.0200.235000.002NMB.konven', '[itmit]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
	('req-core.itm.0200.235000.002NMB.konven', 1, '/data/body', '/data/body', NULL, NULL),
	('req-core.itm.0200.235000.002NMB.konven', 2, '/data/request/data/body/original', '/data/body', 'req-core.itm.multiple-master.konven', '1');
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES
	('req-core.itm.0200.235000.002NMB.konven', 1, '@', 'copyMessage("original1", ".");dtree("CHARGES", "!group");', 10),
	('req-core.itm.0200.235000.002NMB.konven', 2, 'dspTransactionCode', '5194', 20),
	('req-core.itm.0200.235000.002NMB.konven', 2, '!code', 'AXISSYSTEMSDNBHD.000000${tar.dspTransactionCode."!value"}', 30),
	('req-core.itm.0200.235000.002NMB.konven', 2, '!group', '${head.request.data.group}', 30),
	('req-core.itm.0200.235000.002NMB.konven', 2, 'TLBTCD', '${tar.dspTransactionCode."!value"}', 30),
	('req-core.itm.0200.235000.002NMB.konven', 2, 'RMCKC', 'CARDLESS', null),
	('req-core.itm.0200.235000.002NMB.konven', 2, 'RMPYNM', '${head.body.cardAcceptorTerminalIdentification."!value".substring(0,8)} ${head.body.track2Data."!value".padRight(16,"0").substring(0,16)} ${head.body.retrievalReferenceNumber."!value".padRight(12,"0").substring(0,12)}', null),
	('req-core.itm.0200.235000.002NMB.konven', 2, 'TLBF01', '${getParamValueWithError("coa", "gl-tagihan-uus", "error:92Unknown coa")}', null),
	('req-core.itm.0200.235000.002NMB.konven', 2, 'TLBF02', '${head.body.amountTransaction."!value"}', null),
	('req-core.itm.0200.235000.002NMB.konven', 2, 'TLBF03', '${getParamValueWithError("coa", "gl-tagihan-uus", "error:92Unknown coa")}', null),
	('req-core.itm.0200.235000.002NMB.konven', 2, 'TLBF04', '${getCharge(1)?getCharge(1).toBigDecimal()*100:0}', null),
	('req-core.itm.0200.235000.002NMB.konven', 2, 'TLBF09', '${getParamValueWithError("coa", "gl-cash-CRM-"+msg.serviceIndicator."!value".substring(0, 3), "error:92Unknown coa")}', null),
	('req-core.itm.0200.235000.002NMB.konven', 2, 'TLBF15', '${getParamValueWithError("coa", "gl-pendapatan-crm", "error:92Unknown coa")}', null),
	('req-core.itm.0200.235000.002NMB.konven', 2, 'TLBF16', '${head.body.amountTransaction."!value"}', null),
	('req-core.itm.0200.235000.002NMB.konven', 2, 'TLXUFD', 'ATM', null);

-- req-core.itm.0200.235000.002NMB.res-reverse
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES
	('req-core.itm.0200.235000.002NMB.res-reverse', '[itmit]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
	('req-core.itm.0200.235000.002NMB.res-reverse', 1, '/data', '/data', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES
	('req-core.itm.0200.235000.002NMB.res-reverse', 1, '@', 'copyMessage();', 10),
	('req-core.itm.0200.235000.002NMB.res-reverse', 1, 'group', 'itm', 10),
	('req-core.itm.0200.235000.002NMB.res-reverse', 1, 'nolog', 'true', 10),
	('req-core.itm.0200.235000.002NMB.res-reverse', 1, 'mappingCode', '${head.request.data.mappingCode}', 10),
	('req-core.itm.0200.235000.002NMB.res-reverse', 1, 'code', '${head.mappingCode!=null?tar.mappingCode."!value":head.request.data.mappingCode."!value"}${head.source==null?(head.request.data.original1.source."!value"!="core-syariah-itm"?".istRev":".bisRev"):(head.source."!value"=="core-syariah-itm"?".istRev":".bisRev")}', 20),
	('req-core.itm.0200.235000.002NMB.res-reverse', 1, 'queueName', 'ITM_IN', null);

-- req-core.itm.0200.235000.002NMB.istRev
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES
	('req-core.itm.0200.235000.002NMB.istRev', '[itmit]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
	('req-core.itm.0200.235000.002NMB.istRev', 1, '/data/request/data/original1/request/data/body', '/data/body', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES
	('req-core.itm.0200.235000.002NMB.istRev', 1, '@', 'copyMessage();', 10),
	('req-core.itm.0200.235000.002NMB.istRev', 1, '!ReplyToQ', 'ITM_CORE_NO_NEED_REPLY', null),
	('req-core.itm.0200.235000.002NMB.istRev', 1, '!ReplyToQMgr', 'FNTBROKER.QM', null),
	('req-core.itm.0200.235000.002NMB.istRev', 1, '!queueName', 'BACKEND_ISO_IN.FNT', null),
	('req-core.itm.0200.235000.002NMB.istRev', 1, '!destination', 'ist-syariah-conn', null),
	('req-core.itm.0200.235000.002NMB.istRev', 1, '!reqtimestamp', '${head.request.data.reqtimestamp}', null),
	('req-core.itm.0200.235000.002NMB.istRev', 1, '!timestamp', '${head.request.data.reqtimestamp}', null),
	('req-core.itm.0200.235000.002NMB.istRev', 1, '!group', '${head.group}', null),
	('req-core.itm.0200.235000.002NMB.istRev', 1, '!CorrelId', '${head.CorrelId}', null),
	('req-core.itm.0200.235000.002NMB.istRev', 1, 'messageType', '0400', null),
	('req-core.itm.0200.235000.002NMB.istRev', 1, 'isMultipleRequest', 'false', null);

-- req-core.itm.0200.235000.002NMB.bisRev
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES
	('req-core.itm.0200.235000.002NMB.bisRev', '[itmit]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
	('req-core.itm.0200.235000.002NMB.bisRev', 1, '/data/request/data/original1/request/data/body', '/data/body', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES
	('req-core.itm.0200.235000.002NMB.bisRev', 1, '@', 'copyMessage();copyMessage("../original1","request/data/original1/request/data/original1");', 10),
	('req-core.itm.0200.235000.002NMB.bisRev', 1, '!ReplyToQ', 'ITM_CORE_REPLY', null),
	('req-core.itm.0200.235000.002NMB.bisRev', 1, '!ReplyToQMgr', 'ISOBROKER.QM', null),
	('req-core.itm.0200.235000.002NMB.bisRev', 1, '!queueName', 'CORE_SYARIAH_IN', null),
	('req-core.itm.0200.235000.002NMB.bisRev', 1, '!destination', 'core-syariah-itm', null),
	('req-core.itm.0200.235000.002NMB.bisRev', 1, '!reqtimestamp', '${head.request.data.reqtimestamp}', null),
	('req-core.itm.0200.235000.002NMB.bisRev', 1, '!mappingCode', '${head.mappingCode}', null),
	('req-core.itm.0200.235000.002NMB.bisRev', 1, '!group', '${head.group}', null),
	('req-core.itm.0200.235000.002NMB.bisRev', 1, '!timestamp', '${head.request.data.reqtimestamp}', null),
	('req-core.itm.0200.235000.002NMB.bisRev', 1, '!CorrelId', '${head.CorrelId}', null),
	('req-core.itm.0200.235000.002NMB.bisRev', 1, 'messageType', '0400', null),
	('req-core.itm.0200.235000.002NMB.bisRev', 1, 'isMultipleRequest', 'true', null),
	('req-core.itm.0200.235000.002NMB.bisRev', 1, 'mappingCodeMultiple', 'istRev', null);

-- res-core.itm.0200.235000.002NMB
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES
	('res-core.itm.0200.235000.002NMB', '[itmit]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
	('res-core.itm.0200.235000.002NMB', 1, '/data/body', '/data/body', 'res-core.itm.0200', '1');
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES
	('res-core.itm.0200.235000.002NMB', 1, 'additionalDataPrivate', '${msg.SNAME_F1."!value".substring(0,20)}${head.request.data.original1.request.data.original1.body.additionalDataPrivate."!value".substring(0,55)}${head.request.data.original1.request.data.original1.body.additionalDataPrivate."!value".substring(65,80).padRight(20," ")}${head.request.data.original1.request.data.original1.body.reservedPrivate3."!value"}', null),
	('res-core.itm.0200.235000.002NMB', 1, 'additionalResponseData', '${head.request.data.body.original1.body.additionalResponseData}', null),
	('res-core.itm.0200.235000.002NMB', 1, 'amountTransaction', '${head.request.data.original1.body.amountTransaction."!value".padLeft(12,"0")}', null),
	('res-core.itm.0200.235000.002NMB', 1, 'amountTransactionFee', '${decimalFormat("0",(head.request.data.body.TLBF04."!value".toBigDecimal()))}', null),
	('res-core.itm.0200.235000.002NMB', 1, 'fromAccount', '${head.request.data.original1.body.fromAccount."!value".padLeft(16,"0")}', null);

-- req-core.itm.0400.235000.002NMB
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES
	('req-core.itm.0400.235000.002NMB', '[itmit]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
	('req-core.itm.0400.235000.002NMB', 1, '/data/body', '/data/body', 'req-core.itm.0200.235000.002NMB', '1'),
	('req-core.itm.0400.235000.002NMB', 2, '/data/body', '/data/body', 'req-core.itm.0200.235000.002NMB', '2');

-- req-core.itm.0400.235000.002NMB.syariah
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES
	('req-core.itm.0400.235000.002NMB.syariah', '[itmit]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
	('req-core.itm.0400.235000.002NMB.syariah', 1, '/data/body', '/data/body', 'req-core.itm.0200.235000.002NMB.syariah', '1');

-- req-core.itm.0400.235000.002NMB.konven
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES
	('req-core.itm.0400.235000.002NMB.konven', '[itmit]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
	('req-core.itm.0400.235000.002NMB.konven', 1, '/data/body', '/data/body', 'req-core.itm.0200.235000.002NMB.konven', '1'),
	('req-core.itm.0400.235000.002NMB.konven', 2, '/data/request/data/body/original', '/data/body', 'req-core.itm.0200.235000.002NMB.konven', '2');

-- res-core.itm.0400.235000.002NMB
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES
	('res-core.itm.0400.235000.002NMB', '[itmit]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
	('res-core.itm.0400.235000.002NMB', 1, '/data/body', '/data/body', 'res-core.itm.0200.235000.002NMB', '1');




--cardless setor tunai


-- 0200.000020.002NMB

-- req-core.itm.0200.000010.002NMB (ist)
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES
    ('req-core.itm.0200.000010.002NMB', '[itmit]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
    ('req-core.itm.0200.000010.002NMB', 1, '/data/body', '/data/body', NULL, NULL),
    ('req-core.itm.0200.000010.002NMB', 2, '/data/body', '/data/body', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES
    ('req-core.itm.0200.000010.002NMB', 1, '@', 'copyMessageToChild("original");copyMessage();', 10),
    ('req-core.itm.0200.000010.002NMB', 1, '!ReplyToQ', 'ITM_CORE_REPLY', null),
    ('req-core.itm.0200.000010.002NMB', 1, '!ReplyToQMgr', 'FNTBROKER.QM', null),
    ('req-core.itm.0200.000010.002NMB', 1, '!connid', '${head.connid}', null),
    ('req-core.itm.0200.000010.002NMB', 1, '!destination', 'ist-syariah-conn', null),
    ('req-core.itm.0200.000010.002NMB', 1, '!group', '${head.group}', null),
    ('req-core.itm.0200.000010.002NMB', 1, '!mappingCode', '${head.code}', null),
    ('req-core.itm.0200.000010.002NMB', 1, '!mid', '${head.mid}', null),
    ('req-core.itm.0200.000010.002NMB', 1, '!queueName', 'BACKEND_ISO_IN.FNT', null),
    ('req-core.itm.0200.000010.002NMB', 1, '!reqtimestamp', '${head.reqtimestamp}', null),
    ('req-core.itm.0200.000010.002NMB', 1, '!sid', '${null}', null),
    ('req-core.itm.0200.000010.002NMB', 1, '!source', '${head.source}', null),
    ('req-core.itm.0200.000010.002NMB', 1, '!timestamp', '${head.reqtimestamp}', null),
    ('req-core.itm.0200.000010.002NMB', 2, 'additionalDataPrivate', '${msg.additionalDataPrivate."!value".substring(0,16)}', null),
    ('req-core.itm.0200.000010.002NMB', 2, 'fromAccount', '${msg.fromAccount."!value".substring(0,16)}', null),
    ('req-core.itm.0200.000010.002NMB', 2, 'group', '${head.group}', null),
    ('req-core.itm.0200.000010.002NMB', 2, 'isMultipleRequest', 'true', null),
    ('req-core.itm.0200.000010.002NMB', 2, 'mappingCodeMultiple', 'konven', null),
    ('req-core.itm.0200.000010.002NMB', 2, 'processingCode', '950000', null),
    ('req-core.itm.0200.000010.002NMB', 2, 'reservedPrivate3', '${msg.additionalDataPrivate."!value".substring(16,80)}', null);

-- req-core.itm.0200.000010.002NMB.konven (core)
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES
    ('req-core.itm.0200.000010.002NMB.konven', '[itmit]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
    ('req-core.itm.0200.000010.002NMB.konven', 1, '/data/body', '/data/body', NULL, NULL),
    ('req-core.itm.0200.000010.002NMB.konven', 2, '/data/request/data/body/original', '/data/body', 'req-core.itm.multiple-master.konven', '1');
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES
    ('req-core.itm.0200.000010.002NMB.konven', 1, '@', 'copyMessage("original1", ".");dtree("CHARGES", "!group");', 10),
    ('req-core.itm.0200.000010.002NMB.konven', 2, 'dspTransactionCode', '5197', 20),
    ('req-core.itm.0200.000010.002NMB.konven', 2, '!code', 'AXISSYSTEMSDNBHD.000000${tar.dspTransactionCode."!value"}', 30),
    ('req-core.itm.0200.000010.002NMB.konven', 2, '!group', '${head.request.data.group}', 30),
    ('req-core.itm.0200.000010.002NMB.konven', 2, 'TLBTCD', '${tar.dspTransactionCode."!value"}', 30),
    ('req-core.itm.0200.000010.002NMB.konven', 2, 'RMCKC', 'CARDLESS', null),
    ('req-core.itm.0200.000010.002NMB.konven', 2, 'RMPYNM', '${head.body.cardAcceptorTerminalIdentification."!value".substring(0,8)} ${head.body.track2Data."!value".padRight(16,"0").substring(0,16)} ${head.body.retrievalReferenceNumber."!value".padRight(12,"0").substring(0,12)}', null),
    ('req-core.itm.0200.000010.002NMB.konven', 2, 'TLBDS1', '${msg.timeLocalTransaction."!value"+msg.dateLocalTransaction."!value"+msg.acquiringInstitutionIdentificationCode."!value".padRight(11," ")+msg.merchantType."!value".padRight(4, " ")+msg.retrievalReferenceNumber."!value".padRight(12," ")}', null),
    ('req-core.itm.0200.000010.002NMB.konven', 2, 'TLBF01', '${getParamValueWithError("coa", "gl-cash-CRM-"+msg.serviceIndicator."!value".substring(0, 3), "error:92Unknown coa")}', null),
    ('req-core.itm.0200.000010.002NMB.konven', 2, 'TLBF02', '${msg.amountTransaction."!number"}', null),
    ('req-core.itm.0200.000010.002NMB.konven', 2, 'TLBF03', '${getParamValueWithError("coa", "gl-tagihan-uus-cardless", "error:92Unknown coa")}', null),
    ('req-core.itm.0200.000010.002NMB.konven', 2, 'TLBF04', '${getCharge(1)?getCharge(1).toBigDecimal()*100:0}', null),
    ('req-core.itm.0200.000010.002NMB.konven', 2, 'TLBF09', '${getParamValueWithError("coa", "gl-pendapatan-syah", "error:92Unknown coa")}', null),
    ('req-core.itm.0200.000010.002NMB.konven', 2, 'TLBF10', '${getCharge(1)?getCharge(1).toBigDecimal()*100:0}', null),
    ('req-core.itm.0200.000010.002NMB.konven', 2, 'TLBF15', '${getParamValueWithError("coa", "gl-kewajiban-uus-crm-cardless", "error:92Unknown coa")}', null),
    ('req-core.itm.0200.000010.002NMB.konven', 2, 'TLBF16', '${msg.amountTransaction."!number"}', null),
    ('req-core.itm.0200.000010.002NMB.konven', 2, 'TLBTPN', '${msg.retrievalReferenceNumber."!value".padRight(12," ").substring(0,12)}${msg.cardAcceptorTerminalIdentification."!value".padRight(16," ")}', null),
    ('req-core.itm.0200.000010.002NMB.konven', 2, 'TLXUFD', 'ATM', null),
    ('req-core.itm.0200.000010.002NMB.konven', 2, 'fullReverse', 'true', null),
    ('req-core.itm.0200.000010.002NMB.konven', 2, 'isMultipleRequest', 'true', null),
    ('req-core.itm.0200.000010.002NMB.konven', 2, 'mappingCodeMultiple', 'syariah', null);

-- req-core.itm.0200.000010.002NMB.syariah
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES
    ('req-core.itm.0200.000010.002NMB.syariah', '[itmit]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
    ('req-core.itm.0200.000010.002NMB.syariah', 1, '/data/body', '/data/body', 'req-core.itm.multiple-master.syariah', '1'),
    ('req-core.itm.0200.000010.002NMB.syariah', 2, '/data/request/data/body/original1/body', '/data/body', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES
    ('req-core.itm.0200.000010.002NMB.syariah', 2, '@', 'dtree("CHARGES", "!group");', null),
    ('req-core.itm.0200.000010.002NMB.syariah', 2, 'additionalDataPrivate', '${msg.additionalDataPrivate."!value".substring(0,16).padLeft(19,"0")}${msg.toAccount."!value".padLeft(19,"0")}${msg.amountTransaction."!value".padLeft(12,"0")}${msg.cardAcceptorTerminalIdentification."!value".substring(0,8).padRight(8," ")}${head.request.data.body.original1.request.data.body.original.track2Data."!value".substring(0,16).padRight(19," ")}${msg.retrievalReferenceNumber."!value".padRight(12," ")}${msg.merchantType."!value".padLeft(4," ")}${msg.additionalDataPrivate."!value".substring(65,80)}', null),
    ('req-core.itm.0200.000010.002NMB.syariah', 2, 'fromAccount', '${null}', null),
    ('req-core.itm.0200.000010.002NMB.syariah', 2, 'processingCode', '98${msg.processingCode."!value".substring(2,6)}', null),
    ('req-core.itm.0200.000010.002NMB.syariah', 2, 'reasonCode', 'D${getCharge(1)?decimalFormat("0",(getCharge(1).toBigDecimal())*100).padLeft(12, "0"):0}C000000000000', null),
    ('req-core.itm.0200.000010.002NMB.syariah', 2, 'reservedPrivate3', '${msg.reservedPrivate3}', null),
    ('req-core.itm.0200.000010.002NMB.syariah', 2, 'toAccount', '${msg.toAccount}', null);

-- res-core.itm.0200.000010.002NMB
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES
    ('res-core.itm.0200.000010.002NMB', '[itmit]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
    ('res-core.itm.0200.000010.002NMB', 1, '/data/body', '/data/body', 'res-core.itm.0200', '1'),
    ('res-core.itm.0200.000010.002NMB', 2, '/data/request/data/original1/request/data/body/original1/body', '/data/body', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES
    ('res-core.itm.0200.000010.002NMB', 1, 'additionalResponseData', '${msg.additionalResponseData}', 20),
    ('res-core.itm.0200.000010.002NMB', 2, 'additionalDataPrivate', '${head.body.additionalDataPrivate."!value".substring(127,142).padRight(20," ")}${msg.additionalDataPrivate."!value".substring(0,16)}${msg.additionalDataPrivate."!value".substring(16,23)}${msg.additionalDataPrivate."!value".substring(35,55)}${msg.additionalDataPrivate."!value".substring(65,80).padRight(20," ")}${msg.reservedPrivate3."!value"}', 20),
    ('res-core.itm.0200.000010.002NMB', 2, 'amountTransactionFee', '${decimalFormat("0",(head.request.data.body.charge_value_1."!value".toBigDecimal()*100))}', 20),
    ('res-core.itm.0200.000010.002NMB', 2, 'toAccount', '${msg.toAccount."!value"}', 20);

-- req-core.itm.0200.000010.002NMB.res-reverse
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES
	('req-core.itm.0200.000010.002NMB.res-reverse', '[itmit]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
	('req-core.itm.0200.000010.002NMB.res-reverse', 1, '/data', '/data', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES
	('req-core.itm.0200.000010.002NMB.res-reverse', 1, '@', 'copyMessage();', 10),
	('req-core.itm.0200.000010.002NMB.res-reverse', 1, 'group', 'itm', 10),
	('req-core.itm.0200.000010.002NMB.res-reverse', 1, 'nolog', 'true', 10),
	('req-core.itm.0200.000010.002NMB.res-reverse', 1, 'mappingCode', '${head.request.data.mappingCode}', 10),
	('req-core.itm.0200.000010.002NMB.res-reverse', 1, 'code', '${head.mappingCode!=null?tar.mappingCode."!value":head.request.data.mappingCode."!value"}${head.destination!=null?(head.destination."!value"=="core-itm"?".istRev":".coreRev"):(head.adaptor."!value"=="core-syariah-itm"?".coreRev":".istRev")}', 20),
	('req-core.itm.0200.000010.002NMB.res-reverse', 1, 'queueName', 'ITM_IN', null);

-- req-core.itm.0200.000010.002NMB.coreRev
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES
	('req-core.itm.0200.000010.002NMB.coreRev', '[itmit]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
	('req-core.itm.0200.000010.002NMB.coreRev', 1, '/data/request/data/original1/request/data/body', '/data/body', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES
	('req-core.itm.0200.000010.002NMB.coreRev', 1, '@', 'copyMessage();', 10),
	('req-core.itm.0200.000010.002NMB.coreRev', 1, '!ReplyToQ', 'ITM_CORE_REPLY', null),
	('req-core.itm.0200.000010.002NMB.coreRev', 1, '!queueName', 'CORE_IN', null),
	('req-core.itm.0200.000010.002NMB.coreRev', 1, '!destination', 'core-itm', null),
	('req-core.itm.0200.000010.002NMB.coreRev', 1, '!mappingCode', '${head.request.data.mappingCode}', null),
	('req-core.itm.0200.000010.002NMB.coreRev', 1, '!reqtimestamp', '${head.request.data.reqtimestamp}', null),
	('req-core.itm.0200.000010.002NMB.coreRev', 1, '!timestamp', '${head.request.data.reqtimestamp}', null),
	('req-core.itm.0200.000010.002NMB.coreRev', 1, '!group', '${head.group}', null),
	('req-core.itm.0200.000010.002NMB.coreRev', 1, '!CorrelId', '${head.CorrelId}', null),
	('req-core.itm.0200.000010.002NMB.coreRev', 1, 'messageType', '0400', null),
	('req-core.itm.0200.000010.002NMB.coreRev', 1, 'mappingCodeMultiple', 'istRev', null),
	('req-core.itm.0200.000010.002NMB.coreRev', 1, 'isMultipleRequest', 'true', null);
	
-- req-core.itm.0200.000010.002NMB.istRev
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES
	('req-core.itm.0200.000010.002NMB.istRev', '[itmit]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
	('req-core.itm.0200.000010.002NMB.istRev', 1, '/data/request/data/body/original1/request/data/body', '/data/body', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES
	('req-core.itm.0200.000010.002NMB.istRev', 1, '@', 'copyMessage();', 10),
	('req-core.itm.0200.000010.002NMB.istRev', 1, '!ReplyToQ', 'ITM_CORE_NO_NEED_REPLY', null),
	('req-core.itm.0200.000010.002NMB.istRev', 1, '!ReplyToQMgr', 'FNTBROKER.QM', null),
	('req-core.itm.0200.000010.002NMB.istRev', 1, '!queueName', 'BACKEND_ISO_IN.FNT', null),
	('req-core.itm.0200.000010.002NMB.istRev', 1, '!destination', 'ist-syariah-conn', null),
	('req-core.itm.0200.000010.002NMB.istRev', 1, '!reqtimestamp', '${head.request.data.reqtimestamp}', null),
	('req-core.itm.0200.000010.002NMB.istRev', 1, '!timestamp', '${head.request.data.reqtimestamp}', null),
	('req-core.itm.0200.000010.002NMB.istRev', 1, '!group', '${head.group}', null),
	('req-core.itm.0200.000010.002NMB.istRev', 1, '!CorrelId', '${head.CorrelId}', null),
	('req-core.itm.0200.000010.002NMB.istRev', 1, 'messageType', '0400', null),
	('req-core.itm.0200.000010.002NMB.istRev', 1, 'isMultipleRequest', 'false', null);



-- 0200.000020.002NMB

-- req-core.itm.0200.000020.002NMB (ist)
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES
    ('req-core.itm.0200.000020.002NMB', '[itmit]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
    ('req-core.itm.0200.000020.002NMB', 1, '/data/body', '/data/body', 'req-core.itm.0200.000010.002NMB', 1),
    ('req-core.itm.0200.000020.002NMB', 2, '/data/body', '/data/body', 'req-core.itm.0200.000010.002NMB', 2);


-- req-core.itm.0200.000020.002NMB.konven (core)
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES
    ('req-core.itm.0200.000020.002NMB.konven', '[itmit]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
    ('req-core.itm.0200.000020.002NMB.konven', 1, '/data/body', '/data/body', 'req-core.itm.0200.000010.002NMB.konven', 1),
    ('req-core.itm.0200.000020.002NMB.konven', 2, '/data/request/data/body/original', '/data/body', 'req-core.itm.0200.000010.002NMB.konven', 2);

-- req-core.itm.0200.000020.002NMB.syariah (bis)
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES
    ('req-core.itm.0200.000020.002NMB.syariah', '[itmit]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
    ('req-core.itm.0200.000020.002NMB.syariah', 1, '/data/body', '/data/body', 'req-core.itm.0200.000010.002NMB.syariah', 1),
    ('req-core.itm.0200.000020.002NMB.syariah', 2, '/data/request/data/body/original1/body', '/data/body', 'req-core.itm.0200.000010.002NMB.syariah', 2);


-- res-core.itm.0200.000020.002NMB
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES
    ('res-core.itm.0200.000020.002NMB', '[itmit]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
    ('res-core.itm.0200.000020.002NMB', 1, '/data/body', '/data/body', 'res-core.itm.0200.000010.002NMB', 1),
    ('res-core.itm.0200.000020.002NMB', 2, '/data/request/data/original1/request/data/body/original1/body', '/data/body', 'res-core.itm.0200.000010.002NMB', 2);


-- req-core.itm.0200.000020.002NMB.res-reverse
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES
	('req-core.itm.0200.000020.002NMB.res-reverse', '[itmit]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
	('req-core.itm.0200.000020.002NMB.res-reverse', 1, '/data', '/data', 'req-core.itm.0200.000010.002NMB.res-reverse', 1);


-- req-core.itm.0200.000020.002NMB.coreRev (reversal core)
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES
	('req-core.itm.0200.000020.002NMB.coreRev', '[itmit]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
	('req-core.itm.0200.000020.002NMB.coreRev', 1, '/data/request/data/original1/request/data/body', '/data/body', 'req-core.itm.0200.000010.002NMB.coreRev', 1);

	
-- req-core.itm.0200.000020.002NMB.istRev (reversal ist)
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES
	('req-core.itm.0200.000020.002NMB.istRev', '[itmit]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
	('req-core.itm.0200.000020.002NMB.istRev', 1, '/data/request/data/body/original1/request/data/body', '/data/body', 'req-core.itm.0200.000010.002NMB.istRev', 1);




--  0400.000010.002NMB

-- req-core.itm.0400.000010.002NMB (ist)
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES
    ('req-core.itm.0400.000010.002NMB', '[itmit]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
    ('req-core.itm.0400.000010.002NMB', 1, '/data/body', '/data/body', 'req-core.itm.0200.000010.002NMB', 1),
    ('req-core.itm.0400.000010.002NMB', 2, '/data/body', '/data/body', 'req-core.itm.0200.000010.002NMB', 2);


-- req-core.itm.0400.000010.002NMB.konven (core)
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES
    ('req-core.itm.0400.000010.002NMB.konven', '[itmit]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
    ('req-core.itm.0400.000010.002NMB.konven', 1, '/data/body', '/data/body', 'req-core.itm.0200.000010.002NMB.konven', 1),
    ('req-core.itm.0400.000010.002NMB.konven', 2, '/data/request/data/body/original', '/data/body', 'req-core.itm.0200.000010.002NMB.konven', 2);
    

-- req-core.itm.0400.000010.002NMB.syariah (bis)
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES
    ('req-core.itm.0400.000010.002NMB.syariah', '[itmit]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
    ('req-core.itm.0400.000010.002NMB.syariah', 1, '/data/body', '/data/body', 'req-core.itm.0200.000010.002NMB.syariah', 1),
    ('req-core.itm.0400.000010.002NMB.syariah', 2, '/data/request/data/body/original1/body', '/data/body', 'req-core.itm.0200.000010.002NMB.syariah', 2);


-- res-core.itm.0400.000010.002NMB
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES
    ('res-core.itm.0400.000010.002NMB', '[itmit]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
    ('res-core.itm.0400.000010.002NMB', 1, '/data/body', '/data/body', 'res-core.itm.0200.000010.002NMB', 1),
    ('res-core.itm.0400.000010.002NMB', 2, '/data/request/data/original1/request/data/body/original1/body', '/data/body', 'res-core.itm.0200.000010.002NMB', 2);


-- req-core.itm.0400.000010.002NMB.res-reverse
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES
	('req-core.itm.0400.000010.002NMB.res-reverse', '[itmit]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
	('req-core.itm.0400.000010.002NMB.res-reverse', 1, '/data', '/data', 'req-core.itm.0200.000010.002NMB.res-reverse', 1);


-- req-core.itm.0400.000010.002NMB.coreRev (reversal core)
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES
	('req-core.itm.0400.000010.002NMB.coreRev', '[itmit]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
	('req-core.itm.0400.000010.002NMB.coreRev', 1, '/data/request/data/original1/request/data/body', '/data/body', 'req-core.itm.0200.000010.002NMB.coreRev', 1);

	
-- req-core.itm.0400.000010.002NMB.istRev (reversal ist)
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES
	('req-core.itm.0400.000010.002NMB.istRev', '[itmit]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
	('req-core.itm.0400.000010.002NMB.istRev', 1, '/data/request/data/body/original1/request/data/body', '/data/body', 'req-core.itm.0200.000010.002NMB.istRev', 1);




--  0400.000020.002NMB

-- req-core.itm.0400.000020.002NMB (ist)
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES
    ('req-core.itm.0400.000020.002NMB', '[itmit]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
    ('req-core.itm.0400.000020.002NMB', 1, '/data/body', '/data/body', 'req-core.itm.0200.000010.002NMB', 1),
    ('req-core.itm.0400.000020.002NMB', 2, '/data/body', '/data/body', 'req-core.itm.0200.000010.002NMB', 2);


-- req-core.itm.0400.000020.002NMB.konven (core)
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES
    ('req-core.itm.0400.000020.002NMB.konven', '[itmit]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
    ('req-core.itm.0400.000020.002NMB.konven', 1, '/data/body', '/data/body', 'req-core.itm.0200.000010.002NMB.konven', 1),
    ('req-core.itm.0400.000020.002NMB.konven', 2, '/data/request/data/body/original', '/data/body', 'req-core.itm.0200.000010.002NMB.konven', 2);

-- req-core.itm.0400.000020.002NMB.syariah (bis)
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES
    ('req-core.itm.0400.000020.002NMB.syariah', '[itmit]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
    ('req-core.itm.0400.000020.002NMB.syariah', 1, '/data/body', '/data/body', 'req-core.itm.0200.000010.002NMB.syariah', 1),
    ('req-core.itm.0400.000020.002NMB.syariah', 2, '/data/request/data/body/original1/body', '/data/body', 'req-core.itm.0200.000010.002NMB.syariah', 2);


-- res-core.itm.0400.000020.002NMB
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES
    ('res-core.itm.0400.000020.002NMB', '[itmit]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
    ('res-core.itm.0400.000020.002NMB', 1, '/data/body', '/data/body', 'res-core.itm.0200.000010.002NMB', 1),
    ('res-core.itm.0400.000020.002NMB', 2, '/data/request/data/original1/request/data/body/original1/body', '/data/body', 'res-core.itm.0200.000010.002NMB', 2);


-- req-core.itm.0400.000020.002NMB.res-reverse
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES
	('req-core.itm.0400.000020.002NMB.res-reverse', '[itmit]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
	('req-core.itm.0400.000020.002NMB.res-reverse', 1, '/data', '/data', 'req-core.itm.0200.000010.002NMB.res-reverse', 1);


-- req-core.itm.0400.000020.002NMB.coreRev (reversal core)
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES
	('req-core.itm.0400.000020.002NMB.coreRev', '[itmit]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
	('req-core.itm.0400.000020.002NMB.coreRev', 1, '/data/request/data/original1/request/data/body', '/data/body', 'req-core.itm.0200.000010.002NMB.coreRev', 1);

	
-- req-core.itm.0400.000020.002NMB.istRev (reversal ist)
INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES
	('req-core.itm.0400.000020.002NMB.istRev', '[itmit]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES
	('req-core.itm.0400.000020.002NMB.istRev', 1, '/data/request/data/body/original1/request/data/body', '/data/body', 'req-core.itm.0200.000010.002NMB.istRev', 1);

