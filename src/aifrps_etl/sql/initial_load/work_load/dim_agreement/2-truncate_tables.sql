--Truncating snapshot tables before loading in this 2nd step
TRUNCATE TABLE EDW_STAGING.AIFRPS_AGMT_DATA_VW_SNAPSHOT;

TRUNCATE TABLE EDW_STAGING.AIFRPS_AGMT_BEN_DATA_VW_SNAPSHOT;

TRUNCATE TABLE EDW_STAGING.AIFRPS_AGMT_DIVIDEND_VW_SNAPSHOT;