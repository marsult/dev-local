CREATE OR REPLACE PROCEDURE MWCONFIG.DELETE_MAPPING_GROUP (
    IN P_MAPPING_ID VARCHAR(256),
    IN P_ID BIGINT
)
BEGIN
    DECLARE ROW_COUNT INT;

    -- Check if the row with the given ID exists
    SELECT COUNT(*) INTO ROW_COUNT FROM MWCONFIG.MAPPING_GROUP WHERE MAPPING_ID=P_MAPPING_ID AND ID=P_ID;

    -- If the row exists, then delete it
    IF ROW_COUNT > 0 THEN
        DELETE FROM MWCONFIG.MAPPING_GROUP WHERE MAPPING_ID=P_MAPPING_ID AND ID=P_ID;
    END IF;
END
@