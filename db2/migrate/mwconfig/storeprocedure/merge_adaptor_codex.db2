/**
 * @ Author: Marshall Telaumbanua
 * @ Create Time: 2023-06-07 19:42:10
 * @ Usage: CALL MWCONFIG.MERGE_ADAPTOR_CODEX(ADAPTOR_ID, ID, CODEX_ID)
 */

CREATE OR REPLACE PROCEDURE MERGE_ADAPTOR_CODEX (
	IN ADAPTOR_ID VARCHAR(256),
	IN ID VARCHAR(256),
	IN CODEX_ID VARCHAR(256)
)
BEGIN
	DECLARE SQL_STMT VARCHAR(4000);

	SET SQL_STMT = 'MERGE INTO MWCONFIG.ADAPTOR_CODEX AS T ' ||
								 'USING (VALUES (''' || ADAPTOR_ID || ''', ''' || ID || ''', ''' || CODEX_ID || ''')) AS S (ADAPTOR_ID, ID, CODEX_ID) ' ||
								 'ON (T.ADAPTOR_ID = S.ADAPTOR_ID AND T.ID = S.ID) ' ||
								 'WHEN MATCHED THEN ' ||
								 'UPDATE SET T.CODEX_ID = S.CODEX_ID ' ||
								 'WHEN NOT MATCHED THEN ' ||
								 'INSERT (ADAPTOR_ID, ID, CODEX_ID) ' ||
								 'VALUES (S.ADAPTOR_ID, S.ID, S.CODEX_ID)';

	PREPARE STMT FROM SQL_STMT;
	EXECUTE STMT;
END
@