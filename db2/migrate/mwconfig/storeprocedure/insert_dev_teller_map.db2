CREATE OR REPLACE PROCEDURE MWCONFIG.INSERT_DEV_TELLER_MAP (
    IN GROUP VARCHAR(64),
    IN DEVICE_ID VARCHAR(256),
    IN DEVICE_NAME VARCHAR(256),
    IN TERMINAL_ID VARCHAR(256),
    IN TERMINAL_IP VARCHAR(64),
    IN TELLER_ID VARCHAR(256),
    IN CTRL_UNIT_ID VARCHAR(256)
)
BEGIN
    DECLARE SQL_STMT VARCHAR(4000);

    SET SQL_STMT = 'MERGE INTO MWCONFIG.DEV_TELLER_MAP AS T ' ||
        'USING (VALUES (''' || GROUP || ''', ''' || DEVICE_ID || ''', ''' ||
        DEVICE_NAME || ''', ''' || TERMINAL_ID || ''', ''' || TERMINAL_IP || ''', ''' ||
        TELLER_ID || ''', ''' || CTRL_UNIT_ID || ''')) ' ||
        'AS S ("GROUP", DEVICE_ID, DEVICE_NAME, TERMINAL_ID, TERMINAL_IP, TELLER_ID, CTRL_UNIT_ID) ' ||
        'ON (T."GROUP" = S."GROUP" AND T.DEVICE_ID = S.DEVICE_ID) ' ||
        'WHEN NOT MATCHED THEN ' ||
        'INSERT ("GROUP", DEVICE_ID, DEVICE_NAME, TERMINAL_ID, TERMINAL_IP, TELLER_ID, CTRL_UNIT_ID, MODIFIED_BY, TIMESTAMP) ' ||
        'VALUES (S."GROUP", S.DEVICE_ID, S.DEVICE_NAME, S.TERMINAL_ID, S.TERMINAL_IP, S.TELLER_ID, S.CTRL_UNIT_ID, CURRENT USER, CURRENT TIMESTAMP)';

    PREPARE STMT FROM SQL_STMT;
    EXECUTE STMT;
END
@