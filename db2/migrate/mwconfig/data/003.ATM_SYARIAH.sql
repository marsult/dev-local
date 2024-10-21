INSERT INTO MWCONFIG.DTREE(GROUP, PATH, VALUE, MODULE, MODIFIED_BY, TIMESTAMP)
	VALUES 
		('ITM-CODE', '0200.501000', '0200.501000.${msg.reservedPrivate2.substring(0, 6)}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('ITM-CODE', '0200.502000', '0200.502000.${msg.reservedPrivate2.substring(0, 6)}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('ITM-CODE', '0200.511000', '0200.511000.${msg.reservedPrivate2.substring(0, 6)}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('ITM-CODE', '0200.512000', '0200.512000.${msg.reservedPrivate2.substring(0, 6)}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('ITM-CODE', '0200.601000', '0200.601000.${msg.reservedPrivate2.substring(0, 6)}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('ITM-CODE', '0200.602000', '0200.602000.${msg.reservedPrivate2.substring(0, 6)}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('ITM-CODE', '0200.611000', '0200.611000.${msg.reservedPrivate2.substring(0, 6)}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('ITM-CODE', '0200.612000', '0200.612000.${msg.reservedPrivate2.substring(0, 6)}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('ITM-CODE', '0200.621000', '0200.621000.${msg.reservedPrivate2.substring(6, 9)}${msg.reservedPrivate2.substring(6, 9).equals("001") || msg.reservedPrivate2.substring(6, 9).equals("MVC")?(msg.toAccount==null?"":(msg.toAccount?.length()<12||msg.toAccount?.length()>=16)&&msg.toAccount?.substring(0,1).toBigDecimal()>=8?".VA"+getParamValue("ITM-VA-INST",msg.toAccount?.substring(1,5),""):""):""}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('ITM-CODE', '0200.622000', '0200.622000.${msg.reservedPrivate2.substring(6, 9)}${msg.reservedPrivate2.substring(6, 9).equals("001") || msg.reservedPrivate2.substring(6, 9).equals("MVC")?(msg.toAccount==null?"":(msg.toAccount?.length()<12||msg.toAccount?.length()>=16)&&msg.toAccount?.substring(0,1).toBigDecimal()>=8?".VA"+getParamValue("ITM-VA-INST",msg.toAccount?.substring(1,5),""):""):""}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('ITM-CODE', '0200.631000', '0200.631000.${msg.reservedPrivate2.substring(0, 9)}${msg.reservedPrivate2.substring(6, 9).equals("001") || msg.reservedPrivate2.substring(6, 9).equals("MVC")?(msg.toAccount==null?"":(msg.toAccount?.length()<12||msg.toAccount?.length()>=16)&&msg.toAccount?.substring(0,1).toBigDecimal()>=8?".VA"+getParamValue("ITM-VA-INST",msg.toAccount?.substring(1,5),""):""):""}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('ITM-CODE', '0210.501000', '0210.501000.${msg.reservedPrivate2.substring(0, 6)}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('ITM-CODE', '0210.502000', '0210.502000.${msg.reservedPrivate2.substring(0, 6)}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('ITM-CODE', '0210.511000', '0210.511000.${msg.reservedPrivate2.substring(0, 6)}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('ITM-CODE', '0210.512000', '0210.512000.${msg.reservedPrivate2.substring(0, 6)}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('ITM-CODE', '0210.601000', '0210.601000.${msg.reservedPrivate2.substring(0, 6)}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('ITM-CODE', '0210.602000', '0210.602000.${msg.reservedPrivate2.substring(0, 6)}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('ITM-CODE', '0210.611000', '0210.611000.${msg.reservedPrivate2.substring(0, 6)}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('ITM-CODE', '0210.612000', '0210.612000.${msg.reservedPrivate2.substring(0, 6)}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('ITM-CODE', '0210.621000', '0210.621000.${msg.reservedPrivate2.substring(6, 9)}${msg.reservedPrivate2.substring(6, 9).equals("001") || msg.reservedPrivate2.substring(6, 9).equals("MVC")?(msg.toAccount==null?"":(msg.toAccount?.length()<12||msg.toAccount?.length()>=16)&&msg.toAccount?.substring(0,1).toBigDecimal()>=8?".VA"+getParamValue("ITM-VA-INST",msg.toAccount?.substring(1,5),""):""):""}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('ITM-CODE', '0210.622000', '0210.622000.${msg.reservedPrivate2.substring(6, 9)}${msg.reservedPrivate2.substring(6, 9).equals("001") || msg.reservedPrivate2.substring(6, 9).equals("MVC")?(msg.toAccount==null?"":(msg.toAccount?.length()<12||msg.toAccount?.length()>=16)&&msg.toAccount?.substring(0,1).toBigDecimal()>=8?".VA"+getParamValue("ITM-VA-INST",msg.toAccount?.substring(1,5),""):""):""}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('ITM-CODE', '0210.631000', '0210.631000.${msg.reservedPrivate2.substring(0, 9)}${msg.reservedPrivate2.substring(6, 9).equals("001") || msg.reservedPrivate2.substring(6, 9).equals("MVC")?(msg.toAccount==null?"":(msg.toAccount?.length()<12||msg.toAccount?.length()>=16)&&msg.toAccount?.substring(0,1).toBigDecimal()>=8?".VA"+getParamValue("ITM-VA-INST",msg.toAccount?.substring(1,5),""):""):""}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
		('ITM-CODE', '0400.501000', '0400.501000.${msg.reservedPrivate2.substring(0, 6)}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('ITM-CODE', '0400.502000', '0400.502000.${msg.reservedPrivate2.substring(0, 6)}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('ITM-CODE', '0400.511000', '0400.511000.${msg.reservedPrivate2.substring(0, 6)}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('ITM-CODE', '0400.512000', '0400.512000.${msg.reservedPrivate2.substring(0, 6)}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('ITM-CODE', '0400.601000', '0400.601000.${msg.reservedPrivate2.substring(0, 6)}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('ITM-CODE', '0400.602000', '0400.602000.${msg.reservedPrivate2.substring(0, 6)}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('ITM-CODE', '0400.611000', '0400.611000.${msg.reservedPrivate2.substring(0, 6)}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('ITM-CODE', '0400.612000', '0400.612000.${msg.reservedPrivate2.substring(0, 6)}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('ITM-CODE', '0400.621000', '0400.621000.${msg.reservedPrivate2.substring(6, 9)}${msg.reservedPrivate2.substring(6, 9).equals("001") || msg.reservedPrivate2.substring(6, 9).equals("MVC")?(msg.toAccount==null?"":(msg.toAccount?.length()<12||msg.toAccount?.length()>=16)&&msg.toAccount?.substring(0,1).toBigDecimal()>=8?".VA"+getParamValue("ITM-VA-INST",msg.toAccount?.substring(1,5),""):""):""}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('ITM-CODE', '0400.622000', '0400.622000.${msg.reservedPrivate2.substring(6, 9)}${msg.reservedPrivate2.substring(6, 9).equals("001") || msg.reservedPrivate2.substring(6, 9).equals("MVC")?(msg.toAccount==null?"":(msg.toAccount?.length()<12||msg.toAccount?.length()>=16)&&msg.toAccount?.substring(0,1).toBigDecimal()>=8?".VA"+getParamValue("ITM-VA-INST",msg.toAccount?.substring(1,5),""):""):""}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('ITM-CODE', '0400.631000', '0400.631000.${msg.reservedPrivate2.substring(0, 9)}${msg.reservedPrivate2.substring(6, 9).equals("001") || msg.reservedPrivate2.substring(6, 9).equals("MVC")?(msg.toAccount==null?"":(msg.toAccount?.length()<12||msg.toAccount?.length()>=16)&&msg.toAccount?.substring(0,1).toBigDecimal()>=8?".VA"+getParamValue("ITM-VA-INST",msg.toAccount?.substring(1,5),""):""):""}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('ITM-CODE', '0410.501000', '0410.501000.${msg.reservedPrivate2.substring(0, 6)}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('ITM-CODE', '0410.502000', '0410.502000.${msg.reservedPrivate2.substring(0, 6)}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('ITM-CODE', '0410.511000', '0410.511000.${msg.reservedPrivate2.substring(0, 6)}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('ITM-CODE', '0410.512000', '0410.512000.${msg.reservedPrivate2.substring(0, 6)}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('ITM-CODE', '0410.601000', '0410.601000.${msg.reservedPrivate2.substring(0, 6)}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('ITM-CODE', '0410.602000', '0410.602000.${msg.reservedPrivate2.substring(0, 6)}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('ITM-CODE', '0410.611000', '0410.611000.${msg.reservedPrivate2.substring(0, 6)}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('ITM-CODE', '0410.612000', '0410.612000.${msg.reservedPrivate2.substring(0, 6)}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('ITM-CODE', '0410.621000', '0410.621000.${msg.reservedPrivate2.substring(6, 9)}${msg.reservedPrivate2.substring(6, 9).equals("001") || msg.reservedPrivate2.substring(6, 9).equals("MVC")?(msg.toAccount==null?"":(msg.toAccount?.length()<12||msg.toAccount?.length()>=16)&&msg.toAccount?.substring(0,1).toBigDecimal()>=8?".VA"+getParamValue("ITM-VA-INST",msg.toAccount?.substring(1,5),""):""):""}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('ITM-CODE', '0410.622000', '0410.622000.${msg.reservedPrivate2.substring(6, 9)}${msg.reservedPrivate2.substring(6, 9).equals("001") || msg.reservedPrivate2.substring(6, 9).equals("MVC")?(msg.toAccount==null?"":(msg.toAccount?.length()<12||msg.toAccount?.length()>=16)&&msg.toAccount?.substring(0,1).toBigDecimal()>=8?".VA"+getParamValue("ITM-VA-INST",msg.toAccount?.substring(1,5),""):""):""}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('ITM-CODE', '0410.631000', '0410.631000.${msg.reservedPrivate2.substring(0, 9)}${msg.reservedPrivate2.substring(6, 9).equals("001") || msg.reservedPrivate2.substring(6, 9).equals("MVC")?(msg.toAccount==null?"":(msg.toAccount?.length()<12||msg.toAccount?.length()>=16)&&msg.toAccount?.substring(0,1).toBigDecimal()>=8?".VA"+getParamValue("ITM-VA-INST",msg.toAccount?.substring(1,5),""):""):""}', '[itm]', CURRENT USER, CURRENT TIMESTAMP);


INSERT INTO MWCONFIG.DTREE(GROUP, PATH, VALUE, MODULE, MODIFIED_BY, TIMESTAMP) 
VALUES  ('CHARGES', 'itm', 'itm|${msg.processingCode}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('CHARGES', 'itm|501000', 'itm|50|${msg.reservedPrivate2."!value".substring(3,6)}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
		('CHARGES', 'itm|502000', 'itm|50|${msg.reservedPrivate2."!value".substring(3,6)}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('CHARGES', 'itm|50|001', 'itm link inquiry balance', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('CHARGES', 'itm|50|BMP', 'itm-amp-link-inquiry', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('CHARGES', 'itm|50|HBR', 'itm link inquiry balance', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('CHARGES', 'itm|50|LMP', 'itm-amp-link-inquiry', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('CHARGES', 'itm-amp-link-inquiry', 'itm-amp-link-inquiry-${msg.issuerTraceId}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('CHARGES', 'itm-amp-link-inquiry-BHG', '----', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('CHARGES', 'itm-amp-link-inquiry-BPD', '----', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('CHARGES', 'itm-amp-link-inquiry-BST', '----', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('CHARGES', 'itm-amp-link-inquiry-EDC', '----', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('CHARGES', 'itm-amp-link-inquiry-LMP', '----', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('CHARGES', 'itm-amp-link-inquiry-XMP', '----', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('CHARGES', 'itm|611000', 'itm bersama withdrawal ${getParamValueWithError("acquire-group-bersama", msg.acquiringInstitutionIdentificationCode."!value".padLeft(11, "0"), "error:92Unknown acquire group " +msg.acquiringInstitutionIdentificationCode."!value")}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('CHARGES', 'itm|612000', 'itm bersama withdrawal ${getParamValueWithError("acquire-group-bersama", msg.acquiringInstitutionIdentificationCode."!value".padLeft(11, "0"), "error:92Unknown acquire group " +msg.acquiringInstitutionIdentificationCode."!value")}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('CHARGES', 'itm|611000|AMP', 'itm amp withdrawal', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('CHARGES', 'itm|611000|SAT', 'itm bersama withdrawal ${getParamValueWithError("acquire-group-bersama", msg.acquiringInstitutionIdentificationCode."!value".padLeft(11, "0"), "error:92Unknown acquire group " +msg.acquiringInstitutionIdentificationCode."!value")}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('CHARGES', 'itm|612000|AMP', 'itm amp withdrawal', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('CHARGES', 'itm|612000|SAT', 'itm bersama withdrawal ${getParamValueWithError("acquire-group-bersama", msg.acquiringInstitutionIdentificationCode."!value".padLeft(11, "0"), "error:92Unknown acquire group " +msg.acquiringInstitutionIdentificationCode."!value")}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('CHARGES', 'itm|611000|001', 'itm bersama withdrawal ${getParamValueWithError("acquire-group-bersama", msg.acquiringInstitutionIdentificationCode."!value".padLeft(11, "0"), "error:92Unknown acquire group " +msg.acquiringInstitutionIdentificationCode."!value")}', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('CHARGES', 'itm|612000|001', 'itm bersama withdrawal ${getParamValueWithError("acquire-group-bersama", msg.acquiringInstitutionIdentificationCode."!value".padLeft(11, "0"), "error:92Unknown acquire group " +msg.acquiringInstitutionIdentificationCode."!value")}', '[itm]', CURRENT USER, CURRENT TIMESTAMP);

INSERT INTO MWCONFIG.DTREE (GROUP, PATH, VALUE, MODULE, MODIFIED_BY, TIMESTAMP) 
VALUES  ('CHARGES', 'itm bersama inquiry balance', '----', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('CHARGES', 'itm bersama transfer A', '----', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('CHARGES', 'itm bersama transfer B', '----', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('CHARGES', 'itm bersama transfer BB', '----', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('CHARGES', 'itm bersama transfer C', '----', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('CHARGES', 'itm bersama withdrawal A', '----', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('CHARGES', 'itm bersama withdrawal B', '----', '[itm]', CURRENT USER, CURRENT TIMESTAMP),
        ('CHARGES', 'itm bersama withdrawal C', '----', '[itm]', CURRENT USER, CURRENT TIMESTAMP);

INSERT INTO MWCONFIG.PARAM_MAP (GROUP, NAME, VALUE, SEQ, MODIFIED_BY, TIMESTAMP, DESCRIPTION) 
VALUES  ('acquire-group-bersama', '00000000002', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'BRI'),
        ('acquire-group-bersama', '00000000008', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK MANDIRI'),
        ('acquire-group-bersama', '00000000009', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'BNI 46'),
        ('acquire-group-bersama', '00000000011', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK DANAMON'),
        ('acquire-group-bersama', '00000000013', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK PERMATA'),
        ('acquire-group-bersama', '00000000016', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'MAYBANK'),
        ('acquire-group-bersama', '00000000019', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK PANIN'),
        ('acquire-group-bersama', '00000000022', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK CIMB NIAGA'),
        ('acquire-group-bersama', '00000000023', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK UOB INDONESIA'),
        ('acquire-group-bersama', '00000000028', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK OCBC NISP'),
        ('acquire-group-bersama', '00000000031', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'CITIBANK'),
        ('acquire-group-bersama', '00000000041', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'HSBC'),
        ('acquire-group-bersama', '00000000046', 'B', null, CURRENT USER, CURRENT TIMESTAMP, 'DBS INDONESIA'),
        ('acquire-group-bersama', '00000000050', 'B', null, CURRENT USER, CURRENT TIMESTAMP, 'SCB'),
        ('acquire-group-bersama', '00000000054', 'A', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK CAPITAL'),
        ('acquire-group-bersama', '00000000061', 'B', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK ANZ INDONESIA'),
        ('acquire-group-bersama', '00000000068', 'A', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK WOORI INDONESIA'),
        ('acquire-group-bersama', '00000000069', 'A', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK OF CHINA'),
        ('acquire-group-bersama', '00000000076', 'A', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK BUMI ARTA'),
        ('acquire-group-bersama', '00000000087', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'HSBC INDONESIA'),
        ('acquire-group-bersama', '00000000089', 'B', null, CURRENT USER, CURRENT TIMESTAMP, 'RABOBANK'),
        ('acquire-group-bersama', '00000000095', 'B', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK JTRUST INDONESIA'),
        ('acquire-group-bersama', '00000000097', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK MAYAPADA'),
        ('acquire-group-bersama', '00000000110', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK BJB'),
        ('acquire-group-bersama', '00000000111', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK DKI'),
        ('acquire-group-bersama', '00000000112', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'BPD DIY'),
        ('acquire-group-bersama', '00000000113', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK JATENG'),
        ('acquire-group-bersama', '00000000114', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK JATIM'),
        ('acquire-group-bersama', '00000000115', 'B', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK JAMBI'),
        ('acquire-group-bersama', '00000000116', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK ACEH'),
        ('acquire-group-bersama', '00000000117', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK SUMUT'),
        ('acquire-group-bersama', '00000000118', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK NAGARI'),
        ('acquire-group-bersama', '00000000119', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK RIAUKEPRI'),
        ('acquire-group-bersama', '00000000120', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK SUMSEL BABEL'),
        ('acquire-group-bersama', '00000000121', 'B', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK LAMPUNG'),
        ('acquire-group-bersama', '00000000122', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK KALSEL'),
        ('acquire-group-bersama', '00000000123', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK KALBAR'),
        ('acquire-group-bersama', '00000000124', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK KALTIM'),
        ('acquire-group-bersama', '00000000125', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK KALTENG'),
        ('acquire-group-bersama', '00000000126', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK SULSELBAR'),
        ('acquire-group-bersama', '00000000127', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK SULUT'),
        ('acquire-group-bersama', '00000000128', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK NTB'),
        ('acquire-group-bersama', '00000000129', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'BPD BALI'),
        ('acquire-group-bersama', '00000000130', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK NTT'),
        ('acquire-group-bersama', '00000000131', 'B', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK MALUKU'),
        ('acquire-group-bersama', '00000000132', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK PAPUA'),
        ('acquire-group-bersama', '00000000133', 'B', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK BENGKULU'),
        ('acquire-group-bersama', '00000000134', 'B', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK SULTENG'),
        ('acquire-group-bersama', '00000000135', 'B', null, CURRENT USER, CURRENT TIMESTAMP, 'BPD SULTRA'),
        ('acquire-group-bersama', '00000000137', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK BANTEN'),
        ('acquire-group-bersama', '00000000145', 'B', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK BNP'),
        ('acquire-group-bersama', '00000000146', 'A', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK OF INDIA INDONESIA'),
        ('acquire-group-bersama', '00000000147', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK MUAMALAT'),
        ('acquire-group-bersama', '00000000151', 'B', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK MESTIKA'),
        ('acquire-group-bersama', '00000000152', 'B', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK SHINHAN'),
        ('acquire-group-bersama', '00000000153', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK SINARMAS'),
        ('acquire-group-bersama', '00000000161', 'B', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK GANESHA'),
        ('acquire-group-bersama', '00000000164', 'B', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK ICBC'),
        ('acquire-group-bersama', '00000000167', 'B', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK QNB INDONESIA'),
        ('acquire-group-bersama', '00000000200', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK BTN'),
        ('acquire-group-bersama', '00000000212', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK WOORI SAUDARA'),
        ('acquire-group-bersama', '00000000213', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK BTPN'),
        ('acquire-group-bersama', '00000000422', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'BRI SYARIAH'),
        ('acquire-group-bersama', '00000000425', 'B', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK JABAR BANTEN SYARIAH'),
        ('acquire-group-bersama', '00000000426', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK MEGA'),
        ('acquire-group-bersama', '00000000441', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK BUKOPIN'),
        ('acquire-group-bersama', '00000000451', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK SYARIAH MANDIRI'),
        ('acquire-group-bersama', '00000000484', 'A', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK KEB HANA'),
        ('acquire-group-bersama', '00000000485', 'B', null, CURRENT USER, CURRENT TIMESTAMP, 'MNC BANK'),
        ('acquire-group-bersama', '00000000490', 'A', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK YUDHA BHAKTI'),
        ('acquire-group-bersama', '00000000494', 'B', null, CURRENT USER, CURRENT TIMESTAMP, 'BRI AGRO'),
        ('acquire-group-bersama', '00000000503', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK NATIONALNOBU'),
        ('acquire-group-bersama', '00000000506', 'B', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK MEGA SYARIAH'),
        ('acquire-group-bersama', '00000000513', 'B', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK INA'),
        ('acquire-group-bersama', '00000000517', 'B', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK PANIN SYARIAH'),
        ('acquire-group-bersama', '00000000526', 'A', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK DINAR'),
        ('acquire-group-bersama', '00000000535', 'B', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK KESEJAHTERAAN EKONOMI'),
        ('acquire-group-bersama', '00000000542', 'A', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK ARTOS'),
        ('acquire-group-bersama', '00000000547', 'A', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK BTPN SYARIAH'),
        ('acquire-group-bersama', '00000000553', 'B', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK MAYORA'),
        ('acquire-group-bersama', '00000000555', 'B', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK INDEX'),
        ('acquire-group-bersama', '00000000558', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK BANTEN'),
        ('acquire-group-bersama', '00000000564', 'A', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK MANTAP'),
        ('acquire-group-bersama', '00000000600', 'B', null, CURRENT USER, CURRENT TIMESTAMP, 'ATMB LSB'),
        ('acquire-group-bersama', '00000000688', 'B', null, CURRENT USER, CURRENT TIMESTAMP, 'BPR KS'),
        ('acquire-group-bersama', '00000000699', 'A', null, CURRENT USER, CURRENT TIMESTAMP, 'BPR EKA'),
        ('acquire-group-bersama', '00000000789', 'A', null, CURRENT USER, CURRENT TIMESTAMP, 'INDOSAT DOMPETKU'),
        ('acquire-group-bersama', '00000000911', 'A', null, CURRENT USER, CURRENT TIMESTAMP, 'T-CASH'),
        ('acquire-group-bersama', '00000000920', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'ALTO PENERUS'),
        ('acquire-group-bersama', '00000000947', 'A', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK ALADIN SYARIAH'),
        ('acquire-group-bersama', '00000000950', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'BANK COMMONWEALTH'),
        ('acquire-group-bersama', '00000000982', 'BB', null, CURRENT USER, CURRENT TIMESTAMP, null),
        ('acquire-group-bersama', '00000000987', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'ATMB PLUS'),
        ('acquire-group-bersama', '00000360001', 'B', null, CURRENT USER, CURRENT TIMESTAMP, 'ARTAJASA ACQUIRER ONLY'),
        ('acquire-group-bersama', '00000360002', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'PRIMA INTERKONEKSI'),
        ('acquire-group-bersama', '00000360003', 'C', null, CURRENT USER, CURRENT TIMESTAMP, 'ALTO INTERKONEKSI');

INSERT INTO MWCONFIG.DTREE (GROUP, PATH, VALUE, MODIFIED_BY, TIMESTAMP, MODULE) 
    VALUES 
        ('CORE-SYARIAH-CODE', '0200', '0200.${msg.processingCode?.padLeft(6, "0")}', CURRENT USER, CURRENT TIMESTAMP, '[syariah]'),
        ('CORE-SYARIAH-CODE', '0210', '0210.${msg.processingCode?.padLeft(6, "0")}', CURRENT USER, CURRENT TIMESTAMP, '[syariah]'),
        ('CORE-SYARIAH-CODE', '0400', '0400.${msg.processingCode?.padLeft(6, "0")}', CURRENT USER, CURRENT TIMESTAMP, '[syariah]'),
        ('CORE-SYARIAH-CODE', '0410', '0410.${msg.processingCode?.padLeft(6, "0")}', CURRENT USER, CURRENT TIMESTAMP, '[syariah]'),
        ('CORE-SYARIAH-CODE', '0420', '0420.${msg.processingCode?.padLeft(6, "0")}', CURRENT USER, CURRENT TIMESTAMP, '[syariah]'),
        ('CORE-SYARIAH-CODE', '0430', '0430.${msg.processingCode?.padLeft(6, "0")}', CURRENT USER, CURRENT TIMESTAMP, '[syariah]'),
        ('CORE-SYARIAH-CODE', '0401', '0401.${msg.processingCode?.padLeft(6, "0")}', CURRENT USER, CURRENT TIMESTAMP, '[syariah]'),
        ('CORE-SYARIAH-CODE', '0411', '0411.${msg.processingCode?.padLeft(6, "0")}', CURRENT USER, CURRENT TIMESTAMP, '[syariah]'),
        ('CORE-SYARIAH-CODE', '0800', '0800.${msg.networkManagementInformationCode?.padLeft(6, "0")}', CURRENT USER, CURRENT TIMESTAMP, '[syariah]'),
        ('CORE-SYARIAH-CODE', '0810', '0810.${msg.networkManagementInformationCode?.padLeft(6, "0")}', CURRENT USER, CURRENT TIMESTAMP, '[syariah]'),
        ('CORE-SYARIAH-CODE', '0200.2.301111', '0200.2.301111.${msg.additionalDataPrivate.substring(0,4).padLeft(4,"0")}', CURRENT USER, CURRENT TIMESTAMP, '[syariah]'),
        ('CORE-SYARIAH-CODE', '0210.2.301111', '0210.2.301111.${msg.additionalDataPrivate.substring(0,4).padLeft(4,"0")}', CURRENT USER, CURRENT TIMESTAMP, '[syariah]'),
        ('CORE-SYARIAH-CODE', '0200.102000', '0200.2.${msg.reservedPrivate3}', CURRENT USER, CURRENT TIMESTAMP, '[syariah]'),
        ('CORE-SYARIAH-CODE', '0210.102000', '0210.2.${msg.reservedPrivate3}', CURRENT USER, CURRENT TIMESTAMP, '[syariah]'),
        ('CORE-SYARIAH-CODE', '0200.101000', '0200.2.${msg.reservedPrivate3}', CURRENT USER, CURRENT TIMESTAMP, '[syariah]'),
        ('CORE-SYARIAH-CODE', '0210.101000', '0210.2.${msg.reservedPrivate3}', CURRENT USER, CURRENT TIMESTAMP, '[syariah]'),
        ('CORE-SYARIAH-CODE', 'AXISSYSTEMSDNBHD', 'AXISSYSTEMSDNBHD.${msg.dspTransactionCode?.padLeft(10, "0")}', CURRENT USER, CURRENT TIMESTAMP, '[syariah]'),
        ('CORE-SYARIAH-CODE', '0400.101000', '0400.2.${msg.reservedPrivate3}', CURRENT USER, CURRENT TIMESTAMP, '[syariah]'),
        ('CORE-SYARIAH-CODE', '0410.101000', '0410.2.${msg.reservedPrivate3}', CURRENT USER, CURRENT TIMESTAMP, '[syariah]'),
        ('CORE-SYARIAH-CODE', '0400.102000', '0400.2.${msg.reservedPrivate3}', CURRENT USER, CURRENT TIMESTAMP, '[syariah]'),
        ('CORE-SYARIAH-CODE', '0410.102000', '0410.2.${msg.reservedPrivate3}', CURRENT USER, CURRENT TIMESTAMP, '[syariah]'),
        ('CORE-SYARIAH-CODE', '0200.531000', '0200.531000.${msg.reservedPrivate2}', CURRENT USER, CURRENT TIMESTAMP, '[syariah]'),
        ('CORE-SYARIAH-CODE', '0200.532000', '0200.532000.${msg.reservedPrivate2}', CURRENT USER, CURRENT TIMESTAMP, '[syariah]');


INSERT INTO MWCONFIG.CHARGES (ID, C1_VALUE, C1_NAME, C1_SCRIPT, C1_ACCOUNT, C2_VALUE, C2_NAME, C2_SCRIPT, C2_ACCOUNT, C3_VALUE, C3_NAME, C3_SCRIPT, C3_ACCOUNT, C4_VALUE, C4_NAME, C4_SCRIPT, C4_ACCOUNT, C5_VALUE, C5_NAME, C5_SCRIPT, C5_ACCOUNT, MODIFIED_BY, TIMESTAMP, C6_VALUE, C6_NAME) 
    VALUES 
        ('itm-amp-link-inquiry', 4000.00, 'fee nasabah', NULL, NULL, 375.00, 'fee switcher', NULL, NULL, 3625.00, 'fee acquirer', NULL, NULL, 0.00, 'fee promosi', NULL, NULL, 0.00, 'fee issuer', NULL, NULL, CURRENT USER, CURRENT TIMESTAMP, NULL, NULL),
        ('itm-amp-link-inquiry-BHG', 4000.00, 'fee nasabah', NULL, NULL, 550.00, 'fee switcher', NULL, NULL, 3230.00, 'fee acquirer', NULL, NULL, 0.00, 'fee promosi', NULL, NULL, 220.00, 'fee issuer', NULL, NULL, CURRENT USER, CURRENT TIMESTAMP, NULL, NULL),
        ('itm-amp-link-inquiry-BPD', 4000.00, 'fee nasabah', NULL, NULL, 770.00, 'fee switcher', NULL, NULL, 3230.00, 'fee acquirer', NULL, NULL, 0.00, 'fee promosi', NULL, NULL, 0.00, 'fee issuer', NULL, NULL, CURRENT USER, CURRENT TIMESTAMP, NULL, NULL),
        ('itm-amp-link-inquiry-BST', 4000.00, 'fee nasabah', NULL, NULL, 770.00, 'fee switcher', NULL, NULL, 3230.00, 'fee acquirer', NULL, NULL, 0.00, 'fee promosi', NULL, NULL, 0.00, 'fee issuer', NULL, NULL, CURRENT USER, CURRENT TIMESTAMP, NULL, NULL),
        ('itm-amp-link-inquiry-EDC', 3000.00, 'fee nasabah', '', '', 375.00, 'fee switcher', '', '', 2230.00, 'fee acquirer', '', '', 375.00, 'fee promosi', '', '', 220.00, 'fee issuer', '', '', CURRENT USER, CURRENT TIMESTAMP, NULL, NULL),
        ('itm-amp-link-inquiry-LMP', 2500.00, 'fee nasabah', NULL, NULL, 375.00, 'fee switcher', NULL, NULL, 2125.00, 'fee acquirer', NULL, NULL, 0.00, 'fee promosi', NULL, NULL, 0.00, 'fee issuer', NULL, NULL, CURRENT USER, CURRENT TIMESTAMP, NULL, NULL),
        ('itm-amp-link-inquiry-XMP', 4000.00, 'fee nasabah', NULL, NULL, 375.00, 'fee switcher', NULL, NULL, 3230.00, 'fee acquirer', NULL, NULL, 0.00, 'fee promosi', NULL, NULL, 395.00, 'fee issuer', NULL, NULL, CURRENT USER, CURRENT TIMESTAMP, NULL, NULL);

INSERT INTO MWCONFIG.CHARGES (ID, C1_VALUE, C1_NAME, C1_SCRIPT, C1_ACCOUNT, C2_VALUE, C2_NAME, C2_SCRIPT, C2_ACCOUNT, C3_VALUE, C3_NAME, C3_SCRIPT, C3_ACCOUNT, C4_VALUE, C4_NAME, C4_SCRIPT, C4_ACCOUNT, C5_VALUE, C5_NAME, C5_SCRIPT, C5_ACCOUNT, MODIFIED_BY, TIMESTAMP, C6_VALUE, C6_NAME) 
VALUES  ('itm bersama EDC Purchase', 0.00, 'fee nasabah', null, null, 0.00, 'fee switcher', null, null, 0.00, 'fee acquirer', null, null, 0.00, 'promosi', null, null, 0.00, null, null, null, CURRENT USER, CURRENT TIMESTAMP, 6500.00, 'fee total'),
        ('itm bersama inquiry balance', 3230.00, 'acquirer', null, null, 700.00, 'switcher', null, null, 0.00, null, null, null, 70.00, 'issuer', null, null, 375.00, 'fee_acq_btn', null, null, CURRENT USER, CURRENT TIMESTAMP, 6500.00, 'fee total'),
        ('itm bersama transfer A', 3570.00, 'acquirer', null, null, 1430.00, 'switcher', null, null, 1500.00, 'beneficiary', null, null, 0.00, null, null, null, 1000.00, null, null, null, CURRENT USER, CURRENT TIMESTAMP, 6500.00, 'fee total'),
        ('itm bersama transfer B', 3680.00, 'acquirer', null, null, 1320.00, 'switcher', null, null, 1500.00, 'beneficiary', null, null, 0.00, null, null, null, 1000.00, null, null, null, CURRENT USER, CURRENT TIMESTAMP, 6500.00, 'fee total'),
        ('itm bersama transfer BB', 3680.00, 'acquirer', null, null, 1320.00, 'switcher', null, null, 1500.00, 'beneficiary', null, null, 0.00, null, null, null, 0.00, null, null, null, CURRENT USER, CURRENT TIMESTAMP, 6500.00, 'fee total'),
        ('itm bersama transfer C', 3800.00, 'acquirer', null, null, 1200.00, 'switcher', null, null, 1500.00, 'beneficiary', null, null, 600.00, 'acquirer btn', null, null, 600.00, 'fee_acq_btn', null, null, CURRENT USER, CURRENT TIMESTAMP, 6500.00, 'fee total'),
        ('itm bersama withdrawal A', 6290.00, 'acquirer', null, null, 1100.00, 'switcher', null, null, 0.00, null, null, null, 110.00, 'issuer', null, null, 0.00, null, null, null, CURRENT USER, CURRENT TIMESTAMP, 6500.00, 'fee total'),
        ('itm bersama withdrawal B', 6400.00, 'acquirer', null, null, 1000.00, 'switcher', null, null, 0.00, null, null, null, 100.00, 'issuer', null, null, 0.00, null, null, null, CURRENT USER, CURRENT TIMESTAMP, 6500.00, 'fee total'),
        ('itm bersama withdrawal C', 6510.00, 'acquirer', null, null, 900.00, 'switcher', null, null, 0.00, null, null, null, 90.00, 'issuer', null, null, 475.00, 'fee_acq_btn', null, null, CURRENT USER, CURRENT TIMESTAMP, 6500.00, 'fee total');

INSERT INTO MWCONFIG.PARAM_MAP (GROUP, NAME, VALUE, SEQ, MODIFIED_BY, TIMESTAMP, DESCRIPTION) 
    VALUES 
        ('coa', 'tagihan-uus-tunai-amp', '187171291413', NULL, CURRENT USER, CURRENT TIMESTAMP, NULL),
        ('coa', 'coa-kewajiban-amp', '999211978491413', NULL, CURRENT USER, CURRENT TIMESTAMP, NULL),
        ('coa', 'tagihan-uus-amp', '999211978491413', NULL, CURRENT USER, CURRENT TIMESTAMP, NULL),
        ('coa', 'amp-beban', '999561116091413', NULL, CURRENT USER, CURRENT TIMESTAMP, NULL),
        ('coa', 'gl-perantara-syariah-amp', '999561116091413', NULL, CURRENT USER, CURRENT TIMESTAMP, NULL),
        ('coa', 'coa-kewajiban-switch-amp', '999211962491413', NULL, CURRENT USER, CURRENT TIMESTAMP, NULL),
        ('coa', 'coa-pendapatan-amp', '999467965491413', NULL, CURRENT USER, CURRENT TIMESTAMP, NULL),
        ('coa', 'bersama-liability-syariah', '999467965491413', NULL, CURRENT USER, CURRENT TIMESTAMP, NULL),
        ('coa', 'bersama-revenue-syariah', '999467965491413', NULL, CURRENT USER, CURRENT TIMESTAMP, NULL),
        ('coa', 'bersama-liability-switching-syariah', '999467965491413', NULL, CURRENT USER, CURRENT TIMESTAMP, NULL),
        ('coa', 'bersama-bill-tunai-syariah', '999467965491413', NULL, CURRENT USER, CURRENT TIMESTAMP, NULL);

INSERT INTO MWCONFIG.PARAM_MAP (GROUP, NAME, VALUE, TIMESTAMP, MODIFIED_BY)
	VALUES 
		('core-response-ok', 'AXISSYSTEMSDNBHD.0000005411', 'F1', CURRENT TIMESTAMP, CURRENT USER);

INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES ('req-core.syariah-itm.master', '[itm]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) 
    VALUES ('req-core.syariah-itm.master', 1, '/data/body', '/data/body', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) 
    VALUES 
        ('req-core.syariah-itm.master', 1, '@', 'copyMessageToChild("original");copyMessage();dtree("CHARGES", "!group");', 10),
        ('req-core.syariah-itm.master', 1, '!CorrelId', '${head.CorrelId}', 20),
        ('req-core.syariah-itm.master', 1, '!ReplyToQ', 'ITM_CORE_REPLY', 20),
        ('req-core.syariah-itm.master', 1, '!ReplyToQMgr', 'ISOBROKER.QM', 20),
        ('req-core.syariah-itm.master', 1, '!code', '${head.code}', 20),
        ('req-core.syariah-itm.master', 1, '!connid', '${head.connid}', 20),
        ('req-core.syariah-itm.master', 1, '!destination', 'core-syariah-itm', 20),
        ('req-core.syariah-itm.master', 1, '!group', '${head.group}', 20),
        ('req-core.syariah-itm.master', 1, '!mappingCode', '${head.code}', 20),
        ('req-core.syariah-itm.master', 1, '!mid', '${head.mid}', 20),
        ('req-core.syariah-itm.master', 1, '!queueName', 'CORE_SYARIAH_IN', 20),
        ('req-core.syariah-itm.master', 1, '!raw', '${head.raw}', 20),
        ('req-core.syariah-itm.master', 1, '!reqtimestamp', '${head.reqtimestamp}', 20),
        ('req-core.syariah-itm.master', 1, '!sid', '${head.sid}', 20),
        ('req-core.syariah-itm.master', 1, '!source', '${head.source}', 20),
        ('req-core.syariah-itm.master', 1, '!timestamp', '${head.timestamp}', 20),
        ('req-core.syariah-itm.master', 1, 'isMultipleRequest', 'true', 20),
        ('req-core.syariah-itm.master', 1, 'mappingCodeMultiple', 'konven', 20),
        ('req-core.syariah-itm.master', 1, 'reservedPrivate2', '${(head.groupTemp."!value"=="vas")?head.body.reservedPrivate2."!value".replace("002","VAS"):head.body.reservedPrivate2."!value"}', 20);

INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES ('req-core.itm.multiple-master.konven', '[itm]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) 
    VALUES ('req-core.itm.multiple-master.konven', 1, '/data/body', '/data/body', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
        ('req-core.itm.multiple-master.konven', 1, 'tellerComplete', '${getParamValue("device_teller_map", head.request.data.group."!value".trim() + "_" + head.request.data.body.original.cardAcceptorTerminalIdentification."!value".trim(), "|||| ")}', 10),
        ('req-core.itm.multiple-master.konven', 1, 'ICDEVN', '${tar.tellerComplete."!value".split("\\|", -1)[3]}', 20),
        ('req-core.itm.multiple-master.konven', 1, 'TLBCUD', '${tar.tellerComplete."!value".split("\\|", -1)[2]}', 20),
        ('req-core.itm.multiple-master.konven', 1, 'TLBID', '${tar.tellerComplete."!value".split("\\|", -1)[0]}', 20),
        ('req-core.itm.multiple-master.konven', 1, 'dspDeviceName', '${tar.tellerComplete."!value".split("\\|", -1)[3]}', 20),
        ('req-core.itm.multiple-master.konven', 1, 'dspTerminalId', '${tar.tellerComplete."!value".split("\\|", -1)[1]}', 20),
        ('req-core.itm.multiple-master.konven', 1, 'dspUserId', '${tar.tellerComplete."!value".split("\\|", -1)[0]}', 20),
        ('req-core.itm.multiple-master.konven', 1, '!CorrelId', '${head.request.data.CorrelId}', NULL),
        ('req-core.itm.multiple-master.konven', 1, '!connid', '${null}', NULL),
        ('req-core.itm.multiple-master.konven', 1, '!destination', 'core-itm', NULL),
        ('req-core.itm.multiple-master.konven', 1, '!group', '${head.request.data.group}', NULL),
        ('req-core.itm.multiple-master.konven', 1, '!mappingCode', '${head.request.data.mappingCode}', NULL),
        ('req-core.itm.multiple-master.konven', 1, '!mid', '${head.mid}', NULL),
        ('req-core.itm.multiple-master.konven', 1, '!queueName', 'CORE_IN', NULL),
        ('req-core.itm.multiple-master.konven', 1, '!remaining', 'AAA=', NULL),
        ('req-core.itm.multiple-master.konven', 1, '!remainingPos', '1268', NULL),
        ('req-core.itm.multiple-master.konven', 1, '!reqtimestamp', '${head.request.data.reqtimestamp}', NULL),
        ('req-core.itm.multiple-master.konven', 1, '!sid', '${head.sid}', NULL),
        ('req-core.itm.multiple-master.konven', 1, '!source', '${head.request.data.source}', NULL),
        ('req-core.itm.multiple-master.konven', 1, '!timestamp', '${head.request.data.reqtimestamp}', NULL),
        ('req-core.itm.multiple-master.konven', 1, '!type', 'dsp', NULL),
        ('req-core.itm.multiple-master.konven', 1, '@', 'copyMessage("original", "request/data/body/original");copyMessage("../original1", ".");', NULL),
        ('req-core.itm.multiple-master.konven', 1, 'ICEOM', '*EOM', NULL),
        ('req-core.itm.multiple-master.konven', 1, 'ICHEAD', '*MOSA', NULL),
        ('req-core.itm.multiple-master.konven', 1, 'ICID', '00000', NULL),
        ('req-core.itm.multiple-master.konven', 1, 'ICLEN', '1020', NULL),
        ('req-core.itm.multiple-master.konven', 1, 'RMADD3', '${(head.request.data.body.original.track2Data==null||head.request.data.body.original.track2Data."!value"==null?"":head.request.data.body.original.track2Data."!value").padRight(37," ")}', NULL),
        ('req-core.itm.multiple-master.konven', 1, 'RMAPID', '${head.request.data.body.original.retrievalReferenceNumber}${new java.text.SimpleDateFormat("yy").format(new Date())+head.request.data.body.original.dateLocalTransaction."!value"}${head.request.data.body.original.timeLocalTransaction}', NULL),
        ('req-core.itm.multiple-master.konven', 1, 'RMPSTC', '${new java.text.SimpleDateFormat("yyyy").format(new Date())+head.request.data.body.original.dateLocalTransaction."!value"}', NULL),
        ('req-core.itm.multiple-master.konven', 1, 'RMSEHS', '${msg.dateLocalTransaction}', NULL),
        ('req-core.itm.multiple-master.konven', 1, 'TLBCIF', '${head.request.data.body.original.timeLocalTransaction}', NULL),
        ('req-core.itm.multiple-master.konven', 1, 'TLBCUR', 'IDR', NULL),
        ('req-core.itm.multiple-master.konven', 1, 'TLBDS1', '${head.request.data.body.original.timeLocalTransaction."!value"+head.request.data.body.original.dateLocalTransaction."!value"+head.request.data.body.original.acquiringInstitutionIdentificationCode."!value".padRight(11," ")+head.request.data.body.original.merchantType."!value".padRight(4, " ")+head.request.data.body.original.retrievalReferenceNumber."!value".padRight(12," ")}', NULL),
        ('req-core.itm.multiple-master.konven', 1, 'TLBFIL', '${head.request.data.body.original.cardAcceptorTerminalIdentification."!value"+head.request.data.body.original.retrievalReferenceNumber."!value".padRight(12," ")+head.request.data.body.original.acquiringInstitutionIdentificationCode."!value".padRight(11," ")}', NULL),
        ('req-core.itm.multiple-master.konven', 1, 'TLBFP1', 'FF', NULL),
        ('req-core.itm.multiple-master.konven', 1, 'TLBFP2', 'FC', NULL),
        ('req-core.itm.multiple-master.konven', 1, 'TLBFP3', 'FF', NULL),
        ('req-core.itm.multiple-master.konven', 1, 'TLBJC1', '00', NULL),
        ('req-core.itm.multiple-master.konven', 1, 'TLBJC2', '00', NULL),
        ('req-core.itm.multiple-master.konven', 1, 'TLBJSN', '${head.request.data.body.original.systemsTraceAuditNumber}', NULL),
        ('req-core.itm.multiple-master.konven', 1, 'TLBTDT', '${head.request.data.body.original.transmissionDateTime."!value".substring(2,4)+head.request.data.body.original.transmissionDateTime."!value".substring(0,2)+new java.text.SimpleDateFormat("yy").format(new Date())}', null),
        ('req-core.itm.multiple-master.konven', 1, 'TLBWC1', '00', null),
        ('req-core.itm.multiple-master.konven', 1, 'TLBWC2', '00', null),
        ('req-core.itm.multiple-master.konven', 1, 'TLBWS', 'ES', null),
        ('req-core.itm.multiple-master.konven', 1, 'TLCUR1', 'IDR', null),
        ('req-core.itm.multiple-master.konven', 1, 'TLXUFD', 'ATM', null),
        ('req-core.itm.multiple-master.konven', 1, 'TMTIMIN', '000000', null),
        ('req-core.itm.multiple-master.konven', 1, 'TMTXTYP', 'T9999', null),
        ('req-core.itm.multiple-master.konven', 1, 'dspBankIdNumber', '00000000000', null),
        ('req-core.itm.multiple-master.konven', 1, 'dspDataFormatId', 'ABCS', null),
        ('req-core.itm.multiple-master.konven', 1, 'dspExchangeId', '4040404040404040404040404040404040404040', null),
        ('req-core.itm.multiple-master.konven', 1, 'dspFiller1', 'F0', null),
        ('req-core.itm.multiple-master.konven', 1, 'dspHeaderType', '*HOST', null),
        ('req-core.itm.multiple-master.konven', 1, 'dspNode', '00', null),
        ('req-core.itm.multiple-master.konven', 1, 'dspScenarioNumber', 'AXISSYSTEMSDNBHD', null),
        ('req-core.itm.multiple-master.konven', 1, 'dspSourceId', '*AXIS', null),
        ('req-core.itm.multiple-master.konven', 1, 'dspVersionNumber', '0000', null),
        ('req-core.itm.multiple-master.konven', 1, 'fullReverse', 'true', null),
        ('req-core.itm.multiple-master.konven', 1, 'isMultipleRequest', '${null}', null);

INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES ('req-core.itm.0200.501000.002LMP', '[itm]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES ('req-core.itm.0200.501000.002LMP', 1, '/data/body', '/data/body', 'req-core.syariah-itm.master', '1');
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) 
VALUES 
        ('req-core.itm.0200.501000.002LMP', 1, 'amountSettlementFee', 'D${decimalFormat("0", getCharge(1).toBigDecimal()*100).padLeft(8, "0")}', 20),
        ('req-core.itm.0200.501000.002LMP', 1, 'reasonCode', 'D${decimalFormat("0", getCharge(1).toBigDecimal()*100).padLeft(12, "0")}C000000000000', 20),
        ('req-core.itm.0200.501000.002LMP', 1, '!destination', 'core-syariah-itm', null);

INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES ('req-core.itm.0200.501000.002LMP.konven', '[impit]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) 
    VALUES 
        ('req-core.itm.0200.501000.002LMP.konven', 1, '/data/body', '/data/body', 'req-core.itm.multiple-master.konven', '1'),
        ('req-core.itm.0200.501000.002LMP.konven', 2, '/data/request/data/body', '/data/body', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) 
    VALUES 
        ('req-core.itm.0200.501000.002LMP.konven', 1, '@', 'copyMessage("original1", ".");dtree("CHARGES", "!group");', 10),
        ('req-core.itm.0200.501000.002LMP.konven', 1, 'TELLER', '${msg.reservedPrivate2."!value".substring(3,6) == "BMP"? (msg.cardAcceptorTerminalIdentification."!value".trim()):"AMP"}', 10),
        ('req-core.itm.0200.501000.002LMP.konven', 1, 'tellerComplete', '${getParamValue("device_teller_map", head.request.data.group."!value".trim() + "_" + tar.TELLER."!value", "|||| ")}', 15),
        ('req-core.itm.0200.501000.002LMP.konven', 1, '!connid', '${null}', 20),
        ('req-core.itm.0200.501000.002LMP.konven', 1, '!reqtimestamp', '${head.request.data.reqtimestamp}', 20),
        ('req-core.itm.0200.501000.002LMP.konven', 1, '!sid', '${head.request.data.sid}', 20),
        ('req-core.itm.0200.501000.002LMP.konven', 1, '!timestamp', '${head.request.data.reqtimestamp}', 20),
        ('req-core.itm.0200.501000.002LMP.konven', 1, 'ICDEVN', '${tar.tellerComplete."!value".split("\\|", -1)[3]}', 20),
        ('req-core.itm.0200.501000.002LMP.konven', 1, 'TLBCUD', '${tar.tellerComplete."!value".split("\\|", -1)[2]}', 20),
        ('req-core.itm.0200.501000.002LMP.konven', 1, 'TLBID', '${tar.tellerComplete."!value".split("\\|", -1)[0]}', 20),
        ('req-core.itm.0200.501000.002LMP.konven', 1, 'dspDeviceName', '${tar.tellerComplete."!value".split("\\|", -1)[3]}', 20),
        ('req-core.itm.0200.501000.002LMP.konven', 1, 'dspTerminalId', '${tar.tellerComplete."!value".split("\\|", -1)[1]}', 20),
        ('req-core.itm.0200.501000.002LMP.konven', 1, 'dspUserId', '${tar.tellerComplete."!value".split("\\|", -1)[0]}', 20),
        ('req-core.itm.0200.501000.002LMP.konven', 2, '!code', 'AXISSYSTEMSDNBHD.0000005470', 20),
        ('req-core.itm.0200.501000.002LMP.konven', 2, 'TLBF01', '${getParamValueWithError("coa", "tagihan-uus-tunai-amp", "error:92Unknown coa")}', 20),
        ('req-core.itm.0200.501000.002LMP.konven', 2, 'TLBF02', '${decimalFormat("0",(getCharge(1).toBigDecimal())*100)}', 20),
        ('req-core.itm.0200.501000.002LMP.konven', 2, 'TLBF03', '${getParamValueWithError("coa", "coa-kewajiban-amp", "error:92Unknown coa")}', 20),
        ('req-core.itm.0200.501000.002LMP.konven', 2, 'TLBF04', '${getCharge(3)?getCharge(3).toBigDecimal()*100:0}', 20),
        ('req-core.itm.0200.501000.002LMP.konven', 2, 'TLBF07', '${getParamValueWithError("coa", "amp-beban", "error:92Unknown coa")}', 20),
        ('req-core.itm.0200.501000.002LMP.konven', 2, 'TLBF08', '${getCharge(4)?getCharge(4).toBigDecimal()*100:0}', 20),
        ('req-core.itm.0200.501000.002LMP.konven', 2, 'TLBF11', '${getParamValueWithError("coa", "coa-pendapatan-amp", "error:92Unknown coa")}', 20),
        ('req-core.itm.0200.501000.002LMP.konven', 2, 'TLBF12', '${getCharge(5)?getCharge(5).toBigDecimal()*100:0}', 20),
        ('req-core.itm.0200.501000.002LMP.konven', 2, 'TLBF13', '${getParamValueWithError("coa", "coa-kewajiban-switch-amp", "error:92Unknown coa")}', 20),
        ('req-core.itm.0200.501000.002LMP.konven', 2, 'TLBF14', '${getCharge(2)?getCharge(2).toBigDecimal()*100:0}', 20),
        ('req-core.itm.0200.501000.002LMP.konven', 2, 'TLBTCD', '5470', 20),
        ('req-core.itm.0200.501000.002LMP.konven', 2, 'dspTransactionCode', '5470', 20);

INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES ('req-core.itm.0200.501000.002LMP.res-reverse', '[itm]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) 
    VALUES 
        ('req-core.itm.0200.501000.002LMP.res-reverse', 1, '/data/request/data/original1/request/data/body', '/data/body', 'null', NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES 
        ('req-core.itm.0200.501000.002LMP.res-reverse', 1, '@', 'copyMessage();', 10),
        ('req-core.itm.0200.501000.002LMP.res-reverse', 1, '!ReplyToQ', 'ITM_CORE_REVERSAL_REPLY', 20),
        ('req-core.itm.0200.501000.002LMP.res-reverse', 1, '!ReplyToQMgr', 'ISOBROKER.QM', 20),
        ('req-core.itm.0200.501000.002LMP.res-reverse', 1, '!code', '${head.request.data.original1.request.data.code}', 20),
        ('req-core.itm.0200.501000.002LMP.res-reverse', 1, '!connid', '${head.request.data.original1.request.data.connid}', 20),
        ('req-core.itm.0200.501000.002LMP.res-reverse', 1, '!destination', 'core-syariah-itm', 20),
        ('req-core.itm.0200.501000.002LMP.res-reverse', 1, '!group', '${head.request.data.original1.request.data.group}', 20),
        ('req-core.itm.0200.501000.002LMP.res-reverse', 1, '!mappingCode', '${head.request.data.original1.request.data.code}', 20),
        ('req-core.itm.0200.501000.002LMP.res-reverse', 1, '!mid', '${head.request.data.original1.request.data.mid}', 20),
        ('req-core.itm.0200.501000.002LMP.res-reverse', 1, '!queueName', 'CORE_SYARIAH_IN', 20),
        ('req-core.itm.0200.501000.002LMP.res-reverse', 1, '!reqtimestamp', '${head.request.data.original1.request.data.reqtimestamp}', 20),
        ('req-core.itm.0200.501000.002LMP.res-reverse', 1, '!sid', '${null}', 20),
        ('req-core.itm.0200.501000.002LMP.res-reverse', 1, '!source', '${head.request.data.original1.request.data.source}', 20),
        ('req-core.itm.0200.501000.002LMP.res-reverse', 1, '!timestamp', '${head.request.data.original1.request.data.reqtimestamp}', 20),
        ('req-core.itm.0200.501000.002LMP.res-reverse', 1, 'isMultipleRequest', 'false', 20),
        ('req-core.itm.0200.501000.002LMP.res-reverse', 1, 'mappingCodeMultiple', '${null}', 20),
        ('req-core.itm.0200.501000.002LMP.res-reverse', 1, 'messageType', '0400', 20);

INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES ('res-core.itm.0200.501000.002LMP', '[itm]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES ('res-core.itm.0200.501000.002LMP', 1, '/data/body', '/data/body', 'res-core.itm.0200', '1');
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('res-core.itm.0200.501000.002LMP', 1, 'additionalResponseData', '${head.request.data.original1.body.additionalResponseData."!value"}', null);




INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES ('req-core.itm.0200.612000.002SAT', '[itm]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES ('req-core.itm.0200.612000.002SAT', 1, '/data/body', '/data/body', 'req-core.syariah-itm.master',1);


INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES ('req-core.itm.0200.611000.002SAT.konven', '[itm]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES ('req-core.itm.0200.611000.002SAT.konven', 1, '/data/body', '/data/body', 'req-core.itm.multiple-master.konven', '1');
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES ('req-core.itm.0200.611000.002SAT.konven', 2, '/data/request/data/body', '/data/body', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0200.611000.002SAT.konven', 2, '!code', 'AXISSYSTEMSDNBHD.0000005411', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0200.611000.002SAT.konven', 2, 'TLBF01', '${getParamValueWithError("coa", "bersama-bill-tunai-syariah", "error:92Unknown coa")}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0200.611000.002SAT.konven', 2, 'TLBF02', '${(msg.amountTransaction."!number")+(getCharge(1)?getCharge(1).toBigDecimal()*100:0)+(getCharge(2)?getCharge(2).toBigDecimal()*100:0)+(getCharge(4)?getCharge(4).toBigDecimal()*100:0)}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0200.611000.002SAT.konven', 2, 'TLBF03', '${getParamValueWithError("coa", "bersama-liability-syariah", "error:92Unknown coa")}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0200.611000.002SAT.konven', 2, 'TLBF04', '${msg.amountTransaction."!number"}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0200.611000.002SAT.konven', 2, 'TLBF09', '${getParamValueWithError("coa", "bersama-revenue-syariah", "error:92Unknown coa")}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0200.611000.002SAT.konven', 2, 'TLBF10', '${getCharge(4)?getCharge(4).toBigDecimal()*100:0}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0200.611000.002SAT.konven', 2, 'TLBF11', '${getParamValueWithError("coa", "bersama-liability-switching-syariah", "error:92Unknown coa")}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0200.611000.002SAT.konven', 2, 'TLBF12', '${getCharge(2)?getCharge(2).toBigDecimal()*100:0}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0200.611000.002SAT.konven', 2, 'TLBF13', '${getParamValueWithError("coa", "bersama-liability-syariah", "error:92Unknown coa")}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0200.611000.002SAT.konven', 2, 'TLBF14', '${getCharge(1)?getCharge(1).toBigDecimal()*100:0}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0200.611000.002SAT.konven', 2, 'TLBTCD', '5411', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0200.611000.002SAT.konven', 2, 'dspTransactionCode', '5411', 20);


INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES ('req-core.itm.0200.612000.002SAT.konven', '[itm]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES ('req-core.itm.0200.612000.002SAT.konven', 1, '/data/body', '/data/body', 'req-core.itm.0200.611000.002SAT.konven', '1');
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES ('req-core.itm.0200.612000.002SAT.konven', 2, '/data/request/data/body', '/data/body',  'req-core.itm.0200.611000.002SAT.konven', '2');

INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES ('res-core.itm.0200.611000.002SAT', '[itm]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES ('res-core.itm.0200.611000.002SAT', 1, '/data/body', '/data/body', 'res-core.itm.0200', '1');
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('res-core.itm.0200.611000.002SAT', 1, 'additionalResponseData', '${head.request.data.original1.body.additionalResponseData."!value"}', null);

INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES ('res-core.itm.0200.612000.002SAT', '[itm]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES ('res-core.itm.0200.612000.002SAT', 1, '/data/body', '/data/body', 'res-core.itm.0200', '1');
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('res-core.itm.0200.612000.002SAT', 1, 'additionalResponseData', '${head.request.data.original1.body.additionalResponseData."!value"}', null);

INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES ('req-core.itm.0400.601000.002SAT', '[itm]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES ('req-core.itm.0400.601000.002SAT', 1, '/data/body', '/data/body', 'req-core.itm', '1');
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES ('req-core.itm.0400.601000.002SAT', 2, '/data/body', '/data/body', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT', 1, '@', 'dtree("CHARGES", "!group");copyMessage("original", ".");copyMessage();', 10);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT', 1, 'tellerComplete', '${getParamValue("device_teller_map", head.group."!value".trim() + "_BERSAMA" + msg.timeLocalTransaction."!value".substring(0,2), "|||| ")}', 10);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT', 1, 'ICDEVN', '${tar.tellerComplete."!value".split("\\|", -1)[3]}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT', 1, 'TLBCUD', '${tar.tellerComplete."!value".split("\\|", -1)[2]}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT', 1, 'TLBID', '${tar.tellerComplete."!value".split("\\|", -1)[0]}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT', 1, 'dspDeviceName', '${tar.tellerComplete."!value".split("\\|", -1)[3]}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT', 1, 'dspTerminalId', '${tar.tellerComplete."!value".split("\\|", -1)[1]}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT', 1, 'dspUserId', '${tar.tellerComplete."!value".split("\\|", -1)[0]}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT', 2, 'TLBF01', '${getParamValueWithError("coa", "bersama-bill-syariah", "error:92Unknown coa")}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT', 2, 'TLBF02', '${(getCharge(1)?getCharge(1).toBigDecimal()*100:0)+(getCharge(2)?getCharge(2).toBigDecimal()*100:0)}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT', 2, 'TLBF03', '${getParamValueWithError("coa", "bersama-revenue-syariah", "error:92Unknown coa")}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT', 2, 'TLBF04', '${getCharge(4)?getCharge(4).toBigDecimal()*100:0}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT', 2, 'TLBF09', '${getParamValueWithError("coa", "bersama-liability-switching-syariah", "error:92Unknown coa")}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT', 2, 'TLBF10', '${getCharge(2)?getCharge(2).toBigDecimal()*100:0}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT', 2, 'TLBF11', '${getParamValueWithError("coa", "bersama-liability-syariah", "error:92Unknown coa")}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT', 2, 'TLBF12', '${getCharge(1)?getCharge(1).toBigDecimal()*100:0}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT', 2, 'amountSettlementFee', 'D${decimalFormat("0", (getCharge(1).toBigDecimal()+getCharge(2).toBigDecimal()+getCharge(4).toBigDecimal())*100).padLeft(8, "0")}', 30);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT', 2, 'reasonCode', 'D${getCharge(1)?decimalFormat("0",(getCharge(1).toBigDecimal()+getCharge(2).toBigDecimal()+getCharge(4).toBigDecimal())*100).padLeft(12, "0"):0}C000000000000', 30);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT', 1, '!connid', '${null}', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT', 1, '!reqtimestamp', '${head.reqtimestamp}', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT', 1, '!sid', '${head.sid}', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT', 1, '!timestamp', '${head.reqtimestamp}', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT', 1, 'RMCKC', '${msg.transmissionDateTime}', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT', 1, 'TLBF20', '${msg.systemsTraceAuditNumber}', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT', 1, 'TLBJSN', '${msg.systemsTraceAuditNumber."!number"+1000000}', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT', 1, 'TLBWC2', '10', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT', 1, 'isMultipleRequest', 'true', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT', 1, 'mappingCodeMultiple', 'syariah', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT', 2, '!code', 'AXISSYSTEMSDNBHD.0000005410', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT', 2, 'TLBTCD', '5410', null);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT', 2, 'dspTransactionCode', '5410', null);

INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES ('req-core.itm.0400.611000.002SAT', '[itm]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES ('req-core.itm.0400.611000.002SAT', 1, '/data/body', '/data/body', 'req-core.itm.0400.601000.002SAT', '1');
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES ('req-core.itm.0400.611000.002SAT', 2, '/data/body', '/data/body', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.611000.002SAT', 2, '@', 'dtree("CHARGES","!group")', 10);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.611000.002SAT', 2, '!code', 'AXISSYSTEMSDNBHD.0000005411', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.611000.002SAT', 2, 'TLBF01', '${getParamValueWithError("coa", "bersama-bill-tunai-syariah", "error:92Unknown coa")}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.611000.002SAT', 2, 'TLBF02', '${(msg.amountTransaction."!number")+(getCharge(1)?getCharge(1).toBigDecimal()*100:0)+(getCharge(2)?getCharge(2).toBigDecimal()*100:0)+(getCharge(4)?getCharge(4).toBigDecimal()*100:0)}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.611000.002SAT', 2, 'TLBF03', '${getParamValueWithError("coa", "bersama-liability-syariah", "error:92Unknown coa")}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.611000.002SAT', 2, 'TLBF04', '${msg.amountTransaction."!number"}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.611000.002SAT', 2, 'TLBF09', '${getParamValueWithError("coa", "bersama-revenue-syariah", "error:92Unknown coa")}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.611000.002SAT', 2, 'TLBF10', '${getCharge(4)?getCharge(4).toBigDecimal()*100:0}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.611000.002SAT', 2, 'TLBF11', '${getParamValueWithError("coa", "bersama-liability-switching-syariah", "error:92Unknown coa")}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.611000.002SAT', 2, 'TLBF12', '${getCharge(2)?getCharge(2).toBigDecimal()*100:0}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.611000.002SAT', 2, 'TLBF13', '${getParamValueWithError("coa", "bersama-liability-syariah", "error:92Unknown coa")}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.611000.002SAT', 2, 'TLBF14', '${getCharge(1)?getCharge(1).toBigDecimal()*100:0}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.611000.002SAT', 2, 'TLBTCD', '5411', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.611000.002SAT', 2, 'dspTransactionCode', '5411', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.611000.002SAT', 2, 'amountSettlementFee', 'D${decimalFormat("0", (getCharge(1).toBigDecimal()+getCharge(2).toBigDecimal()+getCharge(4).toBigDecimal())*100).padLeft(8, "0")}', 30);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.611000.002SAT', 2, 'reasonCode', 'D${getCharge(1)?decimalFormat("0",(getCharge(1).toBigDecimal()+getCharge(2).toBigDecimal()+getCharge(4).toBigDecimal())*100).padLeft(12, "0"):0}C000000000000', 30);

INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES ('req-core.itm.0400.612000.002SAT', '[itm]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES ('req-core.itm.0400.612000.002SAT', 1, '/data/body', '/data/body', 'req-core.itm.0400.611000.002SAT', '1');
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES ('req-core.itm.0400.612000.002SAT', 2, '/data/body', '/data/body', 'req-core.itm.0400.611000.002SAT', '2');

INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES ('req-core.itm.0400.601000.002SAT.syariah', '[itm]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES ('req-core.itm.0400.601000.002SAT.syariah', 1, '/data/request/data/body/original/body', '/data/body', NULL, NULL);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT.syariah', 1, '!ReplyToQ', 'ITM_CORE_REPLY', 10);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT.syariah', 1, '!ReplyToQMgr', 'ISOBROKER.QM', 10);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT.syariah', 1, '!CorrelId', '${head.request.data.body.original.CorrelId}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT.syariah', 1, '!code', '${head.request.data.body.original.code}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT.syariah', 1, '!connid', '${head.request.data.body.original.connid}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT.syariah', 1, '!destination', 'core-syariah-itm', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT.syariah', 1, '!group', '${head.request.data.body.original.group}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT.syariah', 1, '!mappingCode', '${head.request.data.body.original.code}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT.syariah', 1, '!mid', '${head.request.data.body.original.mid}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT.syariah', 1, '!queueName', 'CORE_SYARIAH_IN', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT.syariah', 1, '!raw', '${head.request.data.body.original.raw}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT.syariah', 1, '!reqtimestamp', '${head.request.data.body.original.reqtimestamp}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT.syariah', 1, '!sid', '${head.request.data.body.original.sid}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT.syariah', 1, '!source', '${head.request.data.body.original.source}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT.syariah', 1, '!timestamp', '${head.request.data.body.original.timestamp}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT.syariah', 1, 'amountSettlementFee', '${head.request.data.body.amountSettlementFee}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT.syariah', 1, 'originalDataElements', '${head.request.data.body.originalDataElements}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT.syariah', 1, 'reasonCode', '${head.request.data.body.reasonCode}', 20);
INSERT INTO MWCONFIG.MAPPING_GROUP_LINE (MAPPING_ID, MAPPING_GROUP_ID, NAME, TEXT, SEQ) VALUES ('req-core.itm.0400.601000.002SAT.syariah', 1, '@', 'copyMessage();copyMessage("original", "request/data/body/original");', 30);

INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES ('res-core.itm.0400.612000.002SAT', '[itm]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES ('res-core.itm.0400.612000.002SAT', 1, '/data/body', '/data/body', 'res-core.itm.0400', '1');

INSERT INTO MWCONFIG.MAPPING (ID, MODULE, MODIFIED_BY, TIMESTAMP) VALUES ('req-core.itm.0400.612000.002SAT.syariah', '[itm]', CURRENT USER, CURRENT TIMESTAMP);
INSERT INTO MWCONFIG.MAPPING_GROUP (MAPPING_ID, ID, SOURCE, TARGET, INCLUDE_MAPPING_ID, INCLUDE_ID) VALUES ('req-core.itm.0400.612000.002SAT.syariah', 1, '/data/request/data/body/original/body', '/data/body', 'req-core.itm.0400.601000.002SAT.syariah', '1');



