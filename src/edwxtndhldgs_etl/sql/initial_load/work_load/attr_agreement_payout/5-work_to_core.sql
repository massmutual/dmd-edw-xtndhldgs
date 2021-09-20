INSERT INTO EDW_TDSUNSET.ATTR_AGREEMENT_PAYOUT
(
    DIM_AGREEMENT_NATURAL_KEY_HASH_UUID,
    DIM_ANNUITY_PAYOUT_OPTION_NATURAL_KEY_HASH_UUID,
    AGREEMENT_SOURCE_CDE,
    AGREEMENT_TYPE_CDE,
    AGREEMENT_NR_PFX,
    AGREEMENT_NR,
    AGREEMENT_NR_SFX,
    PAYOUT_METHOD_CDE,
    SOURCE_PAYOUT_METHOD_CDE,
    PAYOUT_MODE_CDE,
    SOURCE_PAYOUT_MODE_CDE,
    PAYOUT_STATUS_CDE,
    SOURCE_PAYOUT_STATUS_CDE,
    FIRST_PAYOUT_DT,
    LAST_PAYOUT_DT,
    NEXT_PAYOUT_DT,
    PAYOUT_OPTION_CDE,
    PAYMENT_ACCELERATION_ELIGIBILITY_CDE,
    PAYMENT_ACCELERATION_CNT,
    PERIOD_CERTAIN_PAYOUT_MODE_DURATION_NR,
    LAST_GUARANTEED_PAYOUT_DT,
    CURRENT_PAYOUT_AMT,
    REMAINING_INSTALLMENT_AMT,
    FIXED_PURCHASE_PAYOUT_AMT,
    VARIABLE_PURCHASE_PAYOUT_AMT,
    TOTAL_PURCHASE_PAYMENT_AMT,
    TOTAL_INITIAL_PURCHASE_PAYMENT_AMT,
    TOTAL_GROSS_PAYOUT_AMT,
    YTD_GROSS_PAYOUT_AMT,
    TOTAL_NET_PAYOUT_AMT,
    YTD_NET_PAYOUT_AMT,
    PRIMARY_AND_JOINT_PAYOUT_AMT,
    PRIMARY_ONLY_PAYOUT_AMT,
    JOINT_ONLY_PAYOUT_AMT,
    BEGIN_DT,
    BEGIN_DTM,
    ROW_PROCESS_DTM,
    CHECK_SUM,
    END_DT,
    END_DTM,
    RESTRICTED_ROW_IND,
    CURRENT_ROW_IND,
    LOGICAL_DELETE_IND,
    SOURCE_SYSTEM_ID,
    AUDIT_ID,
    UPDATE_AUDIT_ID,
    SOURCE_DELETE_IND
)
    SELECT
    		UUID_GEN(
    			CLEAN_STRING(CARR_ADMIN_SYS_CD),
    			CLEAN_STRING('IPA'),
    			CLEAN_STRING(PUBLIC.UDF_ISNUM_LPAD(HLDG_KEY_PFX,20,'0',TRUE)) ,
    			CLEAN_STRING(PUBLIC.UDF_ISNUM_LPAD(HLDG_KEY,20,'0',FALSE)),
    			CLEAN_STRING(PUBLIC.UDF_ISNUM_LPAD(HLDG_KEY_SFX ,20,'0',TRUE)))::UUID AS DIM_AGREEMENT_NATURAL_KEY_HASH_UUID,
    		UUID_GEN(
                  CLEAN_STRING(ANN_PAYOUT_OPT_CD),
                  SRC_SYS_ID)::UUID AS DIM_ANNUITY_PAYOUT_OPTION_NATURAL_KEY_HASH_UUID,
    CARR_ADMIN_SYS_CD	 AS 	AGREEMENT_SOURCE_CDE,
    'IPA'	             AS 	AGREEMENT_TYPE_CDE,
    HLDG_KEY_PFX	     AS 	AGREEMENT_NR_PFX,
    HLDG_KEY	 		 AS 	AGREEMENT_NR,
    HLDG_KEY_SFX	     AS 	AGREEMENT_NR_SFX,
    PAYOUT_MTHD_CD	     AS 	PAYOUT_METHOD_CDE,
    SRC_PAYOUT_MTHD_CD	 AS 	SOURCE_PAYOUT_METHOD_CDE,
    PAYOUT_MODE_CD	     AS 	PAYOUT_MODE_CDE,
    SRC_PAYOUT_MODE_CD	 AS 	SOURCE_PAYOUT_MODE_CDE,
    PAYOUT_STUS_CD	     AS 	PAYOUT_STATUS_CDE,
    SRC_PAYOUT_STUS_CD	 AS 	SOURCE_PAYOUT_STATUS_CDE,
    FIRST_PAYOUT_DT	     AS 	FIRST_PAYOUT_DT,
    LST_PAYOUT_DT	     AS 	LAST_PAYOUT_DT,
    NXT_PAYOUT_DT	     AS 	NEXT_PAYOUT_DT,
    ANN_PAYOUT_OPT_CD	 AS 	PAYOUT_OPTION_CDE,
    PYMNT_ACLRTN_ELIG_IND	 AS 	PAYMENT_ACCELERATION_ELIGIBILITY_CDE,
    PYMNT_ACLRTN_CNT	 AS 	PAYMENT_ACCELERATION_CNT,
    PRD_CRTN_DUR	     AS 	PERIOD_CERTAIN_PAYOUT_MODE_DURATION_NR,
    LST_GTEED_PAYOUT_DT	 AS 	LAST_GUARANTEED_PAYOUT_DT,
    CUR_PAYOUT_AMT	     AS 	CURRENT_PAYOUT_AMT,
    REMN_INST_AMT	     AS 	REMAINING_INSTALLMENT_AMT,
    PRCH_PAYOUT_AMT_FIX	 AS 	FIXED_PURCHASE_PAYOUT_AMT,
    PRCH_PAYOUT_AMT_VAR	 AS 	VARIABLE_PURCHASE_PAYOUT_AMT,
    TOT_PRCH_PYMNT_AMT	 AS 	TOTAL_PURCHASE_PAYOUT_AMT,
    TOT_INIT_PRCH_PYMNT_AMT	 AS TOTAL_INITIAL_PURCHASE_PAYOUT_AMT,
    TOT_GRS_PAYOUT_AMT	 AS 	TOTAL_GROSS_PAYOUT_AMT,
    YTD_GRS_PAYOUT_AMT	 AS 	YTD_GROSS_PAYOUT_AMT,
    TOT_NET_PAYOUT_AMT	 AS 	TOTAL_NET_PAYOUT_AMT,
    YTD_NET_PAYOUT_AMT	 AS 	YTD_NET_PAYOUT_AMT,
    PRIM_JT_PAYOUT_AMT	 AS 	PRIMARY_AND_JOINT_PAYOUT_AMT,
    PRIM_ONLY_PAYOUT_AMT AS 	PRIMARY_ONLY_PAYOUT_AMT,
    JT_ONLY_PAYOUT_AMT	 AS 	JOINT_ONLY_PAYOUT_AMT,
    AGMT_PAYOUT_FR_DT	 AS 	BEGIN_DT,
    TO_DATE(TO_CHAR(AGMT_PAYOUT_FR_DT), 'YYYY-MM-DD') :: TIMESTAMP AS BEGIN_DTM,
    CURRENT_TIMESTAMP(6) AS ROW_PROCESS_DTM,
    	UUID_GEN (
    		CASE
    		WHEN SRC_DEL_IND = 'N' THEN FALSE
    		ELSE TRUE
    	    END,-- AS SOURCE_DELETE_IND
    		CLEAN_STRING(PAYOUT_MTHD_CD),
            CLEAN_STRING(SRC_PAYOUT_MTHD_CD),
            CLEAN_STRING(PAYOUT_MODE_CD),
            CLEAN_STRING(SRC_PAYOUT_MODE_CD),
            CLEAN_STRING(PAYOUT_STUS_CD),
    		CLEAN_STRING(SRC_PAYOUT_STUS_CD),
    		FIRST_PAYOUT_DT,
    		LST_PAYOUT_DT,
    		NXT_PAYOUT_DT,
    		CLEAN_STRING(ANN_PAYOUT_OPT_CD),
    		CLEAN_STRING(PYMNT_ACLRTN_ELIG_IND),
    		PYMNT_ACLRTN_CNT,
    		PRD_CRTN_DUR,
    		LST_GTEED_PAYOUT_DT,
    		CUR_PAYOUT_AMT,
    		REMN_INST_AMT,
    		PRCH_PAYOUT_AMT_FIX,
    		PRCH_PAYOUT_AMT_VAR,
    		TOT_PRCH_PYMNT_AMT,
    		TOT_INIT_PRCH_PYMNT_AMT,
    		TOT_GRS_PAYOUT_AMT::NUMERIC(17,4),
    		YTD_GRS_PAYOUT_AMT::NUMERIC(17,4),
    		TOT_NET_PAYOUT_AMT::NUMERIC(17,4),
    		YTD_NET_PAYOUT_AMT::NUMERIC(17,4),
    		PRIM_JT_PAYOUT_AMT,
    		PRIM_ONLY_PAYOUT_AMT,
    		JT_ONLY_PAYOUT_AMT
             )::UUID AS CHECK_SUM,
    		AGMT_PAYOUT_TO_DT AS END_DT,
    TO_DATE(TO_CHAR(AGMT_PAYOUT_TO_DT), 'YYYY-MM-DD') :: TIMESTAMP AS END_DTM,
    FALSE AS RESTRICTED_ROW_IND,
    	CASE
    		WHEN CURR_IND = 'N' THEN FALSE
    		ELSE TRUE
    		END AS CURRENT_ROW_IND,
    		FALSE AS LOGICAL_DELETE_IND,
    266 AS SOURCE_SYSTEM_ID,
    RUN_ID AS AUDIT_ID,
    UPDT_RUN_ID AS UPDATE_AUDIT_ID,
    	CASE
    		WHEN SRC_DEL_IND = 'N' THEN FALSE
    		ELSE TRUE
    	END AS SOURCE_DELETE_IND
FROM PROD_STND_VW_TERSUN.AGMT_PAYOUT_VW_AIF_RPS
WHERE SRC_SYS_ID = 72 ;