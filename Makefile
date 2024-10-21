init:
	@rm -rf ace/log/*.log
	@docker system prune -f
	docker compose up -d db2
	@echo "\033[48;5;202;38;5;15mWaiting db2 to be healthy...\033[0m"
	@until [ $$(docker compose ps -q db2 | xargs docker inspect -f '{{.State.Health.Status}}') = "healthy" ]; do \
		sleep 1; \
	done
	docker compose up -d BTNACE01
	@docker cp ./BTNACE01/plugins/id.co.hanoman.tcpip_1.0.3 BTNACE01:/opt/IBM/ace-12.0.11.1/tools/plugins
log :
	docker compose logs -f --no-log-prefix BTNACE01
down :
	@rm -rf ace/log/*.log
	docker compose down --remove-orphans -v db2 BTNACE01
exec:
	docker exec -it BTNACE01 bash -l
clear:
	@for file in BTNACE01/log/*.log; do echo -n > "$$file"; done;
	@rm -rf BTNACE01/log/*.log.*
	@echo "clear complete"
	@docker exec db2 su - db2inst1 -c 'db2 connect to MWLOG; db2 DELETE FROM MWLOG.DLOG; db2 ALTER TABLE MWLOG.DLOG ALTER COLUMN ID RESTART WITH 1;'
restart:
	@for file in BTNACE01/log/*.log; do echo -n > "$$file"; done;
	@docker compose exec BTNACE01 bash -cl "mqsireload -i $(in) -e $(is)"
	@docker exec db2 su - db2inst1 -c 'db2 connect to MWLOG; db2 DELETE FROM MWLOG.DLOG; db2 ALTER TABLE MWLOG.DLOG ALTER COLUMN ID RESTART WITH 1;'
test:
	@cd emulator/ISO8583Sender && sh ISO8583Sender.sh "10.10.10.27" "10101" "itm" "\
	track2Data:4624368899999999=9999,\
	messageType:0200,\
	#messageType:0400,\
	#processingCode:235000,\
	processingCode:000010,\
	reservedPrivate2:002NMB000000,\
	fromAccount:0000002192849814,\
	amountTransaction:1000000,\
	retrievalReferenceNumber:$(shell date +'%m%d%H%M%S'),\
	currencyCodeTransaction:360,\
	systemsTraceAuditNumber:$(shell date +'%H%M%S'),\
	transmissionDateTime:$(shell date +'%m%d%H%M%S'),\
	timeLocalTransaction:$(shell date +'%H%M%S'),\
	acquiringInstitutionIdentificationCode:200,\
	dateCapture:$(shell date +'%m%d'),\
	serviceIndicator:ACR,\
	packetLength:313,\
	dateExpiration:$(shell date +'%m%d'),\
	additionalDataPrivate:00062821167975577248fadd08fb04e155a4f624cc7a1a102fc18352e8c34ec3c4c100930134d2b2,\
	cardAcceptorName:BANK TABUNGAN NEGARA   JAKARTA      ID  ,\
	cardAcceptorTerminalIdentification:49118901,\
	cardAcceptorIdentificationCode:200,\
	dateLocalTransaction:$(shell date +'%m%d'),\
	acquiringInstitutionIdentificationCode:200,\
	merchantType:6011,"
migrate_all:
	@for file in BTNACE01/log/*.log; do echo -n > "$$file"; done;
	@docker exec db2 bash -c '. /var/custom/migration.sh'
	@docker exec BTNACE01 bash -cl 'mqsireload -i DUMBROKER -e DUMMY; mqsireload -i FNTBROKER -e ITMCONN; mqsireload -i ISOBROKER -e SYARIAH; mqsireload -i ITMBROKER -e ITMCORE1; mqsireload -i ITMBROKER -e ITMITM1'
	@make clear;
	@make test
migrate_mwconfig:
	@for file in BTNACE01/log/*.log; do echo -n > "$$file"; done;
	@docker exec db2 bash -c '. /var/custom/migration-mwconfig.sh'
	@#docker exec BTNACE01 bash -cl 'mqsireload -i ITMBROKER -e ITMROUTER'
	@#docker exec BTNACE01 bash -cl 'mqsireload -i ITMBROKER -e ITMITM1'
	@#docker exec BTNACE01 bash -cl 'mqsireload -i SMSBROKER -e SMSROUTER'
	@#docker exec BTNACE01 bash -cl 'mqsireload -i SMSBROKER -e SMSISO'
	@#docker exec BTNACE01 bash -cl 'mqsireload -i PAYBROKER -e BILL_PAYMENT'
	@docker exec BTNACE01 bash -cl 'mqsireload -i PAYBROKER -e PAYWS1'
	@make clear;
	@for file in BTNACE01/log/*.log; do echo -n > "$$file"; done;
	@sleep 2;
	@#make itm_690000_002ALT
	@make linkAja_infinet
migrate_dconfig:
	@for file in BTNACE01/log/*.log; do echo -n > "$$file"; done;
	@docker exec db2 bash -c '. /var/custom/migration-dconfig.sh'
	@docker exec BTNACE01 bash -cl 'mqsireload -i DUMBROKER -e DUMMY;\
									mqsireload -i FNTBROKER -e ITMCONN;\
									mqsireload -i SMSBROKER -e SMSISO;\
									mqsireload -i ISOBROKER -e SYARIAH;\
									mqsireload -i ITMBROKER -e ITMCORE1;\
									mqsireload -i PAYBROKER -e PAYCORE1'

migrate_sp:
	@docker exec db2 bash -c '. /var/custom/test-sp.sh'
vas:
	@cd emulator/ISO8583Sender && sh ISO8583Sender.sh "10.10.10.27" "10101" "itm" "\
	track2Data:4624368899999999=9999,\
	processingCode:000010,\
	#processingCode:235000,\
	reservedPrivate2:002NMB000000,\
	fromAccount:0000002192849814,\
	amountTransaction:1000000,\
	retrievalReferenceNumber:$(shell date +'%m%d%H%M%S'),\
	currencyCodeTransaction:360,\
	systemsTraceAuditNumber:$(shell date +'%H%M%S'),\
	transmissionDateTime:$(shell date +'%m%d%H%M%S'),\
	messageType:0200,\
	timeLocalTransaction:$(shell date +'%H%M%S'),\
	acquiringInstitutionIdentificationCode:200,\
	dateCapture:$(shell date +'%m%d'),\
	serviceIndicator:ACR,\
	packetLength:313,\
	dateExpiration:$(shell date +'%m%d'),\
	additionalDataPrivate:00062821167975577248fadd08fb04e155a4f624cc7a1a102fc18352e8c34ec3c4c100930134d2b2,\
	cardAcceptorName:BANK TABUNGAN NEGARA   JAKARTA      ID  ,\
	cardAcceptorTerminalIdentification:49118901,\
	cardAcceptorIdentificationCode:200,\
	dateLocalTransaction:$(shell date +'%m%d'),\
	acquiringInstitutionIdentificationCode:200,\
	merchantType:6011,"

inq_0203:
	@cd emulator/ISO8583Sender && sh ISO8583Sender.sh "10.10.10.27" "20802" "sms" "\
	track2Data:4624368899999999=9999,\
	processingCode:302000,\
	reservedPrivate2:002NMB000000,\
	reservedPrivate3:201106,\
	fromAccount:0000002192849814,\
	amountTransaction:1000000,\
	retrievalReferenceNumber:$(shell date +'%m%d%H%M%S'),\
	currencyCodeTransaction:360,\
	systemsTraceAuditNumber:$(shell date +'%H%M%S'),\
	transmissionDateTime:$(shell date +'%m%d%H%M%S'),\
	messageType:0200,\
	timeLocalTransaction:$(shell date +'%H%M%S'),\
	acquiringInstitutionIdentificationCode:200,\
	dateCapture:$(shell date +'%m%d'),\
	serviceIndicator:ACR,\
	packetLength:313,\
	dateExpiration:$(shell date +'%m%d'),\
	additionalDataPrivate:01362821167975577248fadd08fb04e155a4f624cc7a1a102fc18352e8c34ec3c4c100930134d2b2,\
	cardAcceptorName:BANK TABUNGAN NEGARA   JAKARTA      ID  ,\
	cardAcceptorTerminalIdentification:49118901,\
	cardAcceptorIdentificationCode:200,\
	dateLocalTransaction:$(shell date +'%m%d'),\
	acquiringInstitutionIdentificationCode:200,\
	merchantType:6011,"

itm_690000_002ALT:
	@cd emulator/ISO8583Sender && sh ISO8583Sender.sh "10.10.10.27" "10801" "itm" "\
	messageType:0200,\
	track2Data:4624368899999999=9999,\
	processingCode:690000,\
	reservedPrivate2:002ALT000,\
	fromAccount:0000002192849814,\
	amountTransaction:1000000,\
	currencyCodeTransaction:360,\
	retrievalReferenceNumber:$(shell date +'%m%d%H%M%S'),\
	systemsTraceAuditNumber:$(shell date +'%H%M%S'),\
	transmissionDateTime:$(shell date +'%m%d%H%M%S'),\
	timeLocalTransaction:$(shell date +'%H%M%S'),\
	dateCapture:$(shell date +'%m%d'),\
	dateExpiration:$(shell date +'%m%d'),\
	dateLocalTransaction:$(shell date +'%m%d'),\
	acquiringInstitutionIdentificationCode:200,\
	serviceIndicator:ACR,\
	packetLength:313,\
	additionalDataPrivate:01362821167975577248fadd08fb04e155a4f624cc7a1a102fc18352e8c34ec3c4c100930134d2b2,\
	cardAcceptorName:BANK TABUNGAN NEGARA   JAKARTA      ID  ,\
	cardAcceptorTerminalIdentification:49118901,\
	cardAcceptorIdentificationCode:200,\
	acquiringInstitutionIdentificationCode:200,\
	reservedIso2:1234567890,\
	merchantType:6011,"
linkAja_infinet:
	@cd emulator/ISO8583Sender && sh ISO8583Sender.sh "10.10.10.27" "10801" "itm" "\
	messageType:0200,\
	packetLength:642,\
	primaryAccountNumber:0000000007342011330,\
	processingCode:102000,\
	amountTransaction:2000000,\
	dateSettlement:0811,\
	merchantType:8000,\
	acquiringInstitutionIdentificationCode:200,\
	cardAcceptorTerminalIdentification:130             ,\
	cardAcceptorIdentificationCode:200            ,\
	cardAcceptorName:BTN SMS BANKING       JAKARTA      JKTID,\
	additionalDataPrivate:081217880451    RACHMAWATI                    0000048300000000001000008bf088b041674049                                                                                                                                                                                                                                                                                            ,\
	currencyCodeTransaction:360,\
	reservedIso2:6282221436516,\
	reservedPrivate2:002BIS002,\
	reservedPrivate3:605000,\
	receivingInstitutionIdentificationCode:200,\
	fromAccount:0000000007342011330,\
	retrievalReferenceNumber:$(shell date +'%m%d%H%M%S'),\
	systemsTraceAuditNumber:$(shell date +'%H%M%S'),\
	transmissionDateTime:$(shell date +'%m%d%H%M%S'),\
	timeLocalTransaction:$(shell date +'%H%M%S'),\
	dateCapture:$(shell date +'%m%d'),\
	dateExpiration:$(shell date +'%m%d'),\
	dateLocalTransaction:$(shell date +'%m%d'),\
	reservedForPrivateUse:200,"