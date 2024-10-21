/**
 * @ Author: Marshall Telaumbanua
 * @ Create Time: 2023-06-07 19:51:12
 * @ Usage: CALL MWCONFIG.INSERT_CLIENT_TARGET(CLIENT_ID, ID, HOST, WEIGHT, SEQ)
 */

CREATE OR REPLACE PROCEDURE INSERT_CLIENT_TARGET (
    IN CLIENT_ID VARCHAR(256),
    IN ID VARCHAR(256),
    IN HOST VARCHAR(256),
    IN WEIGHT CLOB,
    IN SEQ INTEGER
)
BEGIN
    DECLARE SQL_STMT VARCHAR(500);

    SET SQL_STMT = 'MERGE INTO MWCONFIG.CLIENT_TARGET AS T ' ||
                     'USING (VALUES (''' || CLIENT_ID || ''', ''' || ID || ''', ''' || HOST || ''', ' ||
                     CASE WHEN WEIGHT IS NULL THEN 'NULL' ELSE WEIGHT END || ', ' || SEQ || ')) ' ||
                     'AS S (CLIENT_ID, ID, HOST, WEIGHT, SEQ) ' ||
                     'ON (T.CLIENT_ID = S.CLIENT_ID AND T.ID = S.ID AND T.SEQ = S.SEQ) ' ||
                     'WHEN NOT MATCHED THEN ' ||
                     'INSERT (CLIENT_ID, ID, HOST, WEIGHT, SEQ) ' ||
                     'VALUES (S.CLIENT_ID, S.ID, S.HOST, S.WEIGHT, S.SEQ)';

    PREPARE STMT FROM SQL_STMT;
    EXECUTE STMT;
END
@