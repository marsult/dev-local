/**
 * @ Author: Marshall Telaumbanua
 * @ Create Time: 2023-06-07 19:52:33
 * @ Usage: CALL MWCONFIG.INSERT_PARAM_MAP(GROUP, NAME, VALUE, SEQ, DESCRIPTION)
 */

CREATE OR REPLACE PROCEDURE INSERT_PARAM_MAP (
    IN GROUP VARCHAR(256),
    IN NAME VARCHAR(256),
    IN VALUE VARCHAR(1024),
    IN SEQ CLOB,
    IN DESCRIPTION VARCHAR(256)
)
LANGUAGE SQL
BEGIN
    DECLARE SQL_STMT VARCHAR(10000);

    SET SQL_STMT = 'MERGE INTO MWCONFIG.PARAM_MAP AS T ' ||
        'USING (VALUES (''' || GROUP || ''', ''' || NAME || ''', ''' || VALUE || ''', ' || 
        CASE
            WHEN SEQ IS NULL THEN 'NULL'
            ELSE 'CAST(' || SEQ || ' AS INTEGER)'
        END || ', ' || 
        CASE
            WHEN DESCRIPTION IS NULL THEN 'NULL'
            ELSE '''' || DESCRIPTION || ''''
        END || ')) AS S (GROUP, NAME, VALUE, SEQ, DESCRIPTION) ' ||
        'ON (T.GROUP = S.GROUP AND T.NAME = S.NAME) ' ||
        'WHEN NOT MATCHED THEN ' ||
        '  INSERT (GROUP, NAME, VALUE, SEQ, DESCRIPTION, MODIFIED_BY, TIMESTAMP) ' ||
        '  VALUES (S.GROUP, S.NAME, S.VALUE, ' || 
        CASE
            WHEN SEQ IS NULL THEN 'NULL'
            ELSE 'CAST(' || SEQ || ' AS INTEGER)'
        END || ', S.DESCRIPTION, CURRENT_USER, CURRENT_TIMESTAMP)';

    PREPARE STMT FROM SQL_STMT;
    EXECUTE STMT;
END
@
