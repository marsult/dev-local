/**
 * @ Author: Marshall Telaumbanua
 * @ Create Time: 2023-06-07 19:52:33
 * @ Usage: CALL MWCONFIG.MERGE_MAPPING(ID, DESCRIPTION, MODULE)
 */

CREATE OR REPLACE PROCEDURE MERGE_MAPPING (
    IN ID VARCHAR(256),
    IN DESCRIPTION VARCHAR(256),
    IN MODULE VARCHAR(256)
)
BEGIN
    DECLARE SQL_STMT VARCHAR(4000);

    SET SQL_STMT = 'MERGE INTO MWCONFIG.MAPPING AS T ' ||
        'USING (VALUES (''' || ID || ''', ' ||
        CASE
            WHEN DESCRIPTION IS NULL THEN 'NULL'
            ELSE '''' || DESCRIPTION || ''''
        END || ', ''' || MODULE || ''')) ' ||
        'AS S (ID, DESCRIPTION, MODULE) ' ||
        'ON (T.ID = S.ID) ' ||
        'WHEN MATCHED THEN ' ||
        'UPDATE SET T.DESCRIPTION = S.DESCRIPTION, T.MODULE = S.MODULE, T.MODIFIED_BY = CURRENT_USER, T.TIMESTAMP = CURRENT_TIMESTAMP ' ||
        'WHEN NOT MATCHED THEN ' ||
        'INSERT (ID, DESCRIPTION, MODULE, MODIFIED_BY, TIMESTAMP) ' ||
        'VALUES (S.ID, S.DESCRIPTION, S.MODULE, CURRENT_USER, CURRENT_TIMESTAMP)';

    PREPARE STMT FROM SQL_STMT;
    EXECUTE STMT;
END
@