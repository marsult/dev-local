/**
 * @ Author: Marshall Telaumbanua
 * @ Create Time: 2023-06-07 19:52:33
 * @ Usage: CALL MWCONFIG.MERGE_PARSER(ID)
 */

CREATE OR REPLACE PROCEDURE MERGE_PARSER (
	IN ID VARCHAR(256),
	IN MODIFIED_BY VARCHAR(64) DEFAULT CURRENT_USER,
	IN TIMESTAMP TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)
LANGUAGE SQL
BEGIN
	DECLARE SQL_STMT VARCHAR(10000);

	SET SQL_STMT = 'MERGE INTO MWCONFIG.PARSER AS T ' ||
		'USING (VALUES (''' || ID || ''', ''' || MODIFIED_BY || ''', ''' || TIMESTAMP || ''')) AS S (ID, MODIFIED_BY, TIMESTAMP) ' ||
		'ON (T.ID = S.ID) ' ||
		'WHEN MATCHED THEN ' ||
		'  UPDATE SET ' ||
		'    T.MODIFIED_BY = S.MODIFIED_BY, ' ||
		'    T.TIMESTAMP = S.TIMESTAMP ' ||
		'WHEN NOT MATCHED THEN ' ||
		'  INSERT (ID, MODIFIED_BY, TIMESTAMP) ' ||
		'  VALUES (S.ID, S.MODIFIED_BY, S.TIMESTAMP)';

	PREPARE STMT FROM SQL_STMT;
	EXECUTE STMT;
END
@
