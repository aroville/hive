-- change PARAM_VALUE to CLOBs
ALTER TABLE COLUMNS_V2 MODIFY (TYPE_NAME CLOB);;
ALTER TABLE TABLE_PARAMS MODIFY (PARAM_VALUE CLOB);
ALTER TABLE SERDE_PARAMS MODIFY (PARAM_VALUE CLOB);
ALTER TABLE SD_PARAMS MODIFY (PARAM_VALUE CLOB);

-- Expand the hive table name length to 256
ALTER TABLE TBLS MODIFY (TBL_NAME VARCHAR2(256));
ALTER TABLE NOTIFICATION_LOG MODIFY (TBL_NAME VARCHAR2(256));
ALTER TABLE PARTITION_EVENTS MODIFY (TBL_NAME VARCHAR2(256));
ALTER TABLE TAB_COL_STATS MODIFY (TABLE_NAME VARCHAR2(256));
ALTER TABLE PART_COL_STATS MODIFY (TABLE_NAME VARCHAR2(256));
ALTER TABLE COMPLETED_TXN_COMPONENTS MODIFY (CTC_TABLE VARCHAR2(256));

-- Expand the hive column name length to 256
ALTER TABLE COLUMNS_V2 MODIFY (COLUMN_NAME VARCHAR(767) NOT NULL);
ALTER TABLE PART_COL_PRIVS MODIFY (COLUMN_NAME VARCHAR2(767));
ALTER TABLE TBL_COL_PRIVS MODIFY (COLUMN_NAME VARCHAR2(767));
ALTER TABLE SORT_COLS MODIFY (COLUMN_NAME VARCHAR2(767));
ALTER TABLE TAB_COL_STATS MODIFY (COLUMN_NAME VARCHAR2(767));
ALTER TABLE PART_COL_STATS MODIFY (COLUMN_NAME VARCHAR2(767) NOT NULL);
