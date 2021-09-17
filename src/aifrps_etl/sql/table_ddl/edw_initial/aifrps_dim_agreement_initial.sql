create table edw_staging.aifrps_agmt_dividend_vw_snapshot
(
    AGMT_ID int,
    AGMT_DATA_FR_DT timestamp,
    AGMT_DIVD_TO_DT timestamp,
    AGMT_DIVD_FR_DT timestamp,
    HLDG_KEY_PFX char(20),
    HLDG_KEY varchar(40),
    HLDG_KEY_SFX char(20),
    CARR_ADMIN_SYS_CD varchar(40),
    DIVD_OPT_CD char(4),
    SRC_DIVD_OPT_CD varchar(40),
    SCND_DIVD_OPT_CD char(20),
    SRC_SCND_DIVD_OPT_CD varchar(40),
    DIVD_OPT_WD varchar(45),
    SCND_CURR_DIVD_OPT_WD varchar(45),
    DIVD_YR int,
    CURR_DIVD_AMT numeric(17,2),
    ACCUM_DIVD_AMT numeric(17,2),
    ACCUM_DIVD_QLTY_CD varchar(10),
    RP_CURR_DIVD_YR_MTH char(6),
    RP_CURR_DIVD_YR int,
    RP_CURR_DIVD_AMT numeric(17,2),
    RP_DIVD_AMT numeric(17,2),
    RP_DIVD_AMT_QLTY_CD varchar(10),
    RI_DIVD_AMT_QLTY_CD varchar(10),
    RI_DIVD_AMT numeric(17,2),
    APPLD_DIVD_AMT numeric(17,2),
    APPLD_DIVD_QLTY_CD varchar(10),
    BASE_DIVD_AMT numeric(17,2),
    BASE_DIVD_QLTY_CD varchar(10),
    PREV_YR_DIVD_AMT numeric(17,2),
    PREV_YR_DIVD_QLTY_CD varchar(10),
    DIVD_ACCUM_AVL_AMT numeric(17,2),
    DIVD_ACCUM_AVL_QLTY_CD varchar(10),
    DIVD_AVL_AMT numeric(17,2),
    DIVD_AVL_QLTY_CD varchar(10),
    LST_DIVD_CRDT_AMT numeric(17,2),
    LST_DIVD_CRDT_QLTY_CD varchar(10),
    CURR_IND char(1),
    SRC_DEL_IND char(1),
    SRC_SYS_ID int,
    RUN_ID int,
    UPDT_RUN_ID int,
    TRANS_DT timestamp,
    LTCIR_DIV_BEN_POOL_AMT numeric(17,2),
    LTCIR_DIV_BEN_POOL_QLTY_CD varchar(10),
    INT_ON_DIVD_ACCUM_TODT_AMT numeric(17,2),
    INT_ON_DIVD_ACCUM_TODT_QLTY_CD char(10),
    STLMNT_DIVD_AMT numeric(17,2),
    STLMNT_DIVD_QLTY_CD char(10),
    DIVD_ACCUM_TAX_AMT numeric(17,2),
    DIVD_ACCUM_TAX_QLTY_CD char(10),
    DIVD_MO_DA int,
    current_batch boolean default true
) order by current_batch,
        agmt_id
segmented by (agmt_id) all nodes;


create table edw_staging.aifrps_agmt_ben_data_vw_snapshot
(
    agmt_id int,
    agmt_data_fr_dt timestamp,
    agmt_ben_data_fr_dt timestamp,
    agmt_ben_data_to_dt timestamp,
    hldg_key_pfx varchar(20),
    hldg_key varchar(40),
    hldg_key_sfx varchar(20),
    carr_admin_sys_cd varchar(20),
    acty_pend_cd varchar(4),
    src_acty_pend_cd varchar(40),
    acty_pend_wd varchar(25),
    src_acty_pend_wd varchar(40),
    apd_ind varchar(1),
    src_apd_ind varchar(40),
    apm_nbr varchar(10),
    src_apm_nbr varchar(40),
    apl_ind varchar(1),
    src_apl_ind varchar(40),
    conv_ind varchar(1),
    src_conv_ind varchar(40),
    conv_elig_strt_dt date,
    conv_pol_typ_cd varchar(20),
    src_conv_pol_typ_cd varchar(40),
    conv_pol_nbr varchar(50),
    actvy_cd varchar(4),
    dlvry_data_cd varchar(20),
    src_dlvry_data_cd varchar(40),
    ben_amt numeric(17,2),
    dth_ben_opt_cd varchar(20),
    dth_ben_opt_int_rt numeric(17,2),
    dth_ben_opt_int_rt_qlty_cd varchar(10),
    face_amt numeric(17,2),
    honeymoon_cd varchar(4),
    src_honeymoon_cd varchar(40),
    free_look_exp_dt date,
    i_a_cd varchar(20),
    src_ia_cd varchar(40),
    lump_sum_ben_amt numeric(17,2),
    mec_eff_dt date,
    mec_ind varchar(1),
    src_mec_ind varchar(40),
    mec_stus_cd varchar(4),
    src_mec_stus_cd varchar(40),
    non_fort_opt_cd varchar(5),
    obj_admspec_cd varchar(20),
    src_obj_admspec_cd varchar(40),
    purp_ins_ctgy_cd varchar(4),
    purp_ins_cd varchar(4),
    pay7_prd_prem_amt numeric(17,2),
    pay7_prd_prem_end_dt date,
    pay7_prd_prem_end_dt_qlty_cd varchar(10),
    pay7_prd_prem_qlty_cd varchar(10),
    pay7_prd_prem_strt_dt date,
    pay7_prd_prem_strt_dt_qlty_cd varchar(10),
    pend_sttl_ind varchar(1),
    reins_ind varchar(1),
    src_reins_ind varchar(40),
    tcc_amt numeric(17,2),
    tmp_trmn_pre_eff_dt date,
    tmp_trmn_stus_cd varchar(4),
    tot_mthly_ben_amt numeric(17,2),
    ult_face_amt numeric(17,2),
    yr_trmn_prch_cd varchar(4),
    curr_ind varchar(1),
    src_del_ind varchar(1),
    run_id int,
    src_sys_id int,
    updt_run_id int,
    trans_dt timestamp,
    lapse_cntl_dt date,
    grace_prd_pmt_amt numeric(17,2),
    grace_prd_pmt_qlty_cd varchar(10),
    pol_unit_face_amt numeric(17,2),
    dbo_sht_nm varchar(25),
    mec_eff_dt_qlty_cd varchar(10),
    vlr_rc varchar(4),
    pol_inc_amt numeric(17,2),
    tel_auth_ind varchar(20),
    tax_agg_ind varchar(20),
    src_tax_agg_ind varchar(40),
    tax_amt_not_dtrmn_ind varchar(1),
    date_of_assign date,
    erly_permt_ann_dt date,
    late_permt_ann_dt date,
    src_tel_auth_ind varchar(40),
    wdrwl_opt_cd varchar(20),
    src_wdrwl_opt_cd varchar(40),
    glwb_status varchar(20),
    src_glwb_status varchar(40),
    glwb_status_dt date,
    rein_treaty_nr varchar(100),
    excess_wdrwl_ind varchar(20),
    src_excess_wdrwl_ind varchar(40),
    vi_rider_ind varchar(1),
    portability_ind varchar(1),
    pers_credit_ind varchar(20),
    src_pers_credit_ind varchar(1),
    pers_cr_strt_dt date,
    dth_ben_opt_age_chg int,
    current_batch boolean default true
) order by current_batch,
        agmt_id
segmented by (agmt_id) all nodes;


----------------------------------------------------
create table edw_staging.aifrps_agmt_data_vw_snapshot
(
    agmt_id int not null,
    agmt_fr_dt timestamp,
    agmt_data_fr_dt timestamp not null,
    agmt_data_to_dt timestamp,
    hldg_key_pfx varchar(20),
    hldg_key varchar(40),
    hldg_key_sfx varchar(20),
    carr_admin_sys_cd varchar(20),
    stus_cd varchar(20),
    src_stus_cd varchar(40),
    stus_rsn_cd varchar(20),
    src_stus_rsn_cd varchar(40),
    stus_dt date,
    prod_id varchar(40),
    prod_typ_cd_1 varchar(40),
    prod_typ_cd_2 varchar(40),
    prod_typ_cd_3 varchar(40),
    ctrt_dt date,
    iss_dt date,
    matr_dt date,
    annv_dt date,
    trmn_dt date,
    app_rcvd_dt date,
    app_sgnd_dt date,
    conv_opt_exp_dt date,
    mrkt_typ_cd varchar(20),
    src_mrkt_typ_cd varchar(40),
    tax_qual_ind varchar(1),
    src_tax_qual_ind varchar(40),
    src_plan_typ_cd varchar(40),
    rplcmt_typ_cd varchar(20),
    src_rplcmt_typ_cd varchar(40),
    rstct_cd varchar(20),
    src_rstct_cd varchar(40),
    rstct_ctgry_cd varchar(20),
    src_rstct_ctgry_cd varchar(40),
    co_cd varchar(3),
    src_co_cd varchar(40),
    frzn_cd varchar(4),
    src_frzn_cd varchar(40),
    ho_amt_susp_ind varchar(10),
    src_ho_amt_susp_ind varchar(40),
    lost_insd_ind varchar(1),
    src_lost_insd_ind varchar(40),
    ttl_msg varchar(40),
    offr_acpt_cd varchar(4),
    src_offr_acpt_cd varchar(40),
    src_vbl_prod_cd varchar(1),
    ctrt_st varchar(2),
    tax_acct_no varchar(50),
    readblty_cd varchar(20),
    vntg_rstct_ind varchar(1),
    src_readablty_cd varchar(40),
    suspend_cd varchar(20),
    src_suspend_cd varchar(40),
    src_prod_sht_nm varchar(30),
    src_prod_lng_nm varchar(100),
    spcl_hndl_cd varchar(20),
    src_spcl_hndl_cd varchar(40),
    iss_rsn_cd varchar(20),
    src_iss_rsn_cd varchar(40),
    cdsc_prd_yr int,
    rnwl_dt date,
    rtr_grd_ind varchar(1),
    src_admn_err_ind varchar(40),
    src_pend_actv_cd varchar(40),
    curr_ind varchar(1),
    src_del_ind varchar(1),
    src_hldg_key varchar(40),
    src_sys_id int,
    run_id int,
    updt_run_id int,
    trans_dt timestamp,
    worksite_ind varchar(1),
    prod_grp_cd varchar(2),
    updt_st_cd varchar(2),
    ho_agy_susp_ind varchar(2),
    prod_typ varchar(2),
    dtrb_cli_acct_id varchar(30),
    res_st varchar(2),
    slctn_st varchar(2),
    dtrb_chnl_cd varchar(20),
    src_dtrb_chnl_cd varchar(40),
    prod_tier_cd varchar(5),
    rplcmt_ind varchar(20),
    src_rplcmt_ind varchar(40),
    spec_cond_cde varchar(20),
    spec_cond_ctgy varchar(20),
    spec_cond_cde_rsn varchar(40),
    spec_cond2_cde varchar(20),
    spec_cond2_ctgy varchar(20),
    spec_cond2_cde_rsn varchar(40),
    spm_grp_susp_ind varchar(1),
    spm_ind_susp_ind varchar(1),
    spm_grp_ar_susp_ind varchar(1),
    actvly_at_wrk_ind varchar(1),
    mrkt_grp_cd varchar(4),
    pt_trans_to_insd_dt date,
    managerial_ind varchar(1),
    init_pd_to_dt date,
    insured_ipn varchar(12),
    living_bene_notice_cd varchar(20),
    src_living_bene_notice_cd varchar(40),
    lock_in_cd varchar(20),
    src_lock_in_cd varchar(40),
    ab_ib_lock_in_dt date,
    current_batch boolean default true
) order by current_batch,
        agmt_id
segmented by (agmt_id) all nodes;

--------------------------------------------------------
create table edw_staging.aifrps_dim_agreement_initial_load_pre_work
(
    dim_agreement_natural_key_hash_uuid uuid not null,
    agreement_nr_pfx varchar(50),
    agreement_nr varchar(150) not null,
    agreement_nr_sfx varchar(50),
    agreement_source_cde varchar(50) not null,
    agreement_type_cde varchar(50) not null,
    master_contract_group_id varchar(50),
    sponsor_id varchar(50),
    plan_id varchar(50),
    subscriber_id varchar(50),
    participant_id varchar(50),
    icu_id varchar(50),
    master_contract_group_nm_national_desc varchar(500),
    plan_nm_1_txt varchar(150),
    plan_nm_2_txt varchar(150),
    plan_nm_3_txt varchar(150),
    subscriber_nr int,
    agreement_status_cde varchar(50),
    agreement_status_reason_cde varchar(50),
    allow_rollover_ind boolean,
    application_submit_dt date,
    beneficiaries_recorded_ind boolean,
    conversion_expired_ind boolean,
    conversion_eligibility_start_dt date,
    conversion_eligibility_end_dt date,
    default_voluntary_deferral_rt numeric(9,6),
    enrollment_dt date,
    enrollment_eligibility_dt date,
    enrollment_start_dt date,
    enrollment_end_dt date,
    enrollment_status_cde varchar(50),
    enrollment_type_cde varchar(50),
    face_amt numeric(17,4),
    internal_plan_id varchar(50),
    issue_dt date,
    participation_dt date,
    solicitation_dt date,
    solicitation_ind boolean,
    taft_hartly_ind boolean,
    electronic_contribution_change_ind boolean,
    pre_tax_auto_increase_contribution_rt numeric(9,6),
    begin_dt date not null default '0001-01-01'::date,
    begin_dtm timestamp(6) not null default '0001-01-01 00:00:00'::timestamp,
    row_process_dtm timestamp(6) not null default (now())::timestamptz(6),
    audit_id int not null default 0,
    logical_delete_ind boolean not null default false,
    check_sum uuid not null,
    current_row_ind boolean not null default true,
    end_dt date not null default '9999-12-31'::date,
    end_dtm timestamp(6) not null default '9999-12-31 23:59:59.999999'::timestamp,
    source_system_id varchar(50) not null,
    restricted_row_ind boolean not null default false,
    row_sid  identity ,
    next_payment_dt date,
    next_payment_amt numeric(17,4),
    current_principal_amt numeric(17,4),
    loan_booked_coupon_rt numeric(9,6),
    loan_booked_amt numeric(17,4),
    loan_requested_coupon_rt numeric(9,6),
    loan_requested_amt numeric(17,4),
    loan_months_to_maturity_val int,
    loan_degree_program_desc varchar(50),
    decisioning_annual_income_amt numeric(17,4),
    application_status_dt date,
    loan_report_unique_hash_id varchar(32),
    eservice_ind boolean,
    agreement_effective_dt date,
    update_audit_id int not null default 0,
    terminated_participant_servicing_ind boolean,
    managed_accounts_eligibility_ind boolean,
    managed_accounts_participation_ind boolean,
    managed_accounts_eligibility_start_dtm timestamp(6),
    split_contract_ind boolean,
    mm_lead_administrator_ind boolean,
    mm_account_manager_nm varchar(100),
    industry_cde varchar(50),
    source_agreement_status_cde varchar(50),
    source_agreement_status_reason_cde varchar(50),
    source_agreement_status_category_cde varchar(50),
    agreement_status_dt date,
    dim_product_natural_key_hash_uuid uuid,
    pt1_kind_cde varchar(50),
    pt2_issue_basis_cde varchar(50),
    pt3_rate_cde varchar(50),
    maturity_dt date,
    anniversary_dt date,
    termination_dt date,
    application_received_dt date,
    application_signed_dt date,
    market_category_type_cde varchar(50),
    source_plan_type_cde varchar(50),
    source_market_category_type_cde varchar(50),
    tax_qualified_cde varchar(50),
    source_tax_qualified_cde varchar(50),
    replacement_type_cde varchar(50),
    source_replacement_type_cde varchar(50),
    restriction_cde varchar(50),
    source_restriction_cde varchar(50),
    restriction_category_cde varchar(50),
    source_restriction_category_cde varchar(50),
    company_cde varchar(50),
    source_company_cde varchar(50),
    frozen_cde varchar(50),
    source_frozen_cde varchar(50),
    home_office_amount_suspend_cde varchar(50),
    source_home_office_amount_suspend_cde varchar(50),
    lost_insured_ind boolean,
    source_lost_insured_ind varchar(50),
    title_message_txt varchar(50),
    offer_acceptance_cde varchar(50),
    source_offer_acceptance_cde varchar(50),
    variable_product_cde varchar(50),
    contract_jurisdiction_state_cde varchar(50),
    tax_account_nr varchar(50),
    readability_cde varchar(50),
    source_readability_cde varchar(50),
    vantage_restriction_cde varchar(50),
    suspend_cde varchar(50),
    source_suspend_cde varchar(50),
    source_product_short_nm varchar(50),
    source_product_long_nm varchar(100),
    special_handling_cde varchar(50),
    source_special_handling_cde varchar(50),
    issue_reason_cde varchar(50),
    source_issue_reason_cde varchar(50),
    cdsc_period_year_nr int,
    renewal_dt date,
    retire_guard_ind boolean,
    source_admin_error_cde varchar(50),
    source_pending_activity_cde varchar(50),
    source_agreement_nr varchar(50),
    worksite_ind boolean,
    product_group_cde varchar(50),
    update_state_cde varchar(50),
    agency_suspend_item_cde varchar(50),
    distributor_client_account_id varchar(50),
    resident_state_cde varchar(50),
    solicitation_state_cde varchar(50),
    distribution_channel_cde varchar(50),
    source_distribution_channel_cde varchar(50),
    product_tier_cde varchar(50),
    replacement_cde varchar(50),
    source_replacement_cde varchar(50),
    special_condition_cde varchar(50),
    special_condition_reason_cde varchar(50),
    special_condition_category_cde varchar(50),
    special_condition_2_cde varchar(50),
    special_condition_2_reason_cde varchar(50),
    special_condition_2_category_cde varchar(50),
    spm_group_billed_suspense_ind boolean,
    spm_individual_billed_suspense_ind boolean,
    spm_group_ar_suspense_ind boolean,
    actively_at_work_ind boolean,
    market_group_cde varchar(50),
    pt_trans_to_insd_dt date,
    managerial_ind boolean,
    init_pd_to_dt date,
    insured_interested_party_nr_txt varchar(100),
    issue_state_cde varchar(50),
    lapse_dt date,
    conversion_status_cde varchar(50),
    last_anniversary_dt date,
    next_anniversary_dt date,
    insured_issue_age_nr int,
    smoker_cde varchar(50),
    mec_cde varchar(50),
    source_mec_cde varchar(50),
    plan_year_nr int,
    plan_month_nr int,
    agreement_cusip_cde varchar(50),
    agreement_dividend_option_cde varchar(50),
    source_agreement_dividend_option_cde varchar(50),
    apl_cde varchar(50),
    base_face_rating_nr int,
    base_temporary_premium_amt numeric(17,4),
    base_temporary_duration_nr int,
    base_permanent_premium_amt numeric(17,4),
    base_face_amt numeric(17,4),
    activity_pending_cde varchar(50),
    activity_pending_desc varchar(200),
    source_activity_pending_desc varchar(200),
    apd_ind boolean,
    source_apd_ind varchar(50),
    apm_nr_txt varchar(25),
    source_apm_nr_txt varchar(50),
    source_apl_cde varchar(50),
    conversion_ind boolean,
    source_conversion_ind varchar(50),
    converted_policy_type_cde varchar(50),
    source_converted_policy_type_cde varchar(50),
    converted_policy_nr_txt varchar(50),
    activity_cde varchar(50),
    delivery_data_cde varchar(50),
    source_delivery_data_cde varchar(50),
    benefit_amt numeric(17,4),
    death_benefit_option_cde varchar(50),
    death_benefit_option_interest_rt numeric(9,6),
    death_benefit_option_interest_rt_quality_cde varchar(50),
    exchange_provision_cde varchar(50),
    source_exchange_provision_cde varchar(50),
    free_look_expiry_dt date,
    insurance_annuity_cde varchar(50),
    source_insurance_annuity_cde varchar(50),
    lump_sum_benefit_amt numeric(17,4),
    mec_effective_dt date,
    mec_status_cde varchar(50),
    source_mec_status_cde varchar(50),
    non_forfeiture_option_cde varchar(50),
    admspec_cde varchar(50),
    source_admspec_cde varchar(50),
    purpose_of_insurance_category_cde varchar(50),
    purpose_of_insurance_cde varchar(50),
    pend_settle_cde varchar(50),
    reinsured_cde varchar(50),
    source_reinsured_cde varchar(50),
    temporary_term_pre_effective_dt date,
    temporary_term_status_cde varchar(50),
    yearly_term_purchase_cde varchar(50),
    policy_lapse_dt date,
    dbo_short_nm varchar(25),
    mec_effective_dt_quality_cde varchar(50),
    vlr_rc varchar(50),
    telephone_authorization_cde varchar(50),
    tax_agg_cde varchar(50),
    source_tax_agg_cde varchar(50),
    tax_amt_not_determined_ind char(1),
    assign_dt date,
    earliest_permitted_annuity_dt date,
    latest_permitted_annuity_dt date,
    source_telephone_authorization_cde varchar(50),
    withdrawal_option_cde varchar(50),
    source_withdrawal_option_cde varchar(50),
    glwb_status_cde varchar(50),
    source_glwb_status_cde varchar(50),
    glwb_status_dt date,
    reinsurance_treaty_nr_txt varchar(100),
    excess_withdrawal_cde varchar(50),
    source_excess_withdrawal_cde varchar(50),
    vi_rider_ind boolean,
    portability_ind boolean,
    agreement_second_dividend_option_cde varchar(50),
    source_agreement_second_dividend_option_cde varchar(50),
    agreement_dividend_option_desc varchar(100),
    agreement_second_dividend_option_desc varchar(100),
    source_delete_ind boolean not null default false,
    source_product_type_cde varchar(50),
    living_benefit_notice_cde varchar(50),
    source_living_benefit_notice_cde varchar(50),
    living_benefit_lock_in_cde varchar(50),
    source_living_benefit_lock_in_cde varchar(50),
    living_benefit_lock_in_dt date,
    persistency_credit_cde varchar(50),
    source_persistency_credit_cde varchar(50),
    persistency_credit_start_dt date,
    death_benefit_option_change_age_nr int,
    admin_status_category_desc varchar(200)
) order by restricted_row_ind,
          logical_delete_ind,
          current_row_ind,
          source_system_id,
          agreement_source_cde,
          agreement_type_cde,
          agreement_nr_pfx,
          agreement_nr,
          agreement_nr_sfx,
          dim_agreement_natural_key_hash_uuid,
          begin_dt,
          begin_dtm,
          end_dt,
          end_dtm
segmented by hash(dim_agreement_natural_key_hash_uuid) all nodes;

------------------------------------------------------------------

create table edw_work.aifrps_dim_agreement_initial_load
(
    dim_agreement_natural_key_hash_uuid uuid not null,
    agreement_nr_pfx varchar(50),
    agreement_nr varchar(150) not null,
    agreement_nr_sfx varchar(50),
    agreement_source_cde varchar(50) not null,
    agreement_type_cde varchar(50) not null,
    master_contract_group_id varchar(50),
    sponsor_id varchar(50),
    plan_id varchar(50),
    subscriber_id varchar(50),
    participant_id varchar(50),
    icu_id varchar(50),
    master_contract_group_nm_national_desc varchar(500),
    plan_nm_1_txt varchar(150),
    plan_nm_2_txt varchar(150),
    plan_nm_3_txt varchar(150),
    subscriber_nr int,
    agreement_status_cde varchar(50),
    agreement_status_reason_cde varchar(50),
    allow_rollover_ind boolean,
    application_submit_dt date,
    beneficiaries_recorded_ind boolean,
    conversion_expired_ind boolean,
    conversion_eligibility_start_dt date,
    conversion_eligibility_end_dt date,
    default_voluntary_deferral_rt numeric(9,6),
    enrollment_dt date,
    enrollment_eligibility_dt date,
    enrollment_start_dt date,
    enrollment_end_dt date,
    enrollment_status_cde varchar(50),
    enrollment_type_cde varchar(50),
    face_amt numeric(17,4),
    internal_plan_id varchar(50),
    issue_dt date,
    participation_dt date,
    solicitation_dt date,
    solicitation_ind boolean,
    taft_hartly_ind boolean,
    electronic_contribution_change_ind boolean,
    pre_tax_auto_increase_contribution_rt numeric(9,6),
    begin_dt date not null default '0001-01-01'::date,
    begin_dtm timestamp(6) not null default '0001-01-01 00:00:00'::timestamp,
    row_process_dtm timestamp(6) not null default (now())::timestamptz(6),
    audit_id int not null default 0,
    logical_delete_ind boolean not null default false,
    check_sum uuid not null,
    current_row_ind boolean not null default true,
    end_dt date not null default '9999-12-31'::date,
    end_dtm timestamp(6) not null default '9999-12-31 23:59:59.999999'::timestamp,
    source_system_id varchar(50) not null,
    restricted_row_ind boolean not null default false,
    row_sid  identity ,
    next_payment_dt date,
    next_payment_amt numeric(17,4),
    current_principal_amt numeric(17,4),
    loan_booked_coupon_rt numeric(9,6),
    loan_booked_amt numeric(17,4),
    loan_requested_coupon_rt numeric(9,6),
    loan_requested_amt numeric(17,4),
    loan_months_to_maturity_val int,
    loan_degree_program_desc varchar(50),
    decisioning_annual_income_amt numeric(17,4),
    application_status_dt date,
    loan_report_unique_hash_id varchar(32),
    eservice_ind boolean,
    agreement_effective_dt date,
    update_audit_id int not null default 0,
    terminated_participant_servicing_ind boolean,
    managed_accounts_eligibility_ind boolean,
    managed_accounts_participation_ind boolean,
    managed_accounts_eligibility_start_dtm timestamp(6),
    split_contract_ind boolean,
    mm_lead_administrator_ind boolean,
    mm_account_manager_nm varchar(100),
    industry_cde varchar(50),
    source_agreement_status_cde varchar(50),
    source_agreement_status_reason_cde varchar(50),
    source_agreement_status_category_cde varchar(50),
    agreement_status_dt date,
    dim_product_natural_key_hash_uuid uuid,
    pt1_kind_cde varchar(50),
    pt2_issue_basis_cde varchar(50),
    pt3_rate_cde varchar(50),
    maturity_dt date,
    anniversary_dt date,
    termination_dt date,
    application_received_dt date,
    application_signed_dt date,
    market_category_type_cde varchar(50),
    source_plan_type_cde varchar(50),
    source_market_category_type_cde varchar(50),
    tax_qualified_cde varchar(50),
    source_tax_qualified_cde varchar(50),
    replacement_type_cde varchar(50),
    source_replacement_type_cde varchar(50),
    restriction_cde varchar(50),
    source_restriction_cde varchar(50),
    restriction_category_cde varchar(50),
    source_restriction_category_cde varchar(50),
    company_cde varchar(50),
    source_company_cde varchar(50),
    frozen_cde varchar(50),
    source_frozen_cde varchar(50),
    home_office_amount_suspend_cde varchar(50),
    source_home_office_amount_suspend_cde varchar(50),
    lost_insured_ind boolean,
    source_lost_insured_ind varchar(50),
    title_message_txt varchar(50),
    offer_acceptance_cde varchar(50),
    source_offer_acceptance_cde varchar(50),
    variable_product_cde varchar(50),
    contract_jurisdiction_state_cde varchar(50),
    tax_account_nr varchar(50),
    readability_cde varchar(50),
    source_readability_cde varchar(50),
    vantage_restriction_cde varchar(50),
    suspend_cde varchar(50),
    source_suspend_cde varchar(50),
    source_product_short_nm varchar(50),
    source_product_long_nm varchar(100),
    special_handling_cde varchar(50),
    source_special_handling_cde varchar(50),
    issue_reason_cde varchar(50),
    source_issue_reason_cde varchar(50),
    cdsc_period_year_nr int,
    renewal_dt date,
    retire_guard_ind boolean,
    source_admin_error_cde varchar(50),
    source_pending_activity_cde varchar(50),
    source_agreement_nr varchar(50),
    worksite_ind boolean,
    product_group_cde varchar(50),
    update_state_cde varchar(50),
    agency_suspend_item_cde varchar(50),
    distributor_client_account_id varchar(50),
    resident_state_cde varchar(50),
    solicitation_state_cde varchar(50),
    distribution_channel_cde varchar(50),
    source_distribution_channel_cde varchar(50),
    product_tier_cde varchar(50),
    replacement_cde varchar(50),
    source_replacement_cde varchar(50),
    special_condition_cde varchar(50),
    special_condition_reason_cde varchar(50),
    special_condition_category_cde varchar(50),
    special_condition_2_cde varchar(50),
    special_condition_2_reason_cde varchar(50),
    special_condition_2_category_cde varchar(50),
    spm_group_billed_suspense_ind boolean,
    spm_individual_billed_suspense_ind boolean,
    spm_group_ar_suspense_ind boolean,
    actively_at_work_ind boolean,
    market_group_cde varchar(50),
    pt_trans_to_insd_dt date,
    managerial_ind boolean,
    init_pd_to_dt date,
    insured_interested_party_nr_txt varchar(100),
    issue_state_cde varchar(50),
    lapse_dt date,
    conversion_status_cde varchar(50),
    last_anniversary_dt date,
    next_anniversary_dt date,
    insured_issue_age_nr int,
    smoker_cde varchar(50),
    mec_cde varchar(50),
    source_mec_cde varchar(50),
    plan_year_nr int,
    plan_month_nr int,
    agreement_cusip_cde varchar(50),
    agreement_dividend_option_cde varchar(50),
    source_agreement_dividend_option_cde varchar(50),
    apl_cde varchar(50),
    base_face_rating_nr int,
    base_temporary_premium_amt numeric(17,4),
    base_temporary_duration_nr int,
    base_permanent_premium_amt numeric(17,4),
    base_face_amt numeric(17,4),
    activity_pending_cde varchar(50),
    activity_pending_desc varchar(200),
    source_activity_pending_desc varchar(200),
    apd_ind boolean,
    source_apd_ind varchar(50),
    apm_nr_txt varchar(25),
    source_apm_nr_txt varchar(50),
    source_apl_cde varchar(50),
    conversion_ind boolean,
    source_conversion_ind varchar(50),
    converted_policy_type_cde varchar(50),
    source_converted_policy_type_cde varchar(50),
    converted_policy_nr_txt varchar(50),
    activity_cde varchar(50),
    delivery_data_cde varchar(50),
    source_delivery_data_cde varchar(50),
    benefit_amt numeric(17,4),
    death_benefit_option_cde varchar(50),
    death_benefit_option_interest_rt numeric(9,6),
    death_benefit_option_interest_rt_quality_cde varchar(50),
    exchange_provision_cde varchar(50),
    source_exchange_provision_cde varchar(50),
    free_look_expiry_dt date,
    insurance_annuity_cde varchar(50),
    source_insurance_annuity_cde varchar(50),
    lump_sum_benefit_amt numeric(17,4),
    mec_effective_dt date,
    mec_status_cde varchar(50),
    source_mec_status_cde varchar(50),
    non_forfeiture_option_cde varchar(50),
    admspec_cde varchar(50),
    source_admspec_cde varchar(50),
    purpose_of_insurance_category_cde varchar(50),
    purpose_of_insurance_cde varchar(50),
    pend_settle_cde varchar(50),
    reinsured_cde varchar(50),
    source_reinsured_cde varchar(50),
    temporary_term_pre_effective_dt date,
    temporary_term_status_cde varchar(50),
    yearly_term_purchase_cde varchar(50),
    policy_lapse_dt date,
    dbo_short_nm varchar(25),
    mec_effective_dt_quality_cde varchar(50),
    vlr_rc varchar(50),
    telephone_authorization_cde varchar(50),
    tax_agg_cde varchar(50),
    source_tax_agg_cde varchar(50),
    tax_amt_not_determined_ind char(1),
    assign_dt date,
    earliest_permitted_annuity_dt date,
    latest_permitted_annuity_dt date,
    source_telephone_authorization_cde varchar(50),
    withdrawal_option_cde varchar(50),
    source_withdrawal_option_cde varchar(50),
    glwb_status_cde varchar(50),
    source_glwb_status_cde varchar(50),
    glwb_status_dt date,
    reinsurance_treaty_nr_txt varchar(100),
    excess_withdrawal_cde varchar(50),
    source_excess_withdrawal_cde varchar(50),
    vi_rider_ind boolean,
    portability_ind boolean,
    agreement_second_dividend_option_cde varchar(50),
    source_agreement_second_dividend_option_cde varchar(50),
    agreement_dividend_option_desc varchar(100),
    agreement_second_dividend_option_desc varchar(100),
    source_delete_ind boolean not null default false,
    source_product_type_cde varchar(50),
    living_benefit_notice_cde varchar(50),
    source_living_benefit_notice_cde varchar(50),
    living_benefit_lock_in_cde varchar(50),
    source_living_benefit_lock_in_cde varchar(50),
    living_benefit_lock_in_dt date,
    persistency_credit_cde varchar(50),
    source_persistency_credit_cde varchar(50),
    persistency_credit_start_dt date,
    death_benefit_option_change_age_nr int,
    admin_status_category_desc varchar(200)
) order by restricted_row_ind,
          logical_delete_ind,
          current_row_ind,
          source_system_id,
          agreement_source_cde,
          agreement_type_cde,
          agreement_nr_pfx,
          agreement_nr,
          agreement_nr_sfx,
          dim_agreement_natural_key_hash_uuid,
          begin_dt,
          begin_dtm,
          end_dt,
          end_dtm
segmented by hash(dim_agreement_natural_key_hash_uuid) all nodes;

------------------------------------------------------------------

create table edw_tdsunset.dim_agreement_initial_aif_rps
(
    dim_agreement_natural_key_hash_uuid uuid not null,
    agreement_nr_pfx varchar(50),
    agreement_nr varchar(150) not null,
    agreement_nr_sfx varchar(50),
    agreement_source_cde varchar(50) not null,
    agreement_type_cde varchar(50) not null,
    master_contract_group_id varchar(50),
    sponsor_id varchar(50),
    plan_id varchar(50),
    subscriber_id varchar(50),
    participant_id varchar(50),
    icu_id varchar(50),
    master_contract_group_nm_national_desc varchar(500),
    plan_nm_1_txt varchar(150),
    plan_nm_2_txt varchar(150),
    plan_nm_3_txt varchar(150),
    subscriber_nr int,
    agreement_status_cde varchar(50),
    agreement_status_reason_cde varchar(50),
    allow_rollover_ind boolean,
    application_submit_dt date,
    beneficiaries_recorded_ind boolean,
    conversion_expired_ind boolean,
    conversion_eligibility_start_dt date,
    conversion_eligibility_end_dt date,
    default_voluntary_deferral_rt numeric(9,6),
    enrollment_dt date,
    enrollment_eligibility_dt date,
    enrollment_start_dt date,
    enrollment_end_dt date,
    enrollment_status_cde varchar(50),
    enrollment_type_cde varchar(50),
    face_amt numeric(17,4),
    internal_plan_id varchar(50),
    issue_dt date,
    participation_dt date,
    solicitation_dt date,
    solicitation_ind boolean,
    taft_hartly_ind boolean,
    electronic_contribution_change_ind boolean,
    pre_tax_auto_increase_contribution_rt numeric(9,6),
    begin_dt date not null default '0001-01-01'::date,
    begin_dtm timestamp(6) not null default '0001-01-01 00:00:00'::timestamp,
    row_process_dtm timestamp(6) not null default (now())::timestamptz(6),
    audit_id int not null default 0,
    logical_delete_ind boolean not null default false,
    check_sum uuid not null,
    current_row_ind boolean not null default true,
    end_dt date not null default '9999-12-31'::date,
    end_dtm timestamp(6) not null default '9999-12-31 23:59:59.999999'::timestamp,
    source_system_id varchar(50) not null,
    restricted_row_ind boolean not null default false,
    row_sid  identity ,
    next_payment_dt date,
    next_payment_amt numeric(17,4),
    current_principal_amt numeric(17,4),
    loan_booked_coupon_rt numeric(9,6),
    loan_booked_amt numeric(17,4),
    loan_requested_coupon_rt numeric(9,6),
    loan_requested_amt numeric(17,4),
    loan_months_to_maturity_val int,
    loan_degree_program_desc varchar(50),
    decisioning_annual_income_amt numeric(17,4),
    application_status_dt date,
    loan_report_unique_hash_id varchar(32),
    eservice_ind boolean,
    agreement_effective_dt date,
    update_audit_id int not null default 0,
    terminated_participant_servicing_ind boolean,
    managed_accounts_eligibility_ind boolean,
    managed_accounts_participation_ind boolean,
    managed_accounts_eligibility_start_dtm timestamp(6),
    split_contract_ind boolean,
    mm_lead_administrator_ind boolean,
    mm_account_manager_nm varchar(100),
    industry_cde varchar(50),
    source_agreement_status_cde varchar(50),
    source_agreement_status_reason_cde varchar(50),
    source_agreement_status_category_cde varchar(50),
    agreement_status_dt date,
    dim_product_natural_key_hash_uuid uuid,
    pt1_kind_cde varchar(50),
    pt2_issue_basis_cde varchar(50),
    pt3_rate_cde varchar(50),
    maturity_dt date,
    anniversary_dt date,
    termination_dt date,
    application_received_dt date,
    application_signed_dt date,
    market_category_type_cde varchar(50),
    source_plan_type_cde varchar(50),
    source_market_category_type_cde varchar(50),
    tax_qualified_cde varchar(50),
    source_tax_qualified_cde varchar(50),
    replacement_type_cde varchar(50),
    source_replacement_type_cde varchar(50),
    restriction_cde varchar(50),
    source_restriction_cde varchar(50),
    restriction_category_cde varchar(50),
    source_restriction_category_cde varchar(50),
    company_cde varchar(50),
    source_company_cde varchar(50),
    frozen_cde varchar(50),
    source_frozen_cde varchar(50),
    home_office_amount_suspend_cde varchar(50),
    source_home_office_amount_suspend_cde varchar(50),
    lost_insured_ind boolean,
    source_lost_insured_ind varchar(50),
    title_message_txt varchar(50),
    offer_acceptance_cde varchar(50),
    source_offer_acceptance_cde varchar(50),
    variable_product_cde varchar(50),
    contract_jurisdiction_state_cde varchar(50),
    tax_account_nr varchar(50),
    readability_cde varchar(50),
    source_readability_cde varchar(50),
    vantage_restriction_cde varchar(50),
    suspend_cde varchar(50),
    source_suspend_cde varchar(50),
    source_product_short_nm varchar(50),
    source_product_long_nm varchar(100),
    special_handling_cde varchar(50),
    source_special_handling_cde varchar(50),
    issue_reason_cde varchar(50),
    source_issue_reason_cde varchar(50),
    cdsc_period_year_nr int,
    renewal_dt date,
    retire_guard_ind boolean,
    source_admin_error_cde varchar(50),
    source_pending_activity_cde varchar(50),
    source_agreement_nr varchar(50),
    worksite_ind boolean,
    product_group_cde varchar(50),
    update_state_cde varchar(50),
    agency_suspend_item_cde varchar(50),
    distributor_client_account_id varchar(50),
    resident_state_cde varchar(50),
    solicitation_state_cde varchar(50),
    distribution_channel_cde varchar(50),
    source_distribution_channel_cde varchar(50),
    product_tier_cde varchar(50),
    replacement_cde varchar(50),
    source_replacement_cde varchar(50),
    special_condition_cde varchar(50),
    special_condition_reason_cde varchar(50),
    special_condition_category_cde varchar(50),
    special_condition_2_cde varchar(50),
    special_condition_2_reason_cde varchar(50),
    special_condition_2_category_cde varchar(50),
    spm_group_billed_suspense_ind boolean,
    spm_individual_billed_suspense_ind boolean,
    spm_group_ar_suspense_ind boolean,
    actively_at_work_ind boolean,
    market_group_cde varchar(50),
    pt_trans_to_insd_dt date,
    managerial_ind boolean,
    init_pd_to_dt date,
    insured_interested_party_nr_txt varchar(100),
    issue_state_cde varchar(50),
    lapse_dt date,
    conversion_status_cde varchar(50),
    last_anniversary_dt date,
    next_anniversary_dt date,
    insured_issue_age_nr int,
    smoker_cde varchar(50),
    mec_cde varchar(50),
    source_mec_cde varchar(50),
    plan_year_nr int,
    plan_month_nr int,
    agreement_cusip_cde varchar(50),
    agreement_dividend_option_cde varchar(50),
    source_agreement_dividend_option_cde varchar(50),
    apl_cde varchar(50),
    base_face_rating_nr int,
    base_temporary_premium_amt numeric(17,4),
    base_temporary_duration_nr int,
    base_permanent_premium_amt numeric(17,4),
    base_face_amt numeric(17,4),
    activity_pending_cde varchar(50),
    activity_pending_desc varchar(200),
    source_activity_pending_desc varchar(200),
    apd_ind boolean,
    source_apd_ind varchar(50),
    apm_nr_txt varchar(25),
    source_apm_nr_txt varchar(50),
    source_apl_cde varchar(50),
    conversion_ind boolean,
    source_conversion_ind varchar(50),
    converted_policy_type_cde varchar(50),
    source_converted_policy_type_cde varchar(50),
    converted_policy_nr_txt varchar(50),
    activity_cde varchar(50),
    delivery_data_cde varchar(50),
    source_delivery_data_cde varchar(50),
    benefit_amt numeric(17,4),
    death_benefit_option_cde varchar(50),
    death_benefit_option_interest_rt numeric(9,6),
    death_benefit_option_interest_rt_quality_cde varchar(50),
    exchange_provision_cde varchar(50),
    source_exchange_provision_cde varchar(50),
    free_look_expiry_dt date,
    insurance_annuity_cde varchar(50),
    source_insurance_annuity_cde varchar(50),
    lump_sum_benefit_amt numeric(17,4),
    mec_effective_dt date,
    mec_status_cde varchar(50),
    source_mec_status_cde varchar(50),
    non_forfeiture_option_cde varchar(50),
    admspec_cde varchar(50),
    source_admspec_cde varchar(50),
    purpose_of_insurance_category_cde varchar(50),
    purpose_of_insurance_cde varchar(50),
    pend_settle_cde varchar(50),
    reinsured_cde varchar(50),
    source_reinsured_cde varchar(50),
    temporary_term_pre_effective_dt date,
    temporary_term_status_cde varchar(50),
    yearly_term_purchase_cde varchar(50),
    policy_lapse_dt date,
    dbo_short_nm varchar(25),
    mec_effective_dt_quality_cde varchar(50),
    vlr_rc varchar(50),
    telephone_authorization_cde varchar(50),
    tax_agg_cde varchar(50),
    source_tax_agg_cde varchar(50),
    tax_amt_not_determined_ind char(1),
    assign_dt date,
    earliest_permitted_annuity_dt date,
    latest_permitted_annuity_dt date,
    source_telephone_authorization_cde varchar(50),
    withdrawal_option_cde varchar(50),
    source_withdrawal_option_cde varchar(50),
    glwb_status_cde varchar(50),
    source_glwb_status_cde varchar(50),
    glwb_status_dt date,
    reinsurance_treaty_nr_txt varchar(100),
    excess_withdrawal_cde varchar(50),
    source_excess_withdrawal_cde varchar(50),
    vi_rider_ind boolean,
    portability_ind boolean,
    agreement_second_dividend_option_cde varchar(50),
    source_agreement_second_dividend_option_cde varchar(50),
    agreement_dividend_option_desc varchar(100),
    agreement_second_dividend_option_desc varchar(100),
    source_delete_ind boolean not null default false,
    source_product_type_cde varchar(50),
    living_benefit_notice_cde varchar(50),
    source_living_benefit_notice_cde varchar(50),
    living_benefit_lock_in_cde varchar(50),
    source_living_benefit_lock_in_cde varchar(50),
    living_benefit_lock_in_dt date,
    persistency_credit_cde varchar(50),
    source_persistency_credit_cde varchar(50),
    persistency_credit_start_dt date,
    death_benefit_option_change_age_nr int,
    admin_status_category_desc varchar(200)
) order by restricted_row_ind,
          logical_delete_ind,
          current_row_ind,
          source_system_id,
          agreement_source_cde,
          agreement_type_cde,
          agreement_nr_pfx,
          agreement_nr,
          agreement_nr_sfx,
          dim_agreement_natural_key_hash_uuid,
          begin_dt,
          begin_dtm,
          end_dt,
          end_dtm
segmented by hash(dim_agreement_natural_key_hash_uuid) all nodes;
