INSERT INTO MWCONFIG.CODEX (ID, XML, MODIFIED_BY, TIMESTAMP) VALUES ('dsp', 
'<codex escape="true" raw="true">
	<!-- SOCKET HEADER -->
	<field id="dspPacketLength" type="groupLengthBinary" decimal-format="binary" length="4" />
	<field id="dspHeaderType" type="string" charset="cp1047" length="5" />
	<field id="dspDeviceName" type="string" charset="cp1047" length="15" />
	<field id="dspSocketNumber" type="numericBinary" decimal-format="packed" length="5" />
	<field id="dspPortNumber" type="numericBinary" decimal-format="packed" length="3" />
	<field id="dspFiller1" type="binary" length="1" />

	<!-- MIDDLEWARE HEADER -->
	<field id="dspHeaderLength" type="numeric" charset="cp1047" length="4" />
	<field id="dspMessageLength" type="numeric" charset="cp1047" length="6" />
	<field id="dspVersionNumber" type="string" charset="cp1047" length="4" />
	<field id="dspHeaderFormatId" type="string" charset="cp1047" length="4" />
	<field id="dspDataFormatId" type="string" charset="cp1047" length="10" />
	<field id="dspSourceId" type="string" charset="cp1047" length="10" />
	<field id="dspDestinationId" type="string" charset="cp1047" length="10" />
	<field id="dspRoutingNumber" type="string" charset="cp1047" length="6" />
	<field id="dspMessageStatus" type="string" charset="cp1047" length="8" />
	<field id="dspBankIdNumber" type="string" charset="cp1047" length="11" />
	<field id="dspNode" type="string" charset="cp1047" length="2" />
	<field id="dspExchangeId" type="binary" length="20" />
	<field id="dspScenarioNumber" type="string" charset="cp1047" length="16" />
	<field id="dspTransactionCode" type="string" charset="cp1047" length="4" />
	<field id="dspRetrievalReferenceNumber" type="string" charset="cp1047" length="22" />
	<field id="dspAcquirerReferenceNumber" type="string" charset="cp1047" length="12" />
	<field id="dspTransmissionNumber" type="numeric" charset="cp1047" length="4" />
	<field id="dspNumberOfRecordsToBeLoaded" type="numeric" charset="cp1047" length="4" />
	<field id="dspNumberOfErrorsToBeLoaded" type="numeric" charset="cp1047" length="4" />
	<field id="dspUserId" type="string" charset="cp1047" length="10" />
	<field id="dspTerminalId" type="string" charset="cp1047" length="10" />
	<field id="dspSupervisorId" type="string" charset="cp1047" length="10" />
	<field id="dspMoreRecordIndicator" type="string" charset="cp1047" length="1" />
	<field id="dspCutOffIndicator" type="string" charset="cp1047" length="1" />
	<field id="dspUserData" type="string" charset="cp1047" length="20" />

	<field id="!type" type="script">dsp</field>
	<field id="!code" type="script" encode="true">${msg.dspScenarioNumber}.${msg.dspTransactionCode?.padLeft(10, "0")}</field>
	<field id="!parseCodex" type="script">${msg["!group"]}.${msg.dspTransactionCode?.padLeft(10, "0")}</field>
	<field id="!subCodex" type="script">${getParamValue("dsp-scenario-req-codex", msg.dspScenarioNumber, "")}</field>
</codex>', CURRENT USER, CURRENT TIMESTAMP);

INSERT INTO MWCONFIG.CODEX (ID, XML, MODIFIED_BY, TIMESTAMP) VALUES ('dsp-abcs-request', '<codex escape="true" raw="true">
	<!-- ABCS HEADER OFFSET=246 -->
	<field id="ICLEN" type="numericBinary" length="4" padding-mode="left" padding-char="0" />
	<field id="ICHEAD" type="string" charset="cp1047" length="5" />
	<field id="ICRTRQ" type="string" charset="cp1047" length="10" />
	<field id="ICDEVN" type="string" charset="cp1047" length="15" />
	<field id="ICID" type="string" charset="cp1047" length="5" />
	<field id="ICCOMQ" type="string" charset="cp1047" length="10" />
	<field id="ICIPSF" type="numericBinary" decimal-format="packed" length="5" />
	<field id="TMTIMIN" type="string" charset="cp1047" length="6" padding-mode="left" padding-char="0" />
	<field id="TMTXTYP" type="string" charset="cp1047" length="5" />
	<field id="ICRSV1" type="numericBinary" decimal-format="packed" length="5" />
	<field id="ICEOM" type="string" charset="cp1047" length="4" />
	<!-- ABCS MSG -->
	<field id="TLBCUD" type="string" charset="cp1047" length="3" />
	<field id="TLBWS" type="string" charset="cp1047" length="2" />
	<field id="TLBSOV" type="string" charset="cp1047" length="8" />
	<field id="TLBFP3" type="binary" length="1" />
	<field id="FILLER1" type="string" charset="cp1047" length="3" />
	<field id="TLBID" type="numericBinary" decimal-format="packed" length="4" />
	<field id="TLBTCD" type="string" charset="cp1047" length="4" />
	<field id="TLBTDT" type="string" charset="cp1047" length="6" />
	<field id="TLBPST" type="binary" length="2" />
	<field id="TLBWC1" type="binary" length="1" />
	<field id="TLBWC2" type="binary" length="1" />
	<field id="TLBJSN" type="numericBinary" decimal-format="binary" length="4" />
	<field id="TLBJC1" type="binary" length="1" />
	<field id="TLBJC2" type="binary" length="1" />
	<field id="TLBFP1" type="binary" length="1" />
	<field id="TLBFP2" type="binary" length="1" />
	<field id="TLBF01" type="numericBinary" decimal-format="packed" length="10" />
	<field id="TLBF02" type="numericBinary" decimal-format="packed" length="10" />
	<field id="TLBF03" type="numericBinary" decimal-format="packed" length="10" />
	<field id="TLBF04" type="numericBinary" decimal-format="packed" length="10" />
	<field id="TLBF05" type="numericBinary" decimal-format="packed" length="10" />
	<field id="TLBF06" type="numericBinary" decimal-format="packed" length="10" />
	<field id="TLBF07" type="numericBinary" decimal-format="packed" length="10" />
	<field id="TLBF08" type="numericBinary" decimal-format="packed" length="10" />
	<field id="TLBF09" type="numericBinary" decimal-format="packed" length="10" />
	<field id="TLBF10" type="numericBinary" decimal-format="packed" length="10" />
	<field id="TLBF11" type="numericBinary" decimal-format="packed" length="10" />
	<field id="TLBF12" type="numericBinary" decimal-format="packed" length="10" />
	<field id="TLBF13" type="numericBinary" decimal-format="packed" length="10" />
	<field id="TLBF14" type="numericBinary" decimal-format="packed" length="10" />
	<field id="TLBF15" type="numericBinary" decimal-format="packed" length="10" />
	<field id="TLBF16" type="numericBinary" decimal-format="packed" length="10" />
	<field id="TLBF17" type="numericBinary" decimal-format="packed" length="10" />
	<field id="TLBF18" type="numericBinary" decimal-format="packed" length="10" />
	<field id="TLBF19" type="numericBinary" decimal-format="packed" length="10" />
	<field id="TLBF20" type="numericBinary" decimal-format="packed" length="10" />
	<field id="TLBAFL" type="binary" length="2" />
	<field id="TLBCUR" type="string" charset="cp1047" length="4" />
	<field id="TLBCIF" type="string" charset="cp1047" length="7" />
	<field id="TLBPRD" type="string" charset="cp1047" length="2" />
	<field id="TLBSRC" type="string" charset="cp1047" length="1" />
	<field id="TLBTPN" type="string" charset="cp1047" length="40" />
	<field id="TLBPNM" type="string" charset="cp1047" length="20" />
	<field id="TLBREN" type="string" charset="cp1047" length="1" />
	<field id="TLBIDC" type="string" charset="cp1047" length="1" />
	<field id="TLBXAT" type="string" charset="cp1047" length="1" />
	<field id="TLCUR1" type="string" charset="cp1047" length="4" />
	<field id="TLCUR2" type="string" charset="cp1047" length="4" />
	<field id="TLCUR3" type="string" charset="cp1047" length="4" />
	<field id="TLBC01" type="string" charset="cp1047" length="1" />
	<field id="TLBC02" type="string" charset="cp1047" length="1" />
	<field id="TLBC03" type="string" charset="cp1047" length="1" />
	<field id="TLBC04" type="string" charset="cp1047" length="1" />
	<field id="TLBC05" type="string" charset="cp1047" length="1" />
	<field id="TLBC06" type="string" charset="cp1047" length="1" />
	<field id="TLBC07" type="string" charset="cp1047" length="1" />
	<field id="TLBC08" type="string" charset="cp1047" length="1" />
	<field id="TLBC09" type="string" charset="cp1047" length="1" />
	<field id="TLBC10" type="string" charset="cp1047" length="1" />
	<field id="TLBC11" type="string" charset="cp1047" length="1" />
	<field id="TLBC12" type="string" charset="cp1047" length="1" />
	<field id="TLBC13" type="string" charset="cp1047" length="1" />
	<field id="TLBC14" type="string" charset="cp1047" length="1" />
	<field id="TLBC15" type="string" charset="cp1047" length="1" />
	<field id="TLBC16" type="string" charset="cp1047" length="1" />
	<field id="TLBC17" type="string" charset="cp1047" length="1" />
	<field id="TLBC18" type="string" charset="cp1047" length="1" />
	<field id="TLBC19" type="string" charset="cp1047" length="1" />
	<field id="TLBC20" type="string" charset="cp1047" length="1" />
	<field id="TLXUFD" type="string" charset="cp1047" length="10" />
	<field id="TLBDS1" type="string" charset="cp1047" length="50" />
	<field id="TLBDS2" type="string" charset="cp1047" length="40" />
	<field id="RMCKC" type="string" charset="cp1047" length="15" />
	<field id="RMUSRI" type="string" charset="cp1047" length="20" />
	<field id="RMSRC" type="numericBinary" decimal-format="packed" length="2" />
	<field id="RMAPID" type="string" charset="cp1047" length="25" />
	<field id="RMNAME" type="string" charset="cp1047" length="40" />
	<field id="RMADD1" type="string" charset="cp1047" length="40" />
	<field id="RMADD2" type="string" charset="cp1047" length="40" />
	<field id="RMADD3" type="string" charset="cp1047" length="30" />
	<field id="RMPSTC" type="string" charset="cp1047" length="10" />
	<field id="RMCNT" type="string" charset="cp1047" length="20" />
	<field id="RMPYNM" type="string" charset="cp1047" length="40" />
	<field id="RMPYID" type="string" charset="cp1047" length="25" />
	<field id="RMPAD1" type="string" charset="cp1047" length="40" />
	<field id="RMPAD2" type="string" charset="cp1047" length="40" />
	<field id="RMPAD3" type="string" charset="cp1047" length="30" />
	<field id="RMPPSC" type="string" charset="cp1047" length="10" />
	<field id="RMPYCN" type="string" charset="cp1047" length="20" />
	<field id="RMSEHS" type="string" charset="cp1047" length="4" />
	<field id="RMSECT" type="string" charset="cp1047" length="3" />
	<field id="TLBFIL" type="string" charset="cp1047" length="40" />
	<field id="FILLER" type="binary" length="2"/>

	<field id="!type" type="script" encode="true">dsp-abcs-request</field>
	<field id="!code" type="script" encode="true">${dtree("BDS-CODE", "dspScenarioNumber")}</field>
	<field id="!parseCodex" type="script">${msg["!group"]}.${msg.dspTransactionCode?.padLeft(10, "0")}</field>
</codex>',
CURRENT USER, CURRENT TIMESTAMP);

INSERT INTO MWCONFIG.CODEX (ID, XML, MODIFIED_BY, TIMESTAMP)
	VALUES ('dsp-response', '<codex>
	<!-- SOCKET HEADER -->
	<field id="dspPacketLength" type="groupLengthBinary" decimal-format="binary" length="4" />
	<field id="dspHeaderType" type="string" charset="cp1047" length="5" />
	<field id="dspDeviceName" type="string" charset="cp1047" length="15" />
	<field id="dspSocketNumber" type="numericBinary" decimal-format="packed" length="5" />
	<field id="dspPortNumber" type="numericBinary" decimal-format="packed" length="3" />
	<field id="dspFiller1" type="binary" length="1" />

	<!-- MIDDLEWARE HEADER -->
	<field id="dspHeaderLength" type="numeric" charset="cp1047" length="4" />
	<field id="dspMessageLength" type="numeric" charset="cp1047" length="6" />
	<field id="dspVersionNumber" type="string" charset="cp1047" length="4" />
	<field id="dspHeaderFormatId" type="string" charset="cp1047" length="4" />
	<field id="dspDataFormatId" type="string" charset="cp1047" length="10" />
	<field id="dspSourceId" type="string" charset="cp1047" length="10" />
	<field id="dspDestinationId" type="string" charset="cp1047" length="10" />
	<field id="dspRoutingNumber" type="string" charset="cp1047" length="6" />
	<field id="dspMessageStatus" type="string" charset="cp1047" length="8" />
	<field id="dspBankIdNumber" type="string" charset="cp1047" length="11" />
	<field id="dspNode" type="string" charset="cp1047" length="2" />
	<field id="dspExchangeId" type="binary" length="20" />
	<field id="dspScenarioNumber" type="string" charset="cp1047" length="16" />
	<field id="dspTransactionCode" type="string" charset="cp1047" length="4" />
	<field id="dspRetrievalReferenceNumber" type="string" charset="cp1047" length="22" />
	<field id="dspAcquirerReferenceNumber" type="string" charset="cp1047" length="12" />
	<field id="dspTransmissionNumber" type="numeric" charset="cp1047" length="4" />
	<field id="dspNumberOfRecordsToBeLoaded" type="numeric" charset="cp1047" length="4" />
	<field id="dspNumberOfErrorsToBeLoaded" type="numeric" charset="cp1047" length="4" />
	<field id="dspUserId" type="string" charset="cp1047" length="10" />
	<field id="dspTerminalId" type="string" charset="cp1047" length="10" />
	<field id="dspSupervisorId" type="string" charset="cp1047" length="10" />
	<field id="dspMoreRecordIndicator" type="string" charset="cp1047" length="1" />
	<field id="dspCutOffIndicator" type="string" charset="cp1047" length="1" />
	<field id="dspUserData" type="string" charset="cp1047" length="20" />

	<field id="!code" type="script">${msg.dspScenarioNumber+"."+msg.dspTransactionCode?.padLeft(10, "0")}</field>
	<field id="!subCodex" type="script">${getParamValue("dsp-scenario-resp-codex", msg.dspScenarioNumber, "")}</field>
</codex>', CURRENT USER, CURRENT TIMESTAMP);

INSERT INTO MWCONFIG.CODEX (ID, XML, MODIFIED_BY, TIMESTAMP)
	VALUES ('dsp-abcs-subresponse', '<codex>
	<field id="responseLength" type="groupLengthBinary" decimal-format="packed" length="2" base="2" />
	<field id="responseCode" type="string" charset="cp1047" length="2" />
	<field id="responseHeader" type="binary" length="1" />

	<field id="!type" type="script">${msg.get("responseCode")}</field>
	<field id="!subCodex" type="script">dsp-abcs-subresponse-${msg.get("responseCode")}</field>
</codex>
', CURRENT USER, CURRENT TIMESTAMP);

INSERT INTO MWCONFIG.CODEX (ID, XML, MODIFIED_BY, TIMESTAMP)
	VALUES ('dsp-abcs-subresponse-89', '<codex>
	<field id="responseLength" type="groupLengthBinary" decimal-format="packed" length="2" base="2" />
	<field id="responseCode" type="string" charset="cp1047" length="2" />
	<field id="responseHeader" type="binary"  length="1" />
	<field id="responseSubHeader" type="binary"  length="1" />
	
	<field id="ACCTNO" type="numericBinary" decimal-format="packed" length="10" />
	<field id="ACTYPE"  type="string" charset="cp1047" length="1" />
	<field id="SNAME"  type="string" charset="cp1047" length="20" />
	<field id="CFSSNO"  type="string" charset="cp1047" length="25" />
	<field id="STATUS" type="numericBinary" decimal-format="packed" length="1" />
	<field id="CBAL" type="numericBinary" decimal-format="P(2)" length="8" />
	<field id="COLECT" type="numericBinary" decimal-format="P(2)" length="8" />
	<field id="TTFLAV" type="numericBinary" decimal-format="P(2)" length="8" />
	<field id="TTFLDL" type="numericBinary" decimal-format="P(2)" length="8" />
	<field id="DDIBTL" type="numericBinary" decimal-format="P(2)" length="8" />
	<field id="HCFLOT" type="numericBinary" decimal-format="P(2)" length="7" />
	<field id="LC1" type="numericBinary" decimal-format="P(2)" length="8" />
	<field id="LC2" type="numericBinary" decimal-format="P(2)" length="8" />
	<field id="LC3" type="numericBinary" decimal-format="P(2)" length="8" />
	<field id="LC4" type="numericBinary" decimal-format="P(2)" length="8" />
	<field id="LC5" type="numericBinary" decimal-format="P(2)" length="8" />
	<field id="LCOV5" type="numericBinary" decimal-format="P(2)" length="8" />
	<field id="IBFLOT" type="numericBinary" decimal-format="P(2)" length="7" />
	<field id="MCFLOT" type="numericBinary" decimal-format="P(2)" length="7" />
	<field id="TTOC" type="numericBinary" decimal-format="P(2)" length="8" />
	<field id="TTODOC" type="numericBinary" decimal-format="P(2)" length="8" />
	<field id="TTMC" type="numericBinary" decimal-format="P(2)" length="8" />
	<field id="HOLD" type="numericBinary" decimal-format="P(2)" length="8" />
	<field id="WHYTD" type="numericBinary" decimal-format="P(2)" length="7" />
	<field id="WHTDY" type="numericBinary" decimal-format="P(2)" length="7" />
	<field id="ACCRU2" type="numericBinary" decimal-format="P(2)" length="8" />
	<field id="ODINT2" type="numericBinary" decimal-format="P(2)" length="8" />
	<field id="NETAMT" type="numericBinary" decimal-format="P(2)" length="8" />
	<field id="ODCBAL" type="numericBinary" decimal-format="P(2)" length="8" />
	<field id="ODLIMT" type="numericBinary" decimal-format="P(2)" length="8" />
	<field id="ODDLIM" type="numericBinary" decimal-format="P(2)" length="8" />
	<field id="ODACC2" type="numericBinary" decimal-format="P(2)" length="8" />
	<field id="ODUNA2" type="numericBinary" decimal-format="P(2)" length="8" />
	<field id="PBBAL" type="numericBinary" decimal-format="P(2)" length="10" />
	<field id="TLNBSR" type="numericBinary" decimal-format="packed" length="4" />
	<field id="UNPAMT" type="numericBinary" decimal-format="P(2)" length="8" />
	<field id="UNPITM" type="numericBinary" decimal-format="packed" length="3" />
	<field id="TTLLC" type="numericBinary" decimal-format="P(2)" length="8" />
	<field id="TLRINQ" type="string" charset="cp1047" length="1" />
	<field id="TTOCP" type="numericBinary" decimal-format="P(2)" length="8" />
	<field id="DDSIC1" type="binary" length="1" />
	<field id="DDSIC2" type="binary" length="1" />
	<field id="DDSIC3" type="binary" length="1" />
	<field id="DDSIC4" type="binary" length="1" />
	<field id="TTSA" type="numericBinary" decimal-format="P(2)" length="8" />
	<field id="IB1" type="numericBinary" decimal-format="P(2)" length="8" />
	<field id="IB2" type="numericBinary" decimal-format="P(2)" length="8" />
	<field id="IB3" type="numericBinary" decimal-format="P(2)" length="8" />
	<field id="IB4" type="numericBinary" decimal-format="P(2)" length="8" />
	<field id="IB5" type="numericBinary" decimal-format="P(2)" length="8" />
	<field id="AVLBAL" type="numericBinary" decimal-format="P(2)" length="8" />
	<field id="MINBLM" type="numericBinary" decimal-format="P(2)" length="8" />
</codex>
', CURRENT USER, CURRENT TIMESTAMP);

INSERT INTO MWCONFIG.CODEX (ID, XML, MODIFIED_BY, TIMESTAMP)
	VALUES ('dsp-abcs-subresponse-F1', '<codex>
	<field id="responseLength" type="groupLengthBinary" decimal-format="packed" length="2" base="2" />
	<field id="responseCode" type="string" charset="cp1047" length="2" />
	<field id="responseHeader" type="binary" length="1" />
	<field id="TLXMNE" type="string" charset="cp1047" length="3" />
	<field id="SNAME" type="string" charset="cp1047" length="20" />
	<field id="ACC" type="numericBinary" decimal-format="packed" length="10" />
	<field id="AMT1" type="numericBinary" decimal-format="P(2)" length="8" />
	<field id="AMT2" type="numericBinary" decimal-format="P(2)" length="8" />
	<field id="!type" type="script">${msg.get("responseCode")}</field>
</codex>
', CURRENT USER, CURRENT TIMESTAMP);

INSERT INTO MWCONFIG.CODEX (ID, ALLOW_PARTIAL, XML, MODIFIED_BY, TIMESTAMP) VALUES ('iso-8583-core-syariah', null, '<codex id="iso-8583-core-syariah" escape="true">
	<field id="packetLength" type="groupLengthBinary" decimal-format="binary" length="2" />
	<field id="messageType" type="string" length="4" padding-mode="right" padding-char=" " />
	<field id="bitmap" type="bitmap">
		<field id="primaryAccountNumber" bit="2" type="string" length="19" format="llvar" />
		<field id="processingCode" bit="3" type="string" length="6" />
		<field id="amountTransaction" bit="4" type="string" length="12" padding-mode="left" padding-char="0" />
		<field id="amountSettlement" bit="5" type="string" length="12" padding-mode="left" padding-char="0" />
		<field id="amountCardholderBilling" bit="6" type="string" length="12" padding-mode="left" padding-char="0" />
		<field id="transmissionDateTime" bit="7" type="string" length="10" />
		<field id="amountCardholderBillingFee" bit="8" type="string" length="8" padding-mode="left" padding-char="0" />
		<field id="conversionRateSettlement" bit="9" type="string" length="8" padding-mode="left" padding-char="0" />
		<field id="conversionRateCardholderBilling" bit="10" type="string" length="8" padding-mode="left" padding-char="0" />
		<field id="systemsTraceAuditNumber" bit="11" type="string" length="6" />
		<field id="timeLocalTransaction" bit="12" type="string" length="6" />
		<field id="dateLocalTransaction" bit="13" type="string" length="4" />
		<field id="dateExpiration" bit="14" type="string" length="4" />
		<field id="dateSettlement" bit="15" type="string" length="4" />
		<field id="dateConversion" bit="16" type="string" length="4" />
		<field id="dateCapture" bit="17" type="string" length="4" />
		<field id="merchantType" bit="18" type="string" length="4" padding-mode="left" padding-char="0" />
		<field id="acquiringInstitutionCountryCode" bit="19" type="string" length="3" padding-mode="left" padding-char="0" />
		<field id="panExtendedCountryCode" bit="20" type="string" length="3" padding-mode="left" padding-char="0" />
		<field id="forwardingInstitutionCountryCode" bit="21" type="string" length="3" padding-mode="left" padding-char="0" />
		<field id="pointOfServiceEntryMode" bit="22" type="string" length="3" padding-mode="left" padding-char="0" />
		<field id="applicationPanNumber" bit="23" type="string" length="3" padding-mode="left" padding-char="0" />
		<field id="networkInternationalIdentifier" bit="24" type="string" length="3" padding-mode="left" padding-char="0" />
		<field id="pointOfServiceConditionCode" bit="25" type="string" length="2" padding-mode="left" padding-char="0" />
		<field id="pointOfServiceCaptureCode" bit="26" type="string" length="2" padding-mode="left" padding-char="0" />
		<field id="authorisingIdentificationResponseLength" bit="27" type="string" length="1" padding-mode="left" padding-char="0" />
		<field id="amountTransactionFee" bit="28" type="string" length="9" padding-mode="left" padding-char="0" />
		<field id="amountSettlementFee" bit="29" type="string" length="9" padding-mode="left" padding-char="0" />
		<field id="amountTransactionProcessingFee" bit="30" type="string" length="9" padding-mode="left" padding-char="0" />
		<field id="amountSettlementProcessingFee" bit="31" type="string" length="9" padding-mode="left" padding-char="0" />
		<field id="acquiringInstitutionIdentificationCode" bit="32" type="string" length="11" format="llvar" />
		<field id="forwardingInstitutionIdentificationCode" bit="33" type="string" length="11" format="llvar" />
		<field id="primaryAccountNumberExtended" bit="34" type="string" length="28" format="llvar" />
		<field id="track2Data" bit="35" type="string" length="37" format="llvar" />
		<field id="track3Data" bit="36" type="string" length="104" format="lllvar" />
		<field id="retrievalReferenceNumber" bit="37" type="string" length="12" />
		<field id="authorisationIdentificationResponse" bit="38" type="string" length="6" />  
		<field id="responseCode" bit="39" type="string" length="2" padding-mode="left" />
		<field id="serviceRestrictionCode" bit="40" type="string" length="3" />
		<field id="cardAcceptorTerminalIdentification" bit="41" type="string" length="16" />
		<field id="cardAcceptorIdentificationCode" bit="42" type="string" length="15" />
		<field id="cardAcceptorName" bit="43" type="string" length="40" />
		<field id="additionalResponseData" bit="44" type="string" length="25" format="llvar" />
		<field id="track1Data" bit="45" type="string" length="76" format="llvar" />
		<field id="additionalDataIso" bit="46" type="string" length="999" format="lllvar" />
		<field id="additionalDataNational" bit="47" type="string" length="999" format="lllvar" />
		<field id="additionalDataPrivate" bit="48" type="string" length="999" format="lllvar" />
		<field id="currencyCodeTransaction" bit="49" type="string" length="3" />
		<field id="currencyCodeSettlement" bit="50" type="string" length="3" />
		<field id="currencyCodeCardholderBilling" bit="51" type="string" length="3" />
		<field id="personalIdentificationNumberData" bit="52" type="string" length="16" />
		<field id="securityRelatedControlInformation" bit="53" type="string" length="18" padding-mode="left" padding-char="0" />
		<field id="additionalAmounts" bit="54" type="string" length="999" format="lllvar" />
		<field id="reservedIso1" bit="55" type="string" length="999" format="lllvar" />
		<field id="reservedIso2" bit="56" type="string" length="999" format="lllvar" />
		<field id="reservedNational1" bit="57" type="string" length="999" format="lllvar" />
		<field id="reservedNational2" bit="58" type="string" length="999" format="lllvar" />
		<field id="reservedNational3" bit="59" type="string" length="999" format="lllvar" />
		<field id="reasonCode" bit="60" type="string" length="999" format="lllvar" />
		<field id="reservedPrivate1" bit="61" type="string" length="999" format="lllvar" />
		<field id="reservedPrivate2" bit="62" type="string" length="999" format="lllvar" />
		<field id="reservedPrivate3" bit="63" type="string" length="999" format="lllvar" />
		<field id="messageAuthenticationCode" bit="64" type="string" length="16" />
		<field id="bitMapTertiary" bit="65" type="string" length="16" />
		<field id="settlementCode" bit="66" type="string" length="1" padding-mode="left" padding-char="0" />
		<field id="extendedPaymentCode" bit="67" type="string" length="2" padding-mode="left" padding-char="0" />
		<field id="receivingInstitutionCountryCode" bit="68" type="string" length="3" />
		<field id="settlementInstitutionCountyCode" bit="69" type="string" length="3" />
		<field id="networkManagementInformationCode" bit="70" type="string" length="3" />
		<field id="messageNumber" bit="71" type="string" length="4" padding-mode="left" padding-char="0" />
		<field id="messageNumberLast" bit="72" type="string" length="4" padding-mode="left" padding-char="0" />
		<field id="dateAction" bit="73" type="string" length="6" />
		<field id="creditsNumber" bit="74" type="string" length="10" padding-mode="left" padding-char="0" />
		<field id="creditsReversalNumber" bit="75" type="string" length="10" padding-mode="left" padding-char="0" />
		<field id="debitsNumber" bit="76" type="string" length="10" padding-mode="left" padding-char="0" />
		<field id="debitsReversalNumber" bit="77" type="string" length="10" padding-mode="left" padding-char="0" />
		<field id="transferNumber" bit="78" type="string" length="10" padding-mode="left" padding-char="0" />
		<field id="transferReversalNumber" bit="79" type="string" length="10" padding-mode="left" padding-char="0" />
		<field id="inquiriesNumber" bit="80" type="string" length="10" padding-mode="left" padding-char="0" />
		<field id="authorisationsNumber" bit="81" type="string" length="10" padding-mode="left" padding-char="0" />
		<field id="creditsProcesssingFeeAmount" bit="82" type="string" length="14" padding-mode="left" padding-char="0" />
		<field id="creditsTransactionFeeAmount" bit="83" type="string" length="14" padding-mode="left" padding-char="0" />
		<field id="debitsProcessingFeeAmount" bit="84" type="string" length="14" padding-mode="left" padding-char="0" />
		<field id="debitsTransactionFeeAmount" bit="85" type="string" length="14" padding-mode="left" padding-char="0" />
		<field id="creditsAmount" bit="86" type="string" length="15" padding-mode="left" padding-char="0" />
		<field id="creditsReversalAmount" bit="87" type="string" length="15" padding-mode="left" padding-char="0" />
		<field id="debitsAmount" bit="88" type="string" length="15" padding-mode="left" padding-char="0" />
		<field id="debitsReversalAmount" bit="89" type="string" length="15" padding-mode="left" padding-char="0" />
		<field id="originalDataElements" bit="90" type="string" length="42" padding-mode="left" />
		<field id="fileUpdateCode" bit="91" type="string" length="1" />
		<field id="fileSecurityCode" bit="92" type="string" length="2" padding-mode="left" padding-char="0" />
		<field id="responseIndicator" bit="93" type="string" length="5" padding-mode="left" padding-char="0" />
		<field id="serviceIndicator" bit="94" type="string" length="7" />
		<field id="replacementAmounts" bit="95" type="string" length="42" />
		<field id="messageSecurityCode" bit="96" type="string" length="8" />
		<field id="amountNetSettlement" bit="97" type="string" length="16" padding-mode="left" padding-char="0" />
		<field id="payee" bit="98" type="string" length="25" />
		<field id="settlementInstitutionIdentificationCode" bit="99" type="string" length="11" format="llvar" />
		<field id="receivingInstitutionIdentificationCode" bit="100" type="string" length="11" format="llvar" />
		<field id="slipNumber" bit="101" type="string" length="11" format="llvar" />
		<field id="fromAccount" bit="102" type="string" length="28" format="llvar" />
		<field id="toAccount" bit="103" type="string" length="28" format="llvar" />
		<field id="transactionDescription" bit="104" type="string" length="100" format="lllvar" />
		<field id="reservedForIsoUse1" bit="105" type="string" length="999" format="lllvar" />
		<field id="reservedForIsoUse2" bit="106" type="string" length="999" format="lllvar" />
		<field id="reservedForIsoUse3" bit="107" type="string" length="999" format="lllvar" />
		<field id="reservedForIsoUse4" bit="108" type="string" length="999" format="lllvar" />
		<field id="reservedForIsoUse5" bit="109" type="string" length="999" format="lllvar" />
		<field id="reservedForIsoUse6" bit="110" type="string" length="999" format="lllvar" />
		<field id="reservedForIsoUse7" bit="111" type="string" length="999" format="lllvar" />
		<field id="reservedForNationalUse" bit="112" type="string" length="999" format="lllvar" />
		<field id="authorisingAgentInstitutionIdCode" bit="113" type="string" length="11" format="llvar" />
		<field id="reservedForNationalUse1" bit="114" type="string" length="999" format="lllvar" />
		<field id="reservedForNationalUse2" bit="115" type="string" length="999" format="lllvar" />
		<field id="reservedForNationalUse3" bit="116" type="string" length="999" format="lllvar" />
		<field id="reservedForNationalUse4" bit="117" type="string" length="999" format="lllvar" />
		<field id="reservedForNationalUse5" bit="118" type="string" length="999" format="lllvar" />
		<field id="reservedForNationalUse6" bit="119" type="string" length="999" format="lllvar" />
		<field id="reservedForPrivateUse1" bit="120" type="string" length="999" format="lllvar" />
		<field id="reservedForPrivateUse2" bit="121" type="string" length="999" format="lllvar" />
		<field id="reservedForPrivateUse3" bit="122" type="string" length="999" format="lllvar" />
		<field id="reservedForPrivateUse4" bit="123" type="string" length="999" format="lllvar" />
		<field id="infoText" bit="124" type="string" length="255" format="lllvar" />
		<field id="networkManagementInformation" bit="125" type="string" length="50" format="lllvar" />
		<field id="issuerTraceId" bit="126" type="string" length="6" format="lllvar" />
		<field id="reservedForPrivateUse" bit="127" type="string" length="11" format="lllvar" />
		<field id="messageAuthenticationCode2" bit="128" type="string" length="16" />
	</field>
	<field id="!type" type="script" encode="true">iso-8583-core-syariah</field>
	<field id="!mid" type="script" encode="true">${msg.transmissionDateTime}.${msg.systemsTraceAuditNumber}</field>
	<field id="!code" type="script" encode="true">${dtree("CORE-SYARIAH-CODE", "messageType")}</field>
</codex>
', CURRENT USER, CURRENT TIMESTAMP);

INSERT INTO MWCONFIG.CODEX (ID, ALLOW_PARTIAL, XML, MODIFIED_BY, TIMESTAMP) VALUES ('iso-8583-bi-conn', 1, '<codex id="iso-8583-bi-conn" escape="true">
 	<field id="packetLength" type="groupLengthBinary" decimal-format="binary" length="2" />
 	<field id="messageType" type="string" length="4" padding-mode="right" padding-char=" " />
 	<field id="bitmap" type="bitmap">
 		<field id="primaryAccountNumber" bit="2" type="string" length="19" format="llvar" />
 		<field id="processingCode" bit="3" type="string" length="6" />
 		<field id="amountTransaction" bit="4" type="string" length="15" padding-mode="left" padding-char="0" />
 		<field id="amountSettlement" bit="5" type="string" length="15" padding-mode="left" padding-char="0" />
 		<field id="amountCardholderBilling" bit="6" type="string" length="12" padding-mode="left" padding-char="0" />
 		<field id="transmissionDateTime" bit="7" type="string" length="10" />
 		<field id="amountCardholderBillingFee" bit="8" type="string" length="8" padding-mode="left" padding-char="0" />
 		<field id="conversionRateSettlement" bit="9" type="string" length="8" padding-mode="left" padding-char="0" />
 		<field id="conversionRateCardholderBilling" bit="10" type="string" length="8" padding-mode="left" padding-char="0" />
 		<field id="systemsTraceAuditNumber" bit="11" type="string" length="6" />
 		<field id="timeLocalTransaction" bit="12" type="string" length="6" />
 		<field id="dateLocalTransaction" bit="13" type="string" length="4" />
 		<field id="dateExpiration" bit="14" type="string" length="4" />
 		<field id="dateSettlement" bit="15" type="string" length="4" />
 		<field id="dateConversion" bit="16" type="string" length="4" />
 		<field id="dateCapture" bit="17" type="string" length="4" />
 		<field id="merchantType" bit="18" type="string" length="4" padding-mode="left" padding-char="0" />
 		<field id="acquiringInstitutionCountryCode" bit="19" type="string" length="3" padding-mode="left" padding-char="0" />
 		<field id="panExtendedCountryCode" bit="20" type="string" length="3" padding-mode="left" padding-char="0" />
 		<field id="forwardingInstitutionCountryCode" bit="21" type="string" length="3" padding-mode="left" padding-char="0" />
 		<field id="pointOfServiceEntryMode" bit="22" type="string" length="3" padding-mode="left" padding-char="0" />
 		<field id="applicationPanNumber" bit="23" type="string" length="3" padding-mode="left" padding-char="0" />
 		<field id="networkInternationalIdentifier" bit="24" type="string" length="3" padding-mode="left" padding-char="0" />
 		<field id="pointOfServiceConditionCode" bit="25" type="string" length="2" padding-mode="left" padding-char="0" />
 		<field id="pointOfServiceCaptureCode" bit="26" type="string" length="2" padding-mode="left" padding-char="0" />
 		<field id="authorisingIdentificationResponseLength" bit="27" type="string" length="1" padding-mode="left" padding-char="0" />
 		<field id="amountTransactionFee" bit="28" type="string" length="9" padding-mode="left" padding-char="0" />
 		<field id="amountSettlementFee" bit="29" type="string" length="9" padding-mode="left" padding-char="0" />
 		<field id="amountTransactionProcessingFee" bit="30" type="string" length="9" padding-mode="left" padding-char="0" />
 		<field id="amountSettlementProcessingFee" bit="31" type="string" length="9" padding-mode="left" padding-char="0" />
 		<field id="acquiringInstitutionIdentificationCode" bit="32" type="string" length="11" format="llvar" />
 		<field id="forwardingInstitutionIdentificationCode" bit="33" type="string" length="11" format="llvar" />
 		<field id="primaryAccountNumberExtended" bit="34" type="string" length="28" format="llvar" />
 		<field id="track2Data" bit="35" type="string" length="37" format="llvar" />
 		<field id="track3Data" bit="36" type="string" length="104" format="lllvar" />
 		<field id="retrievalReferenceNumber" bit="37" type="string" length="12" />
 		<field id="authorisationIdentificationResponse" bit="38" type="string" length="6" />  
 		<field id="responseCode" bit="39" type="string" length="2" padding-mode="left" />
 		<field id="serviceRestrictionCode" bit="40" type="string" length="3" />
 		<field id="cardAcceptorTerminalIdentification" bit="41" type="string" length="16" />
 		<field id="cardAcceptorIdentificationCode" bit="42" type="string" length="15" />
 		<field id="cardAcceptorName" bit="43" type="string" length="40" />
 		<field id="additionalResponseData" bit="44" type="string" length="25" format="llvar" />
 		<field id="track1Data" bit="45" type="string" length="76" format="llvar" />
 		<field id="additionalDataIso" bit="46" type="string" length="999" format="lllvar" />
 		<field id="additionalDataNational" bit="47" type="string" length="999" format="lllvar" />
 		<field id="additionalDataPrivate" bit="48" type="string" length="999" format="lllvar" />
 		<field id="currencyCodeTransaction" bit="49" type="string" length="3" />
 		<field id="currencyCodeSettlement" bit="50" type="string" length="3" />
 		<field id="currencyCodeCardholderBilling" bit="51" type="string" length="3" />
 		<field id="personalIdentificationNumberData" bit="52" type="string" length="16" />
 		<field id="securityRelatedControlInformation" bit="53" type="string" length="18" padding-mode="left" padding-char="0" />
 		<field id="additionalAmounts" bit="54" type="string" length="999" format="lllvar" />
 		<field id="reservedIso1" bit="55" type="string" length="999" format="lllvar" />
 		<field id="reservedIso2" bit="56" type="string" length="999" format="lllvar" />
 		<field id="reservedNational1" bit="57" type="string" length="999" format="lllvar" />
 		<field id="reservedNational2" bit="58" type="string" length="999" format="lllvar" />
 		<field id="reservedNational3" bit="59" type="string" length="999" format="lllvar" />
 		<field id="reasonCode" bit="60" type="string" length="999" format="lllvar" />
 		<field id="reservedPrivate1" bit="61" type="string" length="999" format="lllvar" />
 		<field id="reservedPrivate2" bit="62" type="string" length="999" format="lllvar" />
 		<field id="reservedPrivate3" bit="63" type="string" length="999" format="lllvar" />
 		<field id="messageAuthenticationCode" bit="64" type="string" length="16" />
 		<field id="bitMapTertiary" bit="65" type="string" length="16" />
 		<field id="settlementCode" bit="66" type="string" length="1" padding-mode="left" padding-char="0" />
 		<field id="extendedPaymentCode" bit="67" type="string" length="2" padding-mode="left" padding-char="0" />
 		<field id="receivingInstitutionCountryCode" bit="68" type="string" length="3" />
 		<field id="settlementInstitutionCountyCode" bit="69" type="string" length="3" />
 		<field id="networkManagementInformationCode" bit="70" type="string" length="3" />
 		<field id="messageNumber" bit="71" type="string" length="4" padding-mode="left" padding-char="0" />
 		<field id="messageNumberLast" bit="72" type="string" length="4" padding-mode="left" padding-char="0" />
 		<field id="dateAction" bit="73" type="string" length="6" />
 		<field id="creditsNumber" bit="74" type="string" length="10" padding-mode="left" padding-char="0" />
 		<field id="creditsReversalNumber" bit="75" type="string" length="10" padding-mode="left" padding-char="0" />
 		<field id="debitsNumber" bit="76" type="string" length="10" padding-mode="left" padding-char="0" />
 		<field id="debitsReversalNumber" bit="77" type="string" length="10" padding-mode="left" padding-char="0" />
 		<field id="transferNumber" bit="78" type="string" length="10" padding-mode="left" padding-char="0" />
 		<field id="transferReversalNumber" bit="79" type="string" length="10" padding-mode="left" padding-char="0" />
 		<field id="inquiriesNumber" bit="80" type="string" length="10" padding-mode="left" padding-char="0" />
 		<field id="authorisationsNumber" bit="81" type="string" length="10" padding-mode="left" padding-char="0" />
 		<field id="creditsProcesssingFeeAmount" bit="82" type="string" length="14" padding-mode="left" padding-char="0" />
 		<field id="creditsTransactionFeeAmount" bit="83" type="string" length="14" padding-mode="left" padding-char="0" />
 		<field id="debitsProcessingFeeAmount" bit="84" type="string" length="14" padding-mode="left" padding-char="0" />
 		<field id="debitsTransactionFeeAmount" bit="85" type="string" length="14" padding-mode="left" padding-char="0" />
 		<field id="creditsAmount" bit="86" type="string" length="15" padding-mode="left" padding-char="0" />
 		<field id="creditsReversalAmount" bit="87" type="string" length="15" padding-mode="left" padding-char="0" />
 		<field id="debitsAmount" bit="88" type="string" length="15" padding-mode="left" padding-char="0" />
 		<field id="debitsReversalAmount" bit="89" type="string" length="15" padding-mode="left" padding-char="0" />
 		<field id="originalDataElements" bit="90" type="string" length="42" padding-mode="left" />
 		<field id="fileUpdateCode" bit="91" type="string" length="1" />
 		<field id="fileSecurityCode" bit="92" type="string" length="2" padding-mode="left" padding-char="0" />
 		<field id="responseIndicator" bit="93" type="string" length="5" padding-mode="left" padding-char="0" />
 		<field id="serviceIndicator" bit="94" type="string" length="7" />
 		<field id="replacementAmounts" bit="95" type="string" length="42" />
 		<field id="messageSecurityCode" bit="96" type="string" length="8" />
 		<field id="amountNetSettlement" bit="97" type="string" length="16" padding-mode="left" padding-char="0" />
 		<field id="payee" bit="98" type="string" length="25" />
 		<field id="settlementInstitutionIdentificationCode" bit="99" type="string" length="11" format="llvar" />
 		<field id="receivingInstitutionIdentificationCode" bit="100" type="string" length="11" format="llvar" />
 		<field id="slipNumber" bit="101" type="string" length="11" format="llvar" />
 		<field id="fromAccount" bit="102" type="string" length="28" format="llvar" />
 		<field id="toAccount" bit="103" type="string" length="28" format="llvar" />
 		<field id="transactionDescription" bit="104" type="string" length="100" format="lllvar" />
 		<field id="reservedForIsoUse1" bit="105" type="string" length="999" format="lllvar" />
 		<field id="reservedForIsoUse2" bit="106" type="string" length="999" format="lllvar" />
 		<field id="reservedForIsoUse3" bit="107" type="string" length="999" format="lllvar" />
 		<field id="reservedForIsoUse4" bit="108" type="string" length="999" format="lllvar" />
 		<field id="reservedForIsoUse5" bit="109" type="string" length="999" format="lllvar" />
 		<field id="reservedForIsoUse6" bit="110" type="string" length="999" format="lllvar" />
 		<field id="reservedForIsoUse7" bit="111" type="string" length="999" format="lllvar" />
 		<field id="reservedForNationalUse" bit="112" type="string" length="999" format="lllvar" />
 		<field id="authorisingAgentInstitutionIdCode" bit="113" type="string" length="11" format="llvar" />
 		<field id="reservedForNationalUse1" bit="114" type="string" length="999" format="lllvar" />
 		<field id="reservedForNationalUse2" bit="115" type="string" length="999" format="lllvar" />
 		<field id="reservedForNationalUse3" bit="116" type="string" length="999" format="lllvar" />
 		<field id="reservedForNationalUse4" bit="117" type="string" length="999" format="lllvar" />
 		<field id="reservedForNationalUse5" bit="118" type="string" length="999" format="lllvar" />
 		<field id="reservedForNationalUse6" bit="119" type="string" length="999" format="lllvar" />
 		<field id="reservedForPrivateUse1" bit="120" type="string" length="999" format="lllvar" />
 		<field id="reservedForPrivateUse2" bit="121" type="string" length="999" format="lllvar" />
 		<field id="reservedForPrivateUse3" bit="122" type="string" length="999" format="lllvar" />
 		<field id="reservedForPrivateUse4" bit="123" type="string" length="999" format="lllvar" />
 		<field id="infoText" bit="124" type="string" length="255" format="lllvar" />
 		<field id="networkManagementInformation" bit="125" type="string" length="50" format="lllvar" />
 		<field id="issuerTraceId" bit="126" type="string" length="6" format="lllvar" />
 		<field id="reservedForPrivateUse" bit="127" type="string" length="11" format="lllvar" />
 		<field id="messageAuthenticationCode2" bit="128" type="string" length="10" />
 	</field>
 	<field id="!type" type="script" encode="true">iso-8583-bi-conn</field>
	<field id="!mid" type="script" encode="true">${msg.transmissionDateTime}.${msg.systemsTraceAuditNumber}</field>
	<field id="!code" type="script" encode="true">${msg.messageType}.${msg.messageType.startsWith("08") ? msg.networkManagementInformationCode?.padLeft(6, "0") : msg.processingCode?.trim()}</field>
</codex>', CURRENT USER, CURRENT TIMESTAMP);

INSERT INTO MWCONFIG.CODEX(ID, ALLOW_PARTIAL, XML, MODIFIED_BY, TIMESTAMP) VALUES ('iso-8583-itmibft', 1, '<codex id="iso-8583-itmibft" escape="true">
	<field id="packetLength" type="groupLengthBinary" decimal-format="binary" length="2" />
	<field id="messageType" type="string" length="4" padding-mode="right" padding-char=" " />
	<field id="bitmap" type="bitmap">
		<field id="primaryAccountNumber" bit="2" type="string" length="19" format="llvar" />
		<field id="processingCode" bit="3" type="string" length="6" />
		<field id="amountTransaction" bit="4" type="string" length="12" padding-mode="left" padding-char="0" />
		<field id="amountSettlement" bit="5" type="string" length="12" padding-mode="left" padding-char="0" />
		<field id="amountCardholderBilling" bit="6" type="string" length="12" padding-mode="left" padding-char="0" />
		<field id="transmissionDateTime" bit="7" type="string" length="10" />
		<field id="amountCardholderBillingFee" bit="8" type="string" length="8" padding-mode="left" padding-char="0" />
		<field id="conversionRateSettlement" bit="9" type="string" length="8" padding-mode="left" padding-char="0" />
		<field id="conversionRateCardholderBilling" bit="10" type="string" length="8" padding-mode="left" padding-char="0" />
		<field id="systemsTraceAuditNumber" bit="11" type="string" length="6" />
		<field id="timeLocalTransaction" bit="12" type="string" length="6" />
		<field id="dateLocalTransaction" bit="13" type="string" length="4" />
		<field id="dateExpiration" bit="14" type="string" length="4" />
		<field id="dateSettlement" bit="15" type="string" length="4" />
		<field id="dateConversion" bit="16" type="string" length="4" />
		<field id="dateCapture" bit="17" type="string" length="4" />
		<field id="merchantType" bit="18" type="string" length="4" padding-mode="left" padding-char="0" />
		<field id="acquiringInstitutionCountryCode" bit="19" type="string" length="3" padding-mode="left" padding-char="0" />
		<field id="panExtendedCountryCode" bit="20" type="string" length="3" padding-mode="left" padding-char="0" />
		<field id="forwardingInstitutionCountryCode" bit="21" type="string" length="3" padding-mode="left" padding-char="0" />
		<field id="pointOfServiceEntryMode" bit="22" type="string" length="3" padding-mode="left" padding-char="0" />
		<field id="applicationPanNumber" bit="23" type="string" length="3" padding-mode="left" padding-char="0" />
		<field id="networkInternationalIdentifier" bit="24" type="string" length="3" padding-mode="left" padding-char="0" />
		<field id="pointOfServiceConditionCode" bit="25" type="string" length="2" padding-mode="left" padding-char="0" />
		<field id="pointOfServiceCaptureCode" bit="26" type="string" length="2" padding-mode="left" padding-char="0" />
		<field id="authorisingIdentificationResponseLength" bit="27" type="string" length="1" padding-mode="left" padding-char="0" />
		<field id="amountTransactionFee" bit="28" type="string" length="9" padding-mode="left" padding-char="0" />
		<field id="amountSettlementFee" bit="29" type="string" length="9" padding-mode="left" padding-char="0" />
		<field id="amountTransactionProcessingFee" bit="30" type="string" length="9" padding-mode="left" padding-char="0" />
		<field id="amountSettlementProcessingFee" bit="31" type="string" length="9" padding-mode="left" padding-char="0" />
		<field id="acquiringInstitutionIdentificationCode" bit="32" type="string" length="11" format="llvar" />
		<field id="forwardingInstitutionIdentificationCode" bit="33" type="string" length="11" format="llvar" />
		<field id="primaryAccountNumberExtended" bit="34" type="string" length="28" format="llvar" />
		<field id="track2Data" bit="35" type="string" length="37" format="llvar"/>
		<field id="track3Data" bit="36" type="string" length="104" format="lllvar" />
		<field id="retrievalReferenceNumber" bit="37" type="string" length="12" />
		<field id="authorisationIdentificationResponse" bit="38" type="string" length="6" />  
		<field id="responseCode" bit="39" type="string" length="2" padding-mode="left" />
		<field id="serviceRestrictionCode" bit="40" type="string" length="3" />
		<field id="cardAcceptorTerminalIdentification" bit="41" type="string" length="8" />
		<field id="cardAcceptorIdentificationCode" bit="42" type="string" length="15" />
		<field id="cardAcceptorName" bit="43" type="string" length="40" />
		<field id="additionalResponseData" bit="44" type="string" length="25" format="llvar" />
		<field id="track1Data" bit="45" type="string" length="76" format="llvar" />
		<field id="additionalDataIso" bit="46" type="string" length="999" format="lllvar" />
		<field id="additionalDataNational" bit="47" type="string" length="999" format="lllvar" />
		<field id="additionalDataPrivate" bit="48" type="string" length="999" format="lllvar" />
		<field id="currencyCodeTransaction" bit="49" type="string" length="3" />
		<field id="currencyCodeSettlement" bit="50" type="string" length="3" />
		<field id="currencyCodeCardholderBilling" bit="51" type="string" length="3" />
		<field id="personalIdentificationNumberData" bit="52" type="string" length="16" />
		<field id="securityRelatedControlInformation" bit="53" type="string" length="18" padding-mode="left" padding-char="0" />
		<field id="additionalAmounts" bit="54" type="string" length="999" format="lllvar" />
		<field id="reservedIso1" bit="55" type="string" length="999" format="lllvar" />
		<field id="reservedIso2" bit="56" type="string" length="999" format="lllvar" />
		<field id="reservedNational1" bit="57" type="string" length="999" format="lllvar" />
		<field id="reservedNational2" bit="58" type="string" length="999" format="lllvar" />
		<field id="reservedNational3" bit="59" type="string" length="999" format="lllvar" />
		<field id="reasonCode" bit="60" type="string" length="999" format="llvar" />
		<field id="reservedPrivate1" bit="61" type="string" length="999" format="lllvar" />
		<field id="reservedPrivate2" bit="62" type="string" length="999" format="lllvar" />
		<field id="reservedPrivate3" bit="63" type="string" length="999" format="lllvar" />
		<field id="messageAuthenticationCode" bit="64" type="string" length="16" />
		<field id="bitMapTertiary" bit="65" type="string" length="16" />
		<field id="settlementCode" bit="66" type="string" length="1" padding-mode="left" padding-char="0" />
		<field id="extendedPaymentCode" bit="67" type="string" length="2" padding-mode="left" padding-char="0" />
		<field id="receivingInstitutionCountryCode" bit="68" type="string" length="3" />
		<field id="settlementInstitutionCountyCode" bit="69" type="string" length="3" />
		<field id="networkManagementInformationCode" bit="70" type="string" length="3" />
		<field id="messageNumber" bit="71" type="string" length="4" padding-mode="left" padding-char="0" />
		<field id="messageNumberLast" bit="72" type="string" length="4" padding-mode="left" padding-char="0" />
		<field id="dateAction" bit="73" type="string" length="6" />
		<field id="creditsNumber" bit="74" type="string" length="10" padding-mode="left" padding-char="0" />
		<field id="creditsReversalNumber" bit="75" type="string" length="10" padding-mode="left" padding-char="0" />
		<field id="debitsNumber" bit="76" type="string" length="10" padding-mode="left" padding-char="0" />
		<field id="debitsReversalNumber" bit="77" type="string" length="10" padding-mode="left" padding-char="0" />
		<field id="transferNumber" bit="78" type="string" length="10" padding-mode="left" padding-char="0" />
		<field id="transferReversalNumber" bit="79" type="string" length="10" padding-mode="left" padding-char="0" />
		<field id="inquiriesNumber" bit="80" type="string" length="10" padding-mode="left" padding-char="0" />
		<field id="authorisationsNumber" bit="81" type="string" length="10" padding-mode="left" padding-char="0" />
		<field id="creditsProcesssingFeeAmount" bit="82" type="string" length="14" padding-mode="left" padding-char="0" />
		<field id="creditsTransactionFeeAmount" bit="83" type="string" length="14" padding-mode="left" padding-char="0" />
		<field id="debitsProcessingFeeAmount" bit="84" type="string" length="14" padding-mode="left" padding-char="0" />
		<field id="debitsTransactionFeeAmount" bit="85" type="string" length="14" padding-mode="left" padding-char="0" />
		<field id="creditsAmount" bit="86" type="string" length="15" padding-mode="left" padding-char="0" />
		<field id="creditsReversalAmount" bit="87" type="string" length="15" padding-mode="left" padding-char="0" />
		<field id="debitsAmount" bit="88" type="string" length="15" padding-mode="left" padding-char="0" />
		<field id="debitsReversalAmount" bit="89" type="string" length="15" padding-mode="left" padding-char="0" />
		<field id="originalDataElements" bit="90" type="string" length="42" padding-mode="left" />
		<field id="fileUpdateCode" bit="91" type="string" length="1" />
		<field id="fileSecurityCode" bit="92" type="string" length="2" padding-mode="left" padding-char="0" />
		<field id="responseIndicator" bit="93" type="string" length="5" padding-mode="left" padding-char="0" />
		<field id="serviceIndicator" bit="94" type="string" length="7" />
		<field id="replacementAmounts" bit="95" type="string" length="42" />
		<field id="messageSecurityCode" bit="96" type="string" length="8" />
		<field id="amountNetSettlement" bit="97" type="string" length="16" padding-mode="left" padding-char="0" />
		<field id="payee" bit="98" type="string" length="25" />
		<field id="settlementInstitutionIdentificationCode" bit="99" type="string" length="11" format="llvar" />
		<field id="receivingInstitutionIdentificationCode" bit="100" type="string" length="11" format="llvar" />
		<field id="slipNumber" bit="101" type="string" length="11" format="llvar" />
		<field id="fromAccount" bit="102" type="string" length="28" format="llvar" />
		<field id="toAccount" bit="103" type="string" length="28" format="llvar" />
		<field id="transactionDescription" bit="104" type="string" length="100" format="lllvar" />
		<field id="reservedForIsoUse1" bit="105" type="string" length="999" format="lllvar" />
		<field id="reservedForIsoUse2" bit="106" type="string" length="999" format="lllvar" />
		<field id="reservedForIsoUse3" bit="107" type="string" length="999" format="lllvar" />
		<field id="reservedForIsoUse4" bit="108" type="string" length="999" format="lllvar" />
		<field id="reservedForIsoUse5" bit="109" type="string" length="999" format="lllvar" />
		<field id="reservedForIsoUse6" bit="110" type="string" length="999" format="lllvar" />
		<field id="reservedForIsoUse7" bit="111" type="string" length="999" format="lllvar" />
		<field id="reservedForNationalUse" bit="112" type="string" length="999" format="lllvar" />
		<field id="authorisingAgentInstitutionIdCode" bit="113" type="string" length="11" format="llvar" />
		<field id="reservedForNationalUse1" bit="114" type="string" length="999" format="lllvar" />
		<field id="reservedForNationalUse2" bit="115" type="string" length="999" format="lllvar" />
		<field id="reservedForNationalUse3" bit="116" type="string" length="999" format="lllvar" />
		<field id="reservedForNationalUse4" bit="117" type="string" length="999" format="lllvar" />
		<field id="reservedForNationalUse5" bit="118" type="string" length="999" format="lllvar" />
		<field id="reservedForNationalUse6" bit="119" type="string" length="999" format="lllvar" />
		<field id="reservedForPrivateUse1" bit="120" type="string" length="999" format="lllvar" />
		<field id="reservedForPrivateUse2" bit="121" type="string" length="999" format="lllvar" />
		<field id="reservedForPrivateUse3" bit="122" type="string" length="999" format="lllvar" />
		<field id="reservedForPrivateUse4" bit="123" type="string" length="999" format="lllvar" />
		<field id="infoText" bit="124" type="string" length="255" format="lllvar" />
		<field id="networkManagementInformation" bit="125" type="string" length="50" format="lllvar" />
		<field id="issuerTraceId" bit="126" type="string" length="6" format="lllvar" />
		<field id="reservedForPrivateUse" bit="127" type="string" length="11" format="lllvar" />
		<field id="messageAuthenticationCode2" bit="128" type="string" length="16" />
	</field>
	<field id="!type" type="script" encode="true">iso-8583-itmibft</field>
	<field id="!mid" type="script" encode="true">${msg.transmissionDateTime}.${msg.systemsTraceAuditNumber}</field>
	<field id="!code" type="script" encode="true">${msg.messageType}.${msg.messageType.startsWith("08") ? msg.networkManagementInformationCode?.padLeft(6, "0") : msg.processingCode?.substring(0,2).padRight(6, "0")}</field>
</codex>',CURRENT USER, CURRENT TIMESTAMP);

INSERT INTO MWCONFIG.CODEX (ID, XML, MODIFIED_BY, TIMESTAMP)
VALUES ('iso-8583-itm', '<codex id="iso-8583-itm" escape="true">
	<field id="packetLength" type="groupLengthBinary" decimal-format="binary" length="2" />
	<field id="messageType" type="string" length="4" padding-mode="right" padding-char=" " />
	<field id="bitmap" type="bitmap">
		<field id="primaryAccountNumber" bit="2" type="string" length="19" format="llvar" />
		<field id="processingCode" bit="3" type="string" length="6" />
		<field id="amountTransaction" bit="4" type="string" length="12" padding-mode="left" padding-char="0" />
		<field id="amountSettlement" bit="5" type="string" length="12" padding-mode="left" padding-char="0" />
		<field id="amountCardholderBilling" bit="6" type="string" length="12" padding-mode="left" padding-char="0" />
		<field id="transmissionDateTime" bit="7" type="string" length="10" />
		<field id="amountCardholderBillingFee" bit="8" type="string" length="8" padding-mode="left" padding-char="0" />
		<field id="conversionRateSettlement" bit="9" type="string" length="8" padding-mode="left" padding-char="0" />
		<field id="conversionRateCardholderBilling" bit="10" type="string" length="8" padding-mode="left" padding-char="0" />
		<field id="systemsTraceAuditNumber" bit="11" type="string" length="6" />
		<field id="timeLocalTransaction" bit="12" type="string" length="6" />
		<field id="dateLocalTransaction" bit="13" type="string" length="4" />
		<field id="dateExpiration" bit="14" type="string" length="4" />
		<field id="dateSettlement" bit="15" type="string" length="4" />
		<field id="dateConversion" bit="16" type="string" length="4" />
		<field id="dateCapture" bit="17" type="string" length="4" />
		<field id="merchantType" bit="18" type="string" length="4" padding-mode="left" padding-char="0" />
		<field id="acquiringInstitutionCountryCode" bit="19" type="string" length="3" padding-mode="left" padding-char="0" />
		<field id="panExtendedCountryCode" bit="20" type="string" length="3" padding-mode="left" padding-char="0" />
		<field id="forwardingInstitutionCountryCode" bit="21" type="string" length="3" padding-mode="left" padding-char="0" />
		<field id="pointOfServiceEntryMode" bit="22" type="string" length="3" padding-mode="left" padding-char="0" />
		<field id="applicationPanNumber" bit="23" type="string" length="3" padding-mode="left" padding-char="0" />
		<field id="networkInternationalIdentifier" bit="24" type="string" length="3" padding-mode="left" padding-char="0" />
		<field id="pointOfServiceConditionCode" bit="25" type="string" length="2" padding-mode="left" padding-char="0" />
		<field id="pointOfServiceCaptureCode" bit="26" type="string" length="2" padding-mode="left" padding-char="0" />
		<field id="authorisingIdentificationResponseLength" bit="27" type="string" length="1" padding-mode="left" padding-char="0" />
		<field id="amountTransactionFee" bit="28" type="string" length="9" padding-mode="left" padding-char="0" />
		<field id="amountSettlementFee" bit="29" type="string" length="9" padding-mode="left" padding-char="0" />
		<field id="amountTransactionProcessingFee" bit="30" type="string" length="9" padding-mode="left" padding-char="0" />
		<field id="amountSettlementProcessingFee" bit="31" type="string" length="9" padding-mode="left" padding-char="0" />
		<field id="acquiringInstitutionIdentificationCode" bit="32" type="string" length="11" format="llvar" />
		<field id="forwardingInstitutionIdentificationCode" bit="33" type="string" length="11" format="llvar" />
		<field id="primaryAccountNumberExtended" bit="34" type="string" length="28" format="llvar" />
		<field id="track2Data" bit="35" type="string" length="37" format="llvar" />
		<field id="track3Data" bit="36" type="string" length="104" format="lllvar" />
		<field id="retrievalReferenceNumber" bit="37" type="string" length="12" />
		<field id="authorisationIdentificationResponse" bit="38" type="string" length="6" />  
		<field id="responseCode" bit="39" type="string" length="2" padding-mode="left" />
		<field id="serviceRestrictionCode" bit="40" type="string" length="3" />
		<field id="cardAcceptorTerminalIdentification" bit="41" type="string" length="16" />
		<field id="cardAcceptorIdentificationCode" bit="42" type="string" length="15" />
		<field id="cardAcceptorName" bit="43" type="string" length="40" />
		<field id="additionalResponseData" bit="44" type="string" length="25" format="llvar" />
		<field id="track1Data" bit="45" type="string" length="76" format="llvar" />
		<field id="additionalDataIso" bit="46" type="string" length="999" format="lllvar" />
		<field id="additionalDataNational" bit="47" type="string" length="999" format="lllvar" />
		<field id="additionalDataPrivate" bit="48" type="string" length="999" format="lllvar" />
		<field id="currencyCodeTransaction" bit="49" type="string" length="3" />
		<field id="currencyCodeSettlement" bit="50" type="string" length="3" />
		<field id="currencyCodeCardholderBilling" bit="51" type="string" length="3" />
		<field id="personalIdentificationNumberData" bit="52" type="string" length="16" />
		<field id="securityRelatedControlInformation" bit="53" type="string" length="18" padding-mode="left" padding-char="0" />
		<field id="additionalAmounts" bit="54" type="string" length="999" format="lllvar" />
		<field id="reservedIso1" bit="55" type="string" length="999" format="lllvar" />
		<field id="reservedIso2" bit="56" type="string" length="999" format="lllvar" />
		<field id="reservedNational1" bit="57" type="string" length="999" format="lllvar" />
		<field id="reservedNational2" bit="58" type="string" length="999" format="lllvar" />
		<field id="reservedNational3" bit="59" type="string" length="999" format="lllvar" />
		<field id="reasonCode" bit="60" type="string" length="999" format="lllvar" />
		<field id="reservedPrivate1" bit="61" type="string" length="999" format="lllvar" />
		<field id="reservedPrivate2" bit="62" type="string" length="999" format="lllvar" />
		<field id="reservedPrivate3" bit="63" type="string" length="999" format="lllvar" />
		<field id="messageAuthenticationCode" bit="64" type="string" length="16" />
		<field id="bitMapTertiary" bit="65" type="string" length="16" />
		<field id="settlementCode" bit="66" type="string" length="1" padding-mode="left" padding-char="0" />
		<field id="extendedPaymentCode" bit="67" type="string" length="2" padding-mode="left" padding-char="0" />
		<field id="receivingInstitutionCountryCode" bit="68" type="string" length="3" />
		<field id="settlementInstitutionCountyCode" bit="69" type="string" length="3" />
		<field id="networkManagementInformationCode" bit="70" type="string" length="3" />
		<field id="messageNumber" bit="71" type="string" length="4" padding-mode="left" padding-char="0" />
		<field id="messageNumberLast" bit="72" type="string" length="4" padding-mode="left" padding-char="0" />
		<field id="dateAction" bit="73" type="string" length="6" />
		<field id="creditsNumber" bit="74" type="string" length="10" padding-mode="left" padding-char="0" />
		<field id="creditsReversalNumber" bit="75" type="string" length="10" padding-mode="left" padding-char="0" />
		<field id="debitsNumber" bit="76" type="string" length="10" padding-mode="left" padding-char="0" />
		<field id="debitsReversalNumber" bit="77" type="string" length="10" padding-mode="left" padding-char="0" />
		<field id="transferNumber" bit="78" type="string" length="10" padding-mode="left" padding-char="0" />
		<field id="transferReversalNumber" bit="79" type="string" length="10" padding-mode="left" padding-char="0" />
		<field id="inquiriesNumber" bit="80" type="string" length="10" padding-mode="left" padding-char="0" />
		<field id="authorisationsNumber" bit="81" type="string" length="10" padding-mode="left" padding-char="0" />
		<field id="creditsProcesssingFeeAmount" bit="82" type="string" length="14" padding-mode="left" padding-char="0" />
		<field id="creditsTransactionFeeAmount" bit="83" type="string" length="14" padding-mode="left" padding-char="0" />
		<field id="debitsProcessingFeeAmount" bit="84" type="string" length="14" padding-mode="left" padding-char="0" />
		<field id="debitsTransactionFeeAmount" bit="85" type="string" length="14" padding-mode="left" padding-char="0" />
		<field id="creditsAmount" bit="86" type="string" length="15" padding-mode="left" padding-char="0" />
		<field id="creditsReversalAmount" bit="87" type="string" length="15" padding-mode="left" padding-char="0" />
		<field id="debitsAmount" bit="88" type="string" length="15" padding-mode="left" padding-char="0" />
		<field id="debitsReversalAmount" bit="89" type="string" length="15" padding-mode="left" padding-char="0" />
		<field id="originalDataElements" bit="90" type="string" length="42" padding-mode="left" />
		<field id="fileUpdateCode" bit="91" type="string" length="1" />
		<field id="fileSecurityCode" bit="92" type="string" length="2" padding-mode="left" padding-char="0" />
		<field id="responseIndicator" bit="93" type="string" length="5" padding-mode="left" padding-char="0" />
		<field id="serviceIndicator" bit="94" type="string" length="7" />
		<field id="replacementAmounts" bit="95" type="string" length="42" />
		<field id="messageSecurityCode" bit="96" type="string" length="8" />
		<field id="amountNetSettlement" bit="97" type="string" length="16" padding-mode="left" padding-char="0" />
		<field id="payee" bit="98" type="string" length="25" />
		<field id="settlementInstitutionIdentificationCode" bit="99" type="string" length="11" format="llvar" />
		<field id="receivingInstitutionIdentificationCode" bit="100" type="string" length="11" format="llvar" />
		<field id="slipNumber" bit="101" type="string" length="11" format="llvar" />
		<field id="fromAccount" bit="102" type="string" length="28" format="llvar" />
		<field id="toAccount" bit="103" type="string" length="28" format="llvar" />
		<field id="transactionDescription" bit="104" type="string" length="100" format="lllvar" />
		<field id="reservedForIsoUse1" bit="105" type="string" length="999" format="lllvar" />
		<field id="reservedForIsoUse2" bit="106" type="string" length="999" format="lllvar" />
		<field id="reservedForIsoUse3" bit="107" type="string" length="999" format="lllvar" />
		<field id="reservedForIsoUse4" bit="108" type="string" length="999" format="lllvar" />
		<field id="reservedForIsoUse5" bit="109" type="string" length="999" format="lllvar" />
		<field id="reservedForIsoUse6" bit="110" type="string" length="999" format="lllvar" />
		<field id="reservedForIsoUse7" bit="111" type="string" length="999" format="lllvar" />
		<field id="reservedForNationalUse" bit="112" type="string" length="999" format="lllvar" />
		<field id="authorisingAgentInstitutionIdCode" bit="113" type="string" length="11" format="llvar" />
		<field id="reservedForNationalUse1" bit="114" type="string" length="999" format="lllvar" />
		<field id="reservedForNationalUse2" bit="115" type="string" length="999" format="lllvar" />
		<field id="reservedForNationalUse3" bit="116" type="string" length="999" format="lllvar" />
		<field id="reservedForNationalUse4" bit="117" type="string" length="999" format="lllvar" />
		<field id="reservedForNationalUse5" bit="118" type="string" length="999" format="lllvar" />
		<field id="reservedForNationalUse6" bit="119" type="string" length="999" format="lllvar" />
		<field id="reservedForPrivateUse1" bit="120" type="string" length="999" format="lllvar" />
		<field id="reservedForPrivateUse2" bit="121" type="string" length="999" format="lllvar" />
		<field id="reservedForPrivateUse3" bit="122" type="string" length="999" format="lllvar" />
		<field id="reservedForPrivateUse4" bit="123" type="string" length="999" format="lllvar" />
		<field id="infoText" bit="124" type="string" length="255" format="lllvar" />
		<field id="networkManagementInformation" bit="125" type="string" length="50" format="lllvar" />
		<field id="issuerTraceId" bit="126" type="string" length="6" format="lllvar" />
		<field id="reservedForPrivateUse" bit="127" type="string" length="11" format="lllvar" />
		<field id="messageAuthenticationCode2" bit="128" type="string" length="16" />
	</field>
	<field id="!type" type="script" encode="true">iso-8583-itm</field>
	<field id="!mid" type="script" encode="true">${msg.transmissionDateTime}.${msg.systemsTraceAuditNumber}</field>
	<field id="!code" type="script" encode="true">${dtree("ITM-CODE", "messageType")}</field>
</codex>', CURRENT USER, CURRENT TIMESTAMP);

INSERT INTO MWCONFIG.CODEX (ID, ALLOW_PARTIAL, "XML", MODIFIED_BY, "TIMESTAMP") VALUES('iso-8583-cws', 1, '<codex id="iso-8583-cws" escape="true">
	<field id="packetLength" type="groupLength" length="4"/>
	<field id="messageType" type="string" length="4" padding-mode="right" padding-char=" " />
	<field id="bitmap" type="bitmap">
		<field id="primaryAccountNumber" bit="2" type="string" length="19" format="llvar" />
		<field id="processingCode" bit="3" type="string" length="6" />
		<field id="amountTransaction" bit="4" type="string" length="12" padding-mode="left" padding-char="0" />
		<field id="amountSettlement" bit="5" type="string" length="12" padding-mode="left" padding-char="0" />
		<field id="amountCardholderBilling" bit="6" type="string" length="12" padding-mode="left" padding-char="0" />
		<field id="transmissionDateTime" bit="7" type="string" length="10" />
		<field id="amountCardholderBillingFee" bit="8" type="string" length="8" padding-mode="left" padding-char="0" />
		<field id="conversionRateSettlement" bit="9" type="string" length="8" padding-mode="left" padding-char="0" />
		<field id="conversionRateCardholderBilling" bit="10" type="string" length="8" padding-mode="left" padding-char="0" />
		<field id="systemsTraceAuditNumber" bit="11" type="string" length="6" />
		<field id="timeLocalTransaction" bit="12" type="string" length="6" />
		<field id="dateLocalTransaction" bit="13" type="string" length="4" />
		<field id="dateExpiration" bit="14" type="string" length="4" />
		<field id="dateSettlement" bit="15" type="string" length="4" />
		<field id="dateConversion" bit="16" type="string" length="4" />
		<field id="dateCapture" bit="17" type="string" length="4" />
		<field id="merchantType" bit="18" type="string" length="4" padding-mode="left" padding-char="0" />
		<field id="acquiringInstitutionCountryCode" bit="19" type="string" length="3" padding-mode="left" padding-char="0" />
		<field id="panExtendedCountryCode" bit="20" type="string" length="3" padding-mode="left" padding-char="0" />
		<field id="forwardingInstitutionCountryCode" bit="21" type="string" length="3" padding-mode="left" padding-char="0" />
		<field id="pointOfServiceEntryMode" bit="22" type="string" length="3" padding-mode="left" padding-char="0" />
		<field id="applicationPanNumber" bit="23" type="string" length="3" padding-mode="left" padding-char="0" />
		<field id="networkInternationalIdentifier" bit="24" type="string" length="3" padding-mode="left" padding-char="0" />
		<field id="pointOfServiceConditionCode" bit="25" type="string" length="2" padding-mode="left" padding-char="0" />
		<field id="pointOfServiceCaptureCode" bit="26" type="string" length="2" padding-mode="left" padding-char="0" />
		<field id="authorisingIdentificationResponseLength" bit="27" type="string" length="1" padding-mode="left" padding-char="0" />
		<field id="amountTransactionFee" bit="28" type="string" length="9" padding-mode="left" padding-char="0" />
		<field id="amountSettlementFee" bit="29" type="string" length="9" padding-mode="left" padding-char="0" />
		<field id="amountTransactionProcessingFee" bit="30" type="string" length="9" padding-mode="left" padding-char="0" />
		<field id="amountSettlementProcessingFee" bit="31" type="string" length="9" padding-mode="left" padding-char="0" />
		<field id="acquiringInstitutionIdentificationCode" bit="32" type="string" length="11" format="llvar" />
		<field id="forwardingInstitutionIdentificationCode" bit="33" type="string" length="11" format="llvar" />
		<field id="primaryAccountNumberExtended" bit="34" type="string" length="28" format="llvar" />
		<field id="track2Data" bit="35" type="string" length="37" format="llvar" />
		<field id="track3Data" bit="36" type="string" length="104" format="lllvar" />
		<field id="retrievalReferenceNumber" bit="37" type="string" length="12" />
		<field id="authorisationIdentificationResponse" bit="38" type="string" length="6" />  
		<field id="responseCode" bit="39" type="string" length="2" padding-mode="left" />
		<field id="serviceRestrictionCode" bit="40" type="string" length="3" />
		<field id="cardAcceptorTerminalIdentification" bit="41" type="string" length="8" />
		<field id="cardAcceptorIdentificationCode" bit="42" type="string" length="15" />
		<field id="cardAcceptorName" bit="43" type="string" length="40" />
		<field id="additionalResponseData" bit="44" type="string" length="25" format="llvar" />
		<field id="track1Data" bit="45" type="string" length="76" format="llvar" />
		<field id="additionalDataIso" bit="46" type="string" length="999" format="lllvar" />
		<field id="additionalDataNational" bit="47" type="string" length="999" format="lllvar" />
		<field id="additionalDataPrivate" bit="48" type="string" length="999" format="lllvar" />
		<field id="currencyCodeTransaction" bit="49" type="string" length="3" />
		<field id="currencyCodeSettlement" bit="50" type="string" length="3" />
		<field id="currencyCodeCardholderBilling" bit="51" type="string" length="3" />
		<field id="personalIdentificationNumberData" bit="52" type="string" length="16" />
		<field id="securityRelatedControlInformation" bit="53" type="string" length="18" padding-mode="left" padding-char="0" />
		<field id="additionalAmounts" bit="54" type="string" length="999" format="lllvar" />
		<field id="reservedIso1" bit="55" type="string" length="999" format="lllvar" />
		<field id="reservedIso2" bit="56" type="string" length="999" format="lllvar" />
		<field id="reservedNational1" bit="57" type="string" length="999" format="lllvar" />
		<field id="reservedNational2" bit="58" type="string" length="999" format="lllvar" />
		<field id="reservedNational3" bit="59" type="string" length="999" format="lllvar" />
		<field id="reasonCode" bit="60" type="string" length="999" format="lllvar" />
		<field id="reservedPrivate1" bit="61" type="string" length="999" format="lllvar" />
		<field id="reservedPrivate2" bit="62" type="string" length="999" format="lllvar" />
		<field id="reservedPrivate3" bit="63" type="string" length="999" format="lllvar" />
		<field id="messageAuthenticationCode" bit="64" type="string" length="16" />
		<field id="bitMapTertiary" bit="65" type="string" length="16" />
		<field id="settlementCode" bit="66" type="string" length="1" padding-mode="left" padding-char="0" />
		<field id="extendedPaymentCode" bit="67" type="string" length="2" padding-mode="left" padding-char="0" />
		<field id="receivingInstitutionCountryCode" bit="68" type="string" length="3" />
		<field id="settlementInstitutionCountyCode" bit="69" type="string" length="3" />
		<field id="networkManagementInformationCode" bit="70" type="string" length="3" />
		<field id="messageNumber" bit="71" type="string" length="4" padding-mode="left" padding-char="0" />
		<field id="messageNumberLast" bit="72" type="string" length="4" padding-mode="left" padding-char="0" />
		<field id="dateAction" bit="73" type="string" length="6" />
		<field id="creditsNumber" bit="74" type="string" length="10" padding-mode="left" padding-char="0" />
		<field id="creditsReversalNumber" bit="75" type="string" length="10" padding-mode="left" padding-char="0" />
		<field id="debitsNumber" bit="76" type="string" length="10" padding-mode="left" padding-char="0" />
		<field id="debitsReversalNumber" bit="77" type="string" length="10" padding-mode="left" padding-char="0" />
		<field id="transferNumber" bit="78" type="string" length="10" padding-mode="left" padding-char="0" />
		<field id="transferReversalNumber" bit="79" type="string" length="10" padding-mode="left" padding-char="0" />
		<field id="inquiriesNumber" bit="80" type="string" length="10" padding-mode="left" padding-char="0" />
		<field id="authorisationsNumber" bit="81" type="string" length="10" padding-mode="left" padding-char="0" />
		<field id="creditsProcesssingFeeAmount" bit="82" type="string" length="14" padding-mode="left" padding-char="0" />
		<field id="creditsTransactionFeeAmount" bit="83" type="string" length="14" padding-mode="left" padding-char="0" />
		<field id="debitsProcessingFeeAmount" bit="84" type="string" length="14" padding-mode="left" padding-char="0" />
		<field id="debitsTransactionFeeAmount" bit="85" type="string" length="14" padding-mode="left" padding-char="0" />
		<field id="creditsAmount" bit="86" type="string" length="15" padding-mode="left" padding-char="0" />
		<field id="creditsReversalAmount" bit="87" type="string" length="15" padding-mode="left" padding-char="0" />
		<field id="debitsAmount" bit="88" type="string" length="15" padding-mode="left" padding-char="0" />
		<field id="debitsReversalAmount" bit="89" type="string" length="15" padding-mode="left" padding-char="0" />
		<field id="originalDataElements" bit="90" type="string" length="42" padding-mode="left" />
		<field id="fileUpdateCode" bit="91" type="string" length="1" />
		<field id="fileSecurityCode" bit="92" type="string" length="2" padding-mode="left" padding-char="0" />
		<field id="responseIndicator" bit="93" type="string" length="5" padding-mode="left" padding-char="0" />
		<field id="serviceIndicator" bit="94" type="string" length="7" />
		<field id="replacementAmounts" bit="95" type="string" length="42" />
		<field id="messageSecurityCode" bit="96" type="string" length="8" />
		<field id="amountNetSettlement" bit="97" type="string" length="16" padding-mode="left" padding-char="0" />
		<field id="payee" bit="98" type="string" length="25" />
		<field id="settlementInstitutionIdentificationCode" bit="99" type="string" length="11" format="llvar" />
		<field id="receivingInstitutionIdentificationCode" bit="100" type="string" length="11" format="llvar" />
		<field id="slipNumber" bit="101" type="string" length="11" format="llvar" />
		<field id="fromAccount" bit="102" type="string" length="19" format="llvar" />
		<field id="toAccount" bit="103" type="string" length="28" format="llvar" />
		<field id="transactionDescription" bit="104" type="string" length="100" format="lllvar" />
		<field id="reservedForIsoUse1" bit="105" type="string" length="999" format="lllvar" />
		<field id="reservedForIsoUse2" bit="106" type="string" length="999" format="lllvar" />
		<field id="reservedForIsoUse3" bit="107" type="string" length="999" format="lllvar" />
		<field id="reservedForIsoUse4" bit="108" type="string" length="999" format="lllvar" />
		<field id="reservedForIsoUse5" bit="109" type="string" length="999" format="lllvar" />
		<field id="reservedForIsoUse6" bit="110" type="string" length="999" format="lllvar" />
		<field id="reservedForIsoUse7" bit="111" type="string" length="999" format="lllvar" />
		<field id="reservedForNationalUse" bit="112" type="string" length="999" format="lllvar" />
		<field id="authorisingAgentInstitutionIdCode" bit="113" type="string" length="11" format="llvar" />
		<field id="reservedForNationalUse1" bit="114" type="string" length="999" format="lllvar" />
		<field id="reservedForNationalUse2" bit="115" type="string" length="999" format="lllvar" />
		<field id="reservedForNationalUse3" bit="116" type="string" length="999" format="lllvar" />
		<field id="reservedForNationalUse4" bit="117" type="string" length="999" format="lllvar" />
		<field id="reservedForNationalUse5" bit="118" type="string" length="999" format="lllvar" />
		<field id="reservedForNationalUse6" bit="119" type="string" length="999" format="lllvar" />
		<field id="reservedForPrivateUse1" bit="120" type="string" length="999" format="lllvar" />
		<field id="reservedForPrivateUse2" bit="121" type="string" length="999" format="lllvar" />
		<field id="reservedForPrivateUse3" bit="122" type="string" length="999" format="lllvar" />
		<field id="reservedForPrivateUse4" bit="123" type="string" length="999" format="lllvar" />
		<field id="infoText" bit="124" type="string" length="255" format="lllvar" />
		<field id="networkManagementInformation" bit="125" type="string" length="50" format="lllvar" />
		<field id="issuerTraceId" bit="126" type="string" length="6" format="lllvar" />
		<field id="reservedForPrivateUse" bit="127" type="string" length="11" format="lllvar" />
		<field id="messageAuthenticationCode2" bit="128" type="string" length="16" />
	</field>
	<field id="!type" type="script" encode="true">iso-8583-cws</field>
	<field id="!mid" type="script" encode="true">${msg.transmissionDateTime}.${msg.systemsTraceAuditNumber}</field>
	<field id="!code" type="script" encode="true">${msg.messageType}.${msg.messageType.startsWith("08") ? msg.networkManagementInformationCode?.padLeft(6, "0") : msg.processingCode?.trim().substring(0,6)}</field>
</codex>', CURRENT USER, CURRENT TIMESTAMP);

INSERT INTO MWCONFIG.DTREE (GROUP, PATH, VALUE, MODULE, MODIFIED_BY, TIMESTAMP)
	VALUES ('BDS-CODE', 'AXISSYSTEMSDNBHD', 'AXISSYSTEMSDNBHD.${msg.dspTransactionCode?.padLeft(10, "0")}', NULL, CURRENT USER, CURRENT TIMESTAMP);

INSERT INTO MWCONFIG.DTREE (GROUP, PATH, VALUE, MODULE, MODIFIED_BY, TIMESTAMP)
	VALUES ('DSPRESP-CODE', 'AXISSYSTEMSDNBHD', 'AXISSYSTEMSDNBHD.${msg.dspTransactionCode?.padLeft(10, "0")}', NULL, CURRENT USER, CURRENT TIMESTAMP);

INSERT INTO MWCONFIG.PARAM_MAP(GROUP, NAME, VALUE, TIMESTAMP, MODIFIED_BY)
	VALUES ('dsp-scenario-req-codex', 'AXISSYSTEMSDNBHD', '||dsp-abcs-request', CURRENT TIMESTAMP, CURRENT USER),
		   ('dsp-scenario-req-codex', 'SSSAAA0123456789','||dsp-mbase-req', CURRENT TIMESTAMP, CURRENT USER);

INSERT INTO MWCONFIG.PARAM_MAP(GROUP, NAME, VALUE, TIMESTAMP, MODIFIED_BY)
	VALUES ('dsp-scenario-resp-codex', 'AXISSYSTEMSDNBHD','||dsp-abcs-response', CURRENT TIMESTAMP, CURRENT USER);
INSERT INTO MWCONFIG.PARAM_MAP(GROUP, NAME, VALUE, TIMESTAMP, MODIFIED_BY)
	VALUES ('dsp-scenario-resp-codex', 'SSSAAA0123456789','||dsp-mbase-resp', CURRENT TIMESTAMP, CURRENT USER);
