SELECT
    THREAD#,
    SCN,
    START_SCN,
    COMMIT_SCN,
    TIMESTAMP,
    OPERATION_CODE,
    OPERATION,
    STATUS,
    SEG_TYPE_NAME,
    INFO,
    SEG_OWNER,
    TABLE_NAME,
    USERNAME,
    SQL_REDO,
    ROW_ID,
    CSF,
    TABLE_SPACE,
    SESSION_INFO,
    RS_ID,
    RBASQN,
    RBABLK,
    SEQUENCE#,
    TX_NAME,
    SEG_NAME,
    SRC_CON_ID
FROM
    V$LOGMNR_CONTENTS
WHERE
    OPERATION_CODE IN (
        1,
        2,
        3
    )
    AND COMMIT_SCN >= ?
        AND 