--
-- PostgreSQL database dump
--

-- Dumped from database version 12.5 (Debian 12.5-1.pgdg100+1)
-- Dumped by pg_dump version 12.5 (Debian 12.5-1.pgdg100+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: additional_contribution; Type: TABLE; Schema: public; Owner: ccl
--

CREATE TABLE public.additional_contribution (
    id integer NOT NULL,
    application_id integer,
    created_by integer,
    updated_by integer,
    registry_file_audit_id integer,
    type character varying(255) NOT NULL,
    presentation_date date NOT NULL,
    created_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    updated_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    deleted_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    in_import boolean,
    nsia_numero_posizione character varying(64) DEFAULT NULL::character varying,
    nsia_status character varying(64) DEFAULT NULL::character varying,
    nsia_nota character varying(255) DEFAULT NULL::character varying,
    nsia_data_delibera date,
    nsia_codice_cor integer,
    nsia_data_rilascio_cor date,
    nsia_importo_contributo_deliberato double precision,
    nsia_importo_contributo_liquidato double precision,
    nsia_data_liquidazione date,
    nsia_iban_liquidazione character varying(255) DEFAULT NULL::character varying,
    nsia_data_revoca date,
    nsia_motivo_revoca character varying(255) DEFAULT NULL::character varying,
    nsia_importo_contributo_revocato double precision,
    nsia_data_avvio_procedimento_revoca date,
    nsia_importo_recupero_dovuto double precision,
    nsia_interessi_dovuti double precision,
    nsia_data_richiesta_recupero date,
    nsia_importo_contributo_restituito double precision,
    nsia_importo_interessi_restituiti double precision,
    nsia_data_restituzione date
);



--
-- Name: additional_contribution_id_seq; Type: SEQUENCE; Schema: public; Owner: ccl
--

CREATE SEQUENCE public.additional_contribution_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: additional_contribution_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ccl
--

ALTER SEQUENCE public.additional_contribution_id_seq OWNED BY public.additional_contribution.id;


--
-- Name: application; Type: TABLE; Schema: public; Owner: ccl
--

CREATE TABLE public.application (
    id integer NOT NULL,
    application_import_id integer NOT NULL,
    registry_file_audit_id integer,
    created_by integer,
    updated_by integer,
    application_group_id integer,
    confidi_id integer NOT NULL,
    practice_id character varying(20) NOT NULL,
    flag_energia character varying(1) DEFAULT NULL::character varying,
    ae_gassurance_amount double precision NOT NULL,
    ae_gresolution_date date NOT NULL,
    ae_ac_commissions_rebate_request character varying(1) NOT NULL,
    ae_ac_interests_contribution_request character varying(1) NOT NULL,
    ae_ac_lost_fund_contribution_request character varying(1) NOT NULL,
    ae_ac_contribution_application_amount double precision,
    ae_ac_application_members integer,
    ae_ib_business_name character varying(255) NOT NULL,
    ae_ib_fiscal_code character varying(16) NOT NULL,
    ae_ib_size character varying(255) DEFAULT NULL::character varying,
    ae_ib_constitution_date date NOT NULL,
    ae_ib_chamber_of_commerce_code character varying(10) NOT NULL,
    ae_ib_chamber_of_commerce_registration_date date NOT NULL,
    ae_ib_aiacode character varying(9) DEFAULT NULL::character varying,
    ae_ib_aiaregistration_date date,
    ae_ib_ateco_code character varying(20) NOT NULL,
    ae_ib_ateco_start_date date,
    ae_ib_iban character varying(50) DEFAULT NULL::character varying,
    ae_ib_legal_form character varying(255) NOT NULL,
    ae_pec_address character varying(255) NOT NULL,
    ae_office_address character varying(255) NOT NULL,
    ae_office_postcode character varying(8) NOT NULL,
    ae_office_city character varying(255) NOT NULL,
    ae_workplace_address character varying(255) DEFAULT NULL::character varying,
    ae_workplace_postcode character varying(8) DEFAULT NULL::character varying,
    ae_workplace_city character varying(50) DEFAULT NULL::character varying,
    ae_owner_lastname character varying(255) NOT NULL,
    ae_owner_firstname character varying(255) NOT NULL,
    ae_owner_birth_date date NOT NULL,
    ae_owner_gender character varying(1) NOT NULL,
    ae_owner_fiscal_code character varying(16) NOT NULL,
    ae_owner_birth_city character varying(255) DEFAULT NULL::character varying,
    ae_owner_birth_country character varying(255) DEFAULT NULL::character varying,
    ae_owner_join_date date,
    ae_first_member_lastname character varying(255) DEFAULT NULL::character varying,
    ae_first_member_firstname character varying(255) DEFAULT NULL::character varying,
    ae_first_member_birth_date date,
    ae_first_member_gender character varying(1) DEFAULT NULL::character varying,
    ae_first_member_fiscal_code character varying(16) DEFAULT NULL::character varying,
    ae_first_member_birth_city character varying(255) DEFAULT NULL::character varying,
    ae_first_member_birth_country character varying(255) DEFAULT NULL::character varying,
    ae_first_member_join_date date,
    ae_second_member_lastname character varying(255) DEFAULT NULL::character varying,
    ae_second_member_firstname character varying(255) DEFAULT NULL::character varying,
    ae_second_member_birth_date date,
    ae_second_member_gender character varying(1) DEFAULT NULL::character varying,
    ae_second_member_fiscal_code character varying(16) DEFAULT NULL::character varying,
    ae_second_member_birth_city character varying(255) DEFAULT NULL::character varying,
    ae_second_member_birth_country character varying(255) DEFAULT NULL::character varying,
    ae_second_member_join_date date,
    ae_third_member_lastname character varying(255) DEFAULT NULL::character varying,
    ae_third_member_firstname character varying(255) DEFAULT NULL::character varying,
    ae_third_member_birth_date date,
    ae_third_member_gender character varying(1) DEFAULT NULL::character varying,
    ae_third_member_fiscal_code character varying(16) DEFAULT NULL::character varying,
    ae_third_member_birth_city character varying(255) DEFAULT NULL::character varying,
    ae_third_member_birth_country character varying(255) DEFAULT NULL::character varying,
    ae_third_member_join_date date,
    ae_fourth_member_lastname character varying(255) DEFAULT NULL::character varying,
    ae_fourth_member_firstname character varying(255) DEFAULT NULL::character varying,
    ae_fourth_member_birth_date date,
    ae_fourth_member_gender character varying(1) DEFAULT NULL::character varying,
    ae_fourth_member_fiscal_code character varying(16) DEFAULT NULL::character varying,
    ae_fourth_member_birth_city character varying(255) DEFAULT NULL::character varying,
    ae_fourth_member_birth_country character varying(255) DEFAULT NULL::character varying,
    ae_fourth_member_join_date date,
    f_dbf_bank character varying(255) DEFAULT NULL::character varying,
    f_dbf_business_name character varying(255) DEFAULT NULL::character varying,
    f_dbf_abi character varying(255) DEFAULT NULL::character varying,
    f_ffinancial_destination character varying(255) DEFAULT NULL::character varying,
    f_df_loan_provided_at_import character varying(1) DEFAULT NULL::character varying,
    f_df_amount double precision,
    f_df_contract_signature_date date,
    f_df_resolution_date date,
    f_df_issue_date date,
    f_df_duration integer,
    f_df_periodicity character varying(64) DEFAULT NULL::character varying,
    f_df_first_depreciation_deadline date,
    f_df_pre_depreciation_exists character varying(1) DEFAULT NULL::character varying,
    f_df_installment_amount double precision,
    f_trate_type character varying(1) DEFAULT NULL::character varying,
    f_trate double precision,
    f_ttaeg double precision,
    l_sf_bank_leasing character varying(255) DEFAULT NULL::character varying,
    l_sf_business_name character varying(255) DEFAULT NULL::character varying,
    l_sf_leasing_destination character varying(255) DEFAULT NULL::character varying,
    l_dcl_amount double precision,
    l_dcl_contract_signature_date date,
    l_dcl_resolution_date date,
    l_dcl_duration integer,
    l_dcl_periodicity character varying(64) DEFAULT NULL::character varying,
    l_dcl_first_deadline date,
    l_dcl_fee_amount double precision,
    l_dcl_fee_percentage double precision,
    l_dcl_ransom_percentage double precision,
    l_dcl_rate double precision,
    protocol_number character varying(255) DEFAULT NULL::character varying,
    protocol_date timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    created_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    updated_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    deleted_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    status character varying(64) NOT NULL,
    inquest_status character varying(64) DEFAULT 'closed'::character varying NOT NULL,
    nsia_numero_posizione character varying(64) DEFAULT NULL::character varying,
    nsia_data_protocollo date,
    nsia_nota character varying(255) DEFAULT NULL::character varying,
    nsia_data_delibera date,
    nsia_codice_cor integer,
    nsia_data_rilascio_cor date,
    nsia_ldcl_importo_riscatto double precision,
    nsia_durata_garanzia integer,
    nsia_importo_riassicurazione double precision,
    nsia_esl_riassicurazione double precision,
    nsia_data_inizio_garanzia date,
    nsia_data_fine_garanzia date,
    nsia_data_liquidazione_confidi date,
    nsia_importo_perdita_confidi double precision,
    nsia_data_richiesta_rimborso date,
    nsia_data_protocollo_perdita date,
    nsia_data_delibera_perdita date,
    nsia_importo_rimborso_prenotato double precision,
    nsia_importo_rimborsato double precision,
    nsia_data_liquidazione date,
    nsia_importo_restituito_confidi double precision,
    nsia_data_restituzione_confidi date
);



--
-- Name: application_attachment; Type: TABLE; Schema: public; Owner: ccl
--

CREATE TABLE public.application_attachment (
    id integer NOT NULL,
    created_by_id integer,
    updated_by_id integer,
    application_id integer NOT NULL,
    file_name character varying(255) NOT NULL,
    original_file_name character varying(255) NOT NULL,
    file_size bigint,
    file_uploaded_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    description character varying(255) NOT NULL,
    created_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    updated_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    deleted_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone
);



--
-- Name: application_attachment_id_seq; Type: SEQUENCE; Schema: public; Owner: ccl
--

CREATE SEQUENCE public.application_attachment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: application_attachment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ccl
--

ALTER SEQUENCE public.application_attachment_id_seq OWNED BY public.application_attachment.id;


--
-- Name: application_group; Type: TABLE; Schema: public; Owner: ccl
--

CREATE TABLE public.application_group (
    id integer NOT NULL,
    registry_file_audit_id integer,
    created_by integer,
    updated_by integer,
    confidi_id integer NOT NULL,
    protocol_number character varying(255) DEFAULT NULL::character varying,
    protocol_date timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    status character varying(64) NOT NULL,
    filename character varying(255) DEFAULT NULL::character varying,
    original_file_name character varying(255) DEFAULT NULL::character varying,
    file_size bigint,
    file_uploaded_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    created_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    updated_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    deleted_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone
);



--
-- Name: application_group_id_seq; Type: SEQUENCE; Schema: public; Owner: ccl
--

CREATE SEQUENCE public.application_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: application_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ccl
--

ALTER SEQUENCE public.application_group_id_seq OWNED BY public.application_group.id;


--
-- Name: application_id_seq; Type: SEQUENCE; Schema: public; Owner: ccl
--

CREATE SEQUENCE public.application_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: application_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ccl
--

ALTER SEQUENCE public.application_id_seq OWNED BY public.application.id;


--
-- Name: application_import; Type: TABLE; Schema: public; Owner: ccl
--

CREATE TABLE public.application_import (
    id integer NOT NULL,
    created_by integer,
    updated_by integer,
    template_id integer,
    confidi_id integer NOT NULL,
    filename character varying(255) NOT NULL,
    status character varying(50) NOT NULL,
    created_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    updated_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    deleted_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    errors json
);



--
-- Name: application_import_id_seq; Type: SEQUENCE; Schema: public; Owner: ccl
--

CREATE SEQUENCE public.application_import_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: application_import_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ccl
--

ALTER SEQUENCE public.application_import_id_seq OWNED BY public.application_import.id;


--
-- Name: application_import_template; Type: TABLE; Schema: public; Owner: ccl
--

CREATE TABLE public.application_import_template (
    id integer NOT NULL,
    created_by integer,
    filename character varying(255) NOT NULL,
    active boolean NOT NULL,
    created_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    revision character varying(64) NOT NULL
);



--
-- Name: application_import_template_id_seq; Type: SEQUENCE; Schema: public; Owner: ccl
--

CREATE SEQUENCE public.application_import_template_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: application_import_template_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ccl
--

ALTER SEQUENCE public.application_import_template_id_seq OWNED BY public.application_import_template.id;


--
-- Name: application_message; Type: TABLE; Schema: public; Owner: ccl
--

CREATE TABLE public.application_message (
    id integer NOT NULL,
    created_by integer,
    updated_by integer,
    application_id integer NOT NULL,
    text text,
    published boolean DEFAULT false NOT NULL,
    created_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    updated_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    deleted_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone
);



--
-- Name: application_message_attachment; Type: TABLE; Schema: public; Owner: ccl
--

CREATE TABLE public.application_message_attachment (
    id integer NOT NULL,
    created_by integer,
    updated_by integer,
    application_message_id integer NOT NULL,
    file_name character varying(255) NOT NULL,
    file_size bigint,
    original_file_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    updated_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    deleted_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone
);



--
-- Name: application_message_attachment_id_seq; Type: SEQUENCE; Schema: public; Owner: ccl
--

CREATE SEQUENCE public.application_message_attachment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: application_message_attachment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ccl
--

ALTER SEQUENCE public.application_message_attachment_id_seq OWNED BY public.application_message_attachment.id;


--
-- Name: application_message_id_seq; Type: SEQUENCE; Schema: public; Owner: ccl
--

CREATE SEQUENCE public.application_message_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: application_message_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ccl
--

ALTER SEQUENCE public.application_message_id_seq OWNED BY public.application_message.id;


--
-- Name: application_status_log; Type: TABLE; Schema: public; Owner: ccl
--

CREATE TABLE public.application_status_log (
    id integer NOT NULL,
    application_id integer NOT NULL,
    created_by integer,
    status character varying(64) NOT NULL,
    description text,
    created_at timestamp(0) without time zone NOT NULL,
    deleted_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone
);



--
-- Name: application_status_log_id_seq; Type: SEQUENCE; Schema: public; Owner: ccl
--

CREATE SEQUENCE public.application_status_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: application_status_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ccl
--

ALTER SEQUENCE public.application_status_log_id_seq OWNED BY public.application_status_log.id;


--
-- Name: assurance_enterprise_import; Type: TABLE; Schema: public; Owner: ccl
--

CREATE TABLE public.assurance_enterprise_import (
    id integer NOT NULL,
    application_import_id integer,
    created_by integer,
    updated_by integer,
    practice_id character varying(20) DEFAULT NULL::character varying,
    flag_energia character varying(1) DEFAULT NULL::character varying,
    g_assurance_amount character varying(64) DEFAULT NULL::character varying,
    g_resolution_date character varying(10) DEFAULT NULL::character varying,
    ac_commissions_rebate_request character varying(1) DEFAULT NULL::character varying,
    ac_interests_contribution_request character varying(1) DEFAULT NULL::character varying,
    ac_lost_fund_contribution_request character varying(1) DEFAULT NULL::character varying,
    ac_contribution_application_amount character varying(64) DEFAULT NULL::character varying,
    ac_application_members character varying(8) DEFAULT NULL::character varying,
    ib_business_name character varying(255) DEFAULT NULL::character varying,
    ib_fiscal_code character varying(16) DEFAULT NULL::character varying,
    ib_size character varying(255) DEFAULT NULL::character varying,
    ib_constitution_date character varying(10) DEFAULT NULL::character varying,
    ib_chamber_of_commerce_code character varying(10) DEFAULT NULL::character varying,
    ib_chamber_of_commerce_registration_date character varying(10) DEFAULT NULL::character varying,
    ib_aiacode character varying(9) DEFAULT NULL::character varying,
    ib_aiaregistration_date character varying(10) DEFAULT NULL::character varying,
    ib_ateco_code character varying(16) DEFAULT NULL::character varying,
    ib_ateco_start_date character varying(10) DEFAULT NULL::character varying,
    ib_iban character varying(50) DEFAULT NULL::character varying,
    ib_legal_form character varying(255) DEFAULT NULL::character varying,
    pec_address character varying(255) DEFAULT NULL::character varying,
    office_address character varying(255) DEFAULT NULL::character varying,
    office_postcode character varying(8) DEFAULT NULL::character varying,
    office_city character varying(255) DEFAULT NULL::character varying,
    workplace_address character varying(255) DEFAULT NULL::character varying,
    workplace_postcode character varying(8) DEFAULT NULL::character varying,
    workplace_city character varying(255) DEFAULT NULL::character varying,
    owner_lastname character varying(255) DEFAULT NULL::character varying,
    owner_firstname character varying(255) DEFAULT NULL::character varying,
    owner_birth_date character varying(10) DEFAULT NULL::character varying,
    owner_gender character varying(1) DEFAULT NULL::character varying,
    owner_fiscal_code character varying(16) DEFAULT NULL::character varying,
    owner_birth_city character varying(255) DEFAULT NULL::character varying,
    owner_birth_country character varying(255) DEFAULT NULL::character varying,
    owner_join_date character varying(10) DEFAULT NULL::character varying,
    first_member_lastname character varying(255) DEFAULT NULL::character varying,
    first_member_firstname character varying(255) DEFAULT NULL::character varying,
    first_member_birth_date character varying(10) DEFAULT NULL::character varying,
    first_member_gender character varying(1) DEFAULT NULL::character varying,
    first_member_fiscal_code character varying(16) DEFAULT NULL::character varying,
    first_member_birth_city character varying(255) DEFAULT NULL::character varying,
    first_member_birth_country character varying(255) DEFAULT NULL::character varying,
    first_member_join_date character varying(10) DEFAULT NULL::character varying,
    second_member_lastname character varying(255) DEFAULT NULL::character varying,
    second_member_firstname character varying(255) DEFAULT NULL::character varying,
    second_member_birth_date character varying(10) DEFAULT NULL::character varying,
    second_member_gender character varying(1) DEFAULT NULL::character varying,
    second_member_fiscal_code character varying(16) DEFAULT NULL::character varying,
    second_member_birth_city character varying(255) DEFAULT NULL::character varying,
    second_member_birth_country character varying(255) DEFAULT NULL::character varying,
    second_member_join_date character varying(10) DEFAULT NULL::character varying,
    third_member_lastname character varying(255) DEFAULT NULL::character varying,
    third_member_firstname character varying(255) DEFAULT NULL::character varying,
    third_member_birth_date character varying(10) DEFAULT NULL::character varying,
    third_member_gender character varying(1) DEFAULT NULL::character varying,
    third_member_fiscal_code character varying(16) DEFAULT NULL::character varying,
    third_member_birth_city character varying(255) DEFAULT NULL::character varying,
    third_member_birth_country character varying(255) DEFAULT NULL::character varying,
    third_member_join_date character varying(10) DEFAULT NULL::character varying,
    fourth_member_lastname character varying(255) DEFAULT NULL::character varying,
    fourth_member_firstname character varying(255) DEFAULT NULL::character varying,
    fourth_member_birth_date character varying(10) DEFAULT NULL::character varying,
    fourth_member_gender character varying(1) DEFAULT NULL::character varying,
    fourth_member_fiscal_code character varying(16) DEFAULT NULL::character varying,
    fourth_member_birth_city character varying(255) DEFAULT NULL::character varying,
    fourth_member_birth_country character varying(255) DEFAULT NULL::character varying,
    fourth_member_join_date character varying(10) DEFAULT NULL::character varying,
    "row" integer,
    created_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    updated_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    deleted_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone
);



--
-- Name: assurance_enterprise_import_id_seq; Type: SEQUENCE; Schema: public; Owner: ccl
--

CREATE SEQUENCE public.assurance_enterprise_import_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: assurance_enterprise_import_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ccl
--

ALTER SEQUENCE public.assurance_enterprise_import_id_seq OWNED BY public.assurance_enterprise_import.id;


--
-- Name: ateco_code; Type: TABLE; Schema: public; Owner: ccl
--

CREATE TABLE public.ateco_code (
    id integer NOT NULL,
    code character varying(10) NOT NULL,
    code_without_dots character varying(10) NOT NULL,
    description character varying(255) NOT NULL,
    section character varying(1) NOT NULL
);



--
-- Name: ateco_code_id_seq; Type: SEQUENCE; Schema: public; Owner: ccl
--

CREATE SEQUENCE public.ateco_code_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: ateco_code_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ccl
--

ALTER SEQUENCE public.ateco_code_id_seq OWNED BY public.ateco_code.id;


--
-- Name: bank; Type: TABLE; Schema: public; Owner: ccl
--

CREATE TABLE public.bank (
    id integer NOT NULL,
    template_id integer NOT NULL,
    name character varying(255) NOT NULL,
    code character varying(8) NOT NULL
);



--
-- Name: bank_id_seq; Type: SEQUENCE; Schema: public; Owner: ccl
--

CREATE SEQUENCE public.bank_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: bank_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ccl
--

ALTER SEQUENCE public.bank_id_seq OWNED BY public.bank.id;


--
-- Name: bank_leasing; Type: TABLE; Schema: public; Owner: ccl
--

CREATE TABLE public.bank_leasing (
    id integer NOT NULL,
    template_id integer NOT NULL,
    name character varying(255) NOT NULL,
    code character varying(8) NOT NULL
);



--
-- Name: bank_leasing_id_seq; Type: SEQUENCE; Schema: public; Owner: ccl
--

CREATE SEQUENCE public.bank_leasing_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: bank_leasing_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ccl
--

ALTER SEQUENCE public.bank_leasing_id_seq OWNED BY public.bank_leasing.id;


--
-- Name: city; Type: TABLE; Schema: public; Owner: ccl
--

CREATE TABLE public.city (
    id integer NOT NULL,
    template_id integer NOT NULL,
    name character varying(255) NOT NULL,
    code character varying(4) NOT NULL,
    in_region boolean
);



--
-- Name: city_id_seq; Type: SEQUENCE; Schema: public; Owner: ccl
--

CREATE SEQUENCE public.city_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: city_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ccl
--

ALTER SEQUENCE public.city_id_seq OWNED BY public.city.id;


--
-- Name: company_size; Type: TABLE; Schema: public; Owner: ccl
--

CREATE TABLE public.company_size (
    id integer NOT NULL,
    template_id integer NOT NULL,
    size character varying(255) NOT NULL,
    code character varying(2) NOT NULL
);



--
-- Name: company_size_id_seq; Type: SEQUENCE; Schema: public; Owner: ccl
--

CREATE SEQUENCE public.company_size_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: company_size_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ccl
--

ALTER SEQUENCE public.company_size_id_seq OWNED BY public.company_size.id;


--
-- Name: confidi; Type: TABLE; Schema: public; Owner: ccl
--

CREATE TABLE public.confidi (
    id integer NOT NULL,
    business_name character varying(255) NOT NULL,
    legal_representative character varying(255) NOT NULL,
    iban character varying(27) NOT NULL,
    fiscal_code character varying(16) NOT NULL,
    nsia_code character varying(50) NOT NULL,
    nsia_tot_garantito double precision,
    nsia_tot_riserva_accantonata double precision,
    nsia_tot_inefficace double precision,
    nsia_tot_escusso double precision,
    nsia_tot_escutibile double precision,
    nsia_numero_pratiche_presentate integer,
    nsia_numero_pratiche_approvate integer,
    nsia_numero_pratiche_in_essere integer
);



--
-- Name: confidi_id_seq; Type: SEQUENCE; Schema: public; Owner: ccl
--

CREATE SEQUENCE public.confidi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: confidi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ccl
--

ALTER SEQUENCE public.confidi_id_seq OWNED BY public.confidi.id;


--
-- Name: country; Type: TABLE; Schema: public; Owner: ccl
--

CREATE TABLE public.country (
    id integer NOT NULL,
    template_id integer NOT NULL,
    name character varying(255) NOT NULL,
    code character varying(4) NOT NULL
);



--
-- Name: country_id_seq; Type: SEQUENCE; Schema: public; Owner: ccl
--

CREATE SEQUENCE public.country_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: country_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ccl
--

ALTER SEQUENCE public.country_id_seq OWNED BY public.country.id;


--
-- Name: doctrine_migration_versions; Type: TABLE; Schema: public; Owner: ccl
--

CREATE TABLE public.doctrine_migration_versions (
    version character varying(191) NOT NULL,
    executed_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    execution_time integer
);



--
-- Name: ext_log_entries; Type: TABLE; Schema: public; Owner: ccl
--

CREATE TABLE public.ext_log_entries (
    id integer NOT NULL,
    action character varying(8) NOT NULL,
    logged_at timestamp(0) without time zone NOT NULL,
    object_id character varying(64) DEFAULT NULL::character varying,
    object_class character varying(191) NOT NULL,
    version integer NOT NULL,
    data text,
    username character varying(191) DEFAULT NULL::character varying
);



--
-- Name: COLUMN ext_log_entries.data; Type: COMMENT; Schema: public; Owner: ccl
--

COMMENT ON COLUMN public.ext_log_entries.data IS '(DC2Type:array)';


--
-- Name: ext_log_entries_id_seq; Type: SEQUENCE; Schema: public; Owner: ccl
--

CREATE SEQUENCE public.ext_log_entries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: financial_destination; Type: TABLE; Schema: public; Owner: ccl
--

CREATE TABLE public.financial_destination (
    id integer NOT NULL,
    template_id integer NOT NULL,
    destination character varying(255) NOT NULL,
    code character varying(8) NOT NULL
);



--
-- Name: financial_destination_id_seq; Type: SEQUENCE; Schema: public; Owner: ccl
--

CREATE SEQUENCE public.financial_destination_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: financial_destination_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ccl
--

ALTER SEQUENCE public.financial_destination_id_seq OWNED BY public.financial_destination.id;


--
-- Name: financing_import; Type: TABLE; Schema: public; Owner: ccl
--

CREATE TABLE public.financing_import (
    id integer NOT NULL,
    application_import_id integer,
    created_by integer,
    updated_by integer,
    practice_id character varying(20) DEFAULT NULL::character varying,
    dbf_bank character varying(255) DEFAULT NULL::character varying,
    dbf_business_name character varying(255) DEFAULT NULL::character varying,
    dbf_abi character varying(255) DEFAULT NULL::character varying,
    f_financial_destination character varying(255) DEFAULT NULL::character varying,
    df_loan_provided_at_import character varying(1) DEFAULT NULL::character varying,
    df_amount character varying(64) DEFAULT NULL::character varying,
    df_contract_signature_date character varying(10) DEFAULT NULL::character varying,
    df_resolution_date character varying(10) DEFAULT NULL::character varying,
    df_issue_date character varying(10) DEFAULT NULL::character varying,
    df_duration character varying(8) DEFAULT NULL::character varying,
    df_periodicity character varying(64) DEFAULT NULL::character varying,
    df_first_depreciation_deadline character varying(10) DEFAULT NULL::character varying,
    df_pre_depreciation_exists character varying(1) DEFAULT NULL::character varying,
    df_installment_amount character varying(64) DEFAULT NULL::character varying,
    t_rate_type character varying(1) DEFAULT NULL::character varying,
    t_rate character varying(6) DEFAULT NULL::character varying,
    t_taeg character varying(6) DEFAULT NULL::character varying,
    "row" integer,
    created_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    updated_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    deleted_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone
);



--
-- Name: financing_import_id_seq; Type: SEQUENCE; Schema: public; Owner: ccl
--

CREATE SEQUENCE public.financing_import_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: financing_import_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ccl
--

ALTER SEQUENCE public.financing_import_id_seq OWNED BY public.financing_import.id;


--
-- Name: financing_provisioning_certification; Type: TABLE; Schema: public; Owner: ccl
--

CREATE TABLE public.financing_provisioning_certification (
    id integer NOT NULL,
    created_by integer,
    updated_by integer,
    application_id integer,
    registry_file_audit_id integer,
    amount double precision NOT NULL,
    contract_signature_date date NOT NULL,
    issue_date date NOT NULL,
    periodicity character varying(64) NOT NULL,
    first_depreciation_deadline date NOT NULL,
    last_depreciation_deadline date NOT NULL,
    pre_depreciation integer NOT NULL,
    installment_amount double precision NOT NULL,
    rate_type character varying(1) NOT NULL,
    rate double precision NOT NULL,
    taeg double precision NOT NULL,
    spread double precision NOT NULL,
    status character varying(64) NOT NULL,
    created_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    updated_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    deleted_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    financing_duration integer NOT NULL,
    filename character varying(255) DEFAULT NULL::character varying,
    original_file_name character varying(255) DEFAULT NULL::character varying,
    file_size bigint,
    file_uploaded_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    assurance_amount double precision,
    assurance_percentage double precision
);



--
-- Name: financing_provisioning_certification_id_seq; Type: SEQUENCE; Schema: public; Owner: ccl
--

CREATE SEQUENCE public.financing_provisioning_certification_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: financing_provisioning_certification_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ccl
--

ALTER SEQUENCE public.financing_provisioning_certification_id_seq OWNED BY public.financing_provisioning_certification.id;


--
-- Name: leasing_destination; Type: TABLE; Schema: public; Owner: ccl
--

CREATE TABLE public.leasing_destination (
    id integer NOT NULL,
    template_id integer NOT NULL,
    destination character varying(255) NOT NULL,
    code character varying(8) NOT NULL
);



--
-- Name: leasing_destination_id_seq; Type: SEQUENCE; Schema: public; Owner: ccl
--

CREATE SEQUENCE public.leasing_destination_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: leasing_destination_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ccl
--

ALTER SEQUENCE public.leasing_destination_id_seq OWNED BY public.leasing_destination.id;


--
-- Name: leasing_import; Type: TABLE; Schema: public; Owner: ccl
--

CREATE TABLE public.leasing_import (
    id integer NOT NULL,
    application_import_id integer,
    created_by integer,
    updated_by integer,
    practice_id character varying(20) DEFAULT NULL::character varying,
    sf_bank_leasing character varying(255) DEFAULT NULL::character varying,
    sf_business_name character varying(255) DEFAULT NULL::character varying,
    sf_leasing_destination character varying(255) DEFAULT NULL::character varying,
    dcl_amount character varying(64) DEFAULT NULL::character varying,
    dcl_contract_signature_date character varying(10) DEFAULT NULL::character varying,
    dcl_resolution_date character varying(10) DEFAULT NULL::character varying,
    dcl_duration character varying(8) DEFAULT NULL::character varying,
    dcl_periodicity character varying(64) DEFAULT NULL::character varying,
    dcl_first_deadline character varying(10) DEFAULT NULL::character varying,
    dcl_fee_amount character varying(64) DEFAULT NULL::character varying,
    dcl_fee_percentage character varying(6) DEFAULT NULL::character varying,
    dcl_ransom_percentage character varying(6) DEFAULT NULL::character varying,
    dcl_rate character varying(6) DEFAULT NULL::character varying,
    "row" integer,
    created_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    updated_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    deleted_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone
);



--
-- Name: leasing_import_id_seq; Type: SEQUENCE; Schema: public; Owner: ccl
--

CREATE SEQUENCE public.leasing_import_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: leasing_import_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ccl
--

ALTER SEQUENCE public.leasing_import_id_seq OWNED BY public.leasing_import.id;


--
-- Name: legal_form; Type: TABLE; Schema: public; Owner: ccl
--

CREATE TABLE public.legal_form (
    id integer NOT NULL,
    template_id integer NOT NULL,
    name character varying(255) NOT NULL,
    reference_id integer NOT NULL,
    cooperative boolean NOT NULL
);



--
-- Name: legal_form_id_seq; Type: SEQUENCE; Schema: public; Owner: ccl
--

CREATE SEQUENCE public.legal_form_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: legal_form_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ccl
--

ALTER SEQUENCE public.legal_form_id_seq OWNED BY public.legal_form.id;


--
-- Name: login_failure; Type: TABLE; Schema: public; Owner: ccl
--

CREATE TABLE public.login_failure (
    id integer NOT NULL,
    user_id integer NOT NULL,
    remote_ip character varying(16) DEFAULT NULL::character varying,
    created_at timestamp(0) without time zone NOT NULL
);



--
-- Name: login_failure_id_seq; Type: SEQUENCE; Schema: public; Owner: ccl
--

CREATE SEQUENCE public.login_failure_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: login_failure_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ccl
--

ALTER SEQUENCE public.login_failure_id_seq OWNED BY public.login_failure.id;


--
-- Name: periodicity; Type: TABLE; Schema: public; Owner: ccl
--

CREATE TABLE public.periodicity (
    id integer NOT NULL,
    template_id integer NOT NULL,
    type character varying(25) NOT NULL,
    months integer NOT NULL
);



--
-- Name: periodicity_id_seq; Type: SEQUENCE; Schema: public; Owner: ccl
--

CREATE SEQUENCE public.periodicity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: periodicity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ccl
--

ALTER SEQUENCE public.periodicity_id_seq OWNED BY public.periodicity.id;


--
-- Name: protocol_number; Type: TABLE; Schema: public; Owner: ccl
--

CREATE TABLE public.protocol_number (
    id integer NOT NULL,
    created_by integer,
    updated_by integer,
    counter integer NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    deleted_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone
);



--
-- Name: protocol_number_id_seq; Type: SEQUENCE; Schema: public; Owner: ccl
--

CREATE SEQUENCE public.protocol_number_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: protocol_number_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ccl
--

ALTER SEQUENCE public.protocol_number_id_seq OWNED BY public.protocol_number.id;


--
-- Name: registry_file_audit; Type: TABLE; Schema: public; Owner: ccl
--

CREATE TABLE public.registry_file_audit (
    id integer NOT NULL,
    created_by integer,
    updated_by integer,
    file_name character varying(100) NOT NULL,
    progressive_number integer NOT NULL,
    type character varying(100) NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    deleted_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone
);



--
-- Name: registry_file_audit_id_seq; Type: SEQUENCE; Schema: public; Owner: ccl
--

CREATE SEQUENCE public.registry_file_audit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: registry_file_audit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ccl
--

ALTER SEQUENCE public.registry_file_audit_id_seq OWNED BY public.registry_file_audit.id;


--
-- Name: report_import; Type: TABLE; Schema: public; Owner: ccl
--

CREATE TABLE public.report_import (
    id integer NOT NULL,
    created_by integer,
    updated_by integer,
    year character varying(255) DEFAULT NULL::character varying,
    description character varying(255) DEFAULT NULL::character varying,
    filename character varying(255) NOT NULL,
    created_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    updated_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    deleted_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone
);



--
-- Name: report_import_id_seq; Type: SEQUENCE; Schema: public; Owner: ccl
--

CREATE SEQUENCE public.report_import_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: report_import_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ccl
--

ALTER SEQUENCE public.report_import_id_seq OWNED BY public.report_import.id;


--
-- Name: sessions; Type: TABLE; Schema: public; Owner: ccl
--

CREATE TABLE public.sessions (
    sess_id character varying(128) NOT NULL,
    sess_data bytea NOT NULL,
    sess_lifetime integer NOT NULL,
    sess_time integer NOT NULL
);



--
-- Name: user; Type: TABLE; Schema: public; Owner: ccl
--

CREATE TABLE public."user" (
    id integer NOT NULL,
    confidi_id integer,
    email character varying(180) NOT NULL,
    roles json NOT NULL,
    password character varying(255) NOT NULL,
    last_login timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    enabled boolean NOT NULL,
    update_password_token character varying(255) DEFAULT NULL::character varying,
    google_authenticator_secret character varying(255) DEFAULT NULL::character varying,
    expires_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    reset_password_token character varying(255) DEFAULT NULL::character varying,
    reset_password_requested_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    first_name character varying(255) DEFAULT NULL::character varying,
    last_name character varying(255) DEFAULT NULL::character varying,
    mobile_phone character varying(16) DEFAULT NULL::character varying,
    fiscal_id character varying(16) DEFAULT NULL::character varying,
    birth date,
    birth_country character varying(255) DEFAULT NULL::character varying,
    birth_region character varying(255) DEFAULT NULL::character varying,
    birth_province character varying(255) DEFAULT NULL::character varying,
    birth_city character varying(255) DEFAULT NULL::character varying
);



--
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: ccl
--

CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ccl
--

ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;


--
-- Name: user_password; Type: TABLE; Schema: public; Owner: ccl
--

CREATE TABLE public.user_password (
    id integer NOT NULL,
    user_id integer NOT NULL,
    password_hash character varying(255) NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    is_generated boolean NOT NULL
);



--
-- Name: user_password_id_seq; Type: SEQUENCE; Schema: public; Owner: ccl
--

CREATE SEQUENCE public.user_password_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: user_password_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ccl
--

ALTER SEQUENCE public.user_password_id_seq OWNED BY public.user_password.id;


--
-- Name: additional_contribution id; Type: DEFAULT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.additional_contribution ALTER COLUMN id SET DEFAULT nextval('public.additional_contribution_id_seq'::regclass);


--
-- Name: application id; Type: DEFAULT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.application ALTER COLUMN id SET DEFAULT nextval('public.application_id_seq'::regclass);


--
-- Name: application_attachment id; Type: DEFAULT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.application_attachment ALTER COLUMN id SET DEFAULT nextval('public.application_attachment_id_seq'::regclass);


--
-- Name: application_group id; Type: DEFAULT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.application_group ALTER COLUMN id SET DEFAULT nextval('public.application_group_id_seq'::regclass);


--
-- Name: application_import id; Type: DEFAULT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.application_import ALTER COLUMN id SET DEFAULT nextval('public.application_import_id_seq'::regclass);


--
-- Name: application_import_template id; Type: DEFAULT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.application_import_template ALTER COLUMN id SET DEFAULT nextval('public.application_import_template_id_seq'::regclass);


--
-- Name: application_message id; Type: DEFAULT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.application_message ALTER COLUMN id SET DEFAULT nextval('public.application_message_id_seq'::regclass);


--
-- Name: application_message_attachment id; Type: DEFAULT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.application_message_attachment ALTER COLUMN id SET DEFAULT nextval('public.application_message_attachment_id_seq'::regclass);


--
-- Name: application_status_log id; Type: DEFAULT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.application_status_log ALTER COLUMN id SET DEFAULT nextval('public.application_status_log_id_seq'::regclass);


--
-- Name: assurance_enterprise_import id; Type: DEFAULT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.assurance_enterprise_import ALTER COLUMN id SET DEFAULT nextval('public.assurance_enterprise_import_id_seq'::regclass);


--
-- Name: ateco_code id; Type: DEFAULT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.ateco_code ALTER COLUMN id SET DEFAULT nextval('public.ateco_code_id_seq'::regclass);


--
-- Name: bank id; Type: DEFAULT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.bank ALTER COLUMN id SET DEFAULT nextval('public.bank_id_seq'::regclass);


--
-- Name: bank_leasing id; Type: DEFAULT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.bank_leasing ALTER COLUMN id SET DEFAULT nextval('public.bank_leasing_id_seq'::regclass);


--
-- Name: city id; Type: DEFAULT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.city ALTER COLUMN id SET DEFAULT nextval('public.city_id_seq'::regclass);


--
-- Name: company_size id; Type: DEFAULT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.company_size ALTER COLUMN id SET DEFAULT nextval('public.company_size_id_seq'::regclass);


--
-- Name: confidi id; Type: DEFAULT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.confidi ALTER COLUMN id SET DEFAULT nextval('public.confidi_id_seq'::regclass);


--
-- Name: country id; Type: DEFAULT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.country ALTER COLUMN id SET DEFAULT nextval('public.country_id_seq'::regclass);


--
-- Name: financial_destination id; Type: DEFAULT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.financial_destination ALTER COLUMN id SET DEFAULT nextval('public.financial_destination_id_seq'::regclass);


--
-- Name: financing_import id; Type: DEFAULT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.financing_import ALTER COLUMN id SET DEFAULT nextval('public.financing_import_id_seq'::regclass);


--
-- Name: financing_provisioning_certification id; Type: DEFAULT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.financing_provisioning_certification ALTER COLUMN id SET DEFAULT nextval('public.financing_provisioning_certification_id_seq'::regclass);


--
-- Name: leasing_destination id; Type: DEFAULT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.leasing_destination ALTER COLUMN id SET DEFAULT nextval('public.leasing_destination_id_seq'::regclass);


--
-- Name: leasing_import id; Type: DEFAULT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.leasing_import ALTER COLUMN id SET DEFAULT nextval('public.leasing_import_id_seq'::regclass);


--
-- Name: legal_form id; Type: DEFAULT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.legal_form ALTER COLUMN id SET DEFAULT nextval('public.legal_form_id_seq'::regclass);


--
-- Name: login_failure id; Type: DEFAULT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.login_failure ALTER COLUMN id SET DEFAULT nextval('public.login_failure_id_seq'::regclass);


--
-- Name: periodicity id; Type: DEFAULT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.periodicity ALTER COLUMN id SET DEFAULT nextval('public.periodicity_id_seq'::regclass);


--
-- Name: protocol_number id; Type: DEFAULT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.protocol_number ALTER COLUMN id SET DEFAULT nextval('public.protocol_number_id_seq'::regclass);


--
-- Name: registry_file_audit id; Type: DEFAULT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.registry_file_audit ALTER COLUMN id SET DEFAULT nextval('public.registry_file_audit_id_seq'::regclass);


--
-- Name: report_import id; Type: DEFAULT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.report_import ALTER COLUMN id SET DEFAULT nextval('public.report_import_id_seq'::regclass);


--
-- Name: user id; Type: DEFAULT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);


--
-- Name: user_password id; Type: DEFAULT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.user_password ALTER COLUMN id SET DEFAULT nextval('public.user_password_id_seq'::regclass);


--
-- Name: additional_contribution additional_contribution_pkey; Type: CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.additional_contribution
    ADD CONSTRAINT additional_contribution_pkey PRIMARY KEY (id);


--
-- Name: application_attachment application_attachment_pkey; Type: CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.application_attachment
    ADD CONSTRAINT application_attachment_pkey PRIMARY KEY (id);


--
-- Name: application_group application_group_pkey; Type: CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.application_group
    ADD CONSTRAINT application_group_pkey PRIMARY KEY (id);


--
-- Name: application_import application_import_pkey; Type: CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.application_import
    ADD CONSTRAINT application_import_pkey PRIMARY KEY (id);


--
-- Name: application_import_template application_import_template_pkey; Type: CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.application_import_template
    ADD CONSTRAINT application_import_template_pkey PRIMARY KEY (id);


--
-- Name: application_message_attachment application_message_attachment_pkey; Type: CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.application_message_attachment
    ADD CONSTRAINT application_message_attachment_pkey PRIMARY KEY (id);


--
-- Name: application_message application_message_pkey; Type: CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.application_message
    ADD CONSTRAINT application_message_pkey PRIMARY KEY (id);


--
-- Name: application application_pkey; Type: CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.application
    ADD CONSTRAINT application_pkey PRIMARY KEY (id);


--
-- Name: application_status_log application_status_log_pkey; Type: CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.application_status_log
    ADD CONSTRAINT application_status_log_pkey PRIMARY KEY (id);


--
-- Name: assurance_enterprise_import assurance_enterprise_import_pkey; Type: CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.assurance_enterprise_import
    ADD CONSTRAINT assurance_enterprise_import_pkey PRIMARY KEY (id);


--
-- Name: ateco_code ateco_code_pkey; Type: CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.ateco_code
    ADD CONSTRAINT ateco_code_pkey PRIMARY KEY (id);


--
-- Name: bank_leasing bank_leasing_pkey; Type: CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.bank_leasing
    ADD CONSTRAINT bank_leasing_pkey PRIMARY KEY (id);


--
-- Name: bank bank_pkey; Type: CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.bank
    ADD CONSTRAINT bank_pkey PRIMARY KEY (id);


--
-- Name: city city_pkey; Type: CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (id);


--
-- Name: company_size company_size_pkey; Type: CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.company_size
    ADD CONSTRAINT company_size_pkey PRIMARY KEY (id);


--
-- Name: confidi confidi_pkey; Type: CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.confidi
    ADD CONSTRAINT confidi_pkey PRIMARY KEY (id);


--
-- Name: country country_pkey; Type: CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (id);


--
-- Name: doctrine_migration_versions doctrine_migration_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.doctrine_migration_versions
    ADD CONSTRAINT doctrine_migration_versions_pkey PRIMARY KEY (version);


--
-- Name: ext_log_entries ext_log_entries_pkey; Type: CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.ext_log_entries
    ADD CONSTRAINT ext_log_entries_pkey PRIMARY KEY (id);


--
-- Name: financial_destination financial_destination_pkey; Type: CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.financial_destination
    ADD CONSTRAINT financial_destination_pkey PRIMARY KEY (id);


--
-- Name: financing_import financing_import_pkey; Type: CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.financing_import
    ADD CONSTRAINT financing_import_pkey PRIMARY KEY (id);


--
-- Name: financing_provisioning_certification financing_provisioning_certification_pkey; Type: CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.financing_provisioning_certification
    ADD CONSTRAINT financing_provisioning_certification_pkey PRIMARY KEY (id);


--
-- Name: leasing_destination leasing_destination_pkey; Type: CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.leasing_destination
    ADD CONSTRAINT leasing_destination_pkey PRIMARY KEY (id);


--
-- Name: leasing_import leasing_import_pkey; Type: CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.leasing_import
    ADD CONSTRAINT leasing_import_pkey PRIMARY KEY (id);


--
-- Name: legal_form legal_form_pkey; Type: CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.legal_form
    ADD CONSTRAINT legal_form_pkey PRIMARY KEY (id);


--
-- Name: login_failure login_failure_pkey; Type: CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.login_failure
    ADD CONSTRAINT login_failure_pkey PRIMARY KEY (id);


--
-- Name: periodicity periodicity_pkey; Type: CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.periodicity
    ADD CONSTRAINT periodicity_pkey PRIMARY KEY (id);


--
-- Name: protocol_number protocol_number_pkey; Type: CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.protocol_number
    ADD CONSTRAINT protocol_number_pkey PRIMARY KEY (id);


--
-- Name: registry_file_audit registry_file_audit_pkey; Type: CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.registry_file_audit
    ADD CONSTRAINT registry_file_audit_pkey PRIMARY KEY (id);


--
-- Name: report_import report_import_pkey; Type: CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.report_import
    ADD CONSTRAINT report_import_pkey PRIMARY KEY (id);


--
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (sess_id);


--
-- Name: user_password user_password_pkey; Type: CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.user_password
    ADD CONSTRAINT user_password_pkey PRIMARY KEY (id);


--
-- Name: user user_pkey; Type: CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- Name: idx_15a11c5a5da0fb8; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_15a11c5a5da0fb8 ON public.bank_leasing USING btree (template_id);


--
-- Name: idx_18715e8bde12ab56; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_18715e8bde12ab56 ON public.application_import_template USING btree (created_by);


--
-- Name: idx_22b5df0816fe72e1; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_22b5df0816fe72e1 ON public.financing_provisioning_certification USING btree (updated_by);


--
-- Name: idx_22b5df0896f28344; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_22b5df0896f28344 ON public.financing_provisioning_certification USING btree (registry_file_audit_id);


--
-- Name: idx_22b5df08de12ab56; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_22b5df08de12ab56 ON public.financing_provisioning_certification USING btree (created_by);


--
-- Name: idx_26d3098b3e030acd; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_26d3098b3e030acd ON public.application_status_log USING btree (application_id);


--
-- Name: idx_26d3098bde12ab56; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_26d3098bde12ab56 ON public.application_status_log USING btree (created_by);


--
-- Name: idx_2a1430d516fe72e1; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_2a1430d516fe72e1 ON public.leasing_import USING btree (updated_by);


--
-- Name: idx_2a1430d532a319d8; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_2a1430d532a319d8 ON public.leasing_import USING btree (application_import_id);


--
-- Name: idx_2a1430d5de12ab56; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_2a1430d5de12ab56 ON public.leasing_import USING btree (created_by);


--
-- Name: idx_2d5b02345da0fb8; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_2d5b02345da0fb8 ON public.city USING btree (template_id);


--
-- Name: idx_2d7dc2d816fe72e1; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_2d7dc2d816fe72e1 ON public.application_import USING btree (updated_by);


--
-- Name: idx_2d7dc2d85da0fb8; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_2d7dc2d85da0fb8 ON public.application_import USING btree (template_id);


--
-- Name: idx_2d7dc2d8de12ab56; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_2d7dc2d8de12ab56 ON public.application_import USING btree (created_by);


--
-- Name: idx_2d7dc2d8ebe07992; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_2d7dc2d8ebe07992 ON public.application_import USING btree (confidi_id);


--
-- Name: idx_2e9f776516fe72e1; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_2e9f776516fe72e1 ON public.assurance_enterprise_import USING btree (updated_by);


--
-- Name: idx_2e9f776532a319d8; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_2e9f776532a319d8 ON public.assurance_enterprise_import USING btree (application_import_id);


--
-- Name: idx_2e9f7765de12ab56; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_2e9f7765de12ab56 ON public.assurance_enterprise_import USING btree (created_by);


--
-- Name: idx_31b61dbca76ed395; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_31b61dbca76ed395 ON public.login_failure USING btree (user_id);


--
-- Name: idx_4bb56f3d5da0fb8; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_4bb56f3d5da0fb8 ON public.leasing_destination USING btree (template_id);


--
-- Name: idx_5373c9665da0fb8; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_5373c9665da0fb8 ON public.country USING btree (template_id);


--
-- Name: idx_5d03354c16fe72e1; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_5d03354c16fe72e1 ON public.application_message USING btree (updated_by);


--
-- Name: idx_5d03354c3e030acd; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_5d03354c3e030acd ON public.application_message USING btree (application_id);


--
-- Name: idx_5d03354cde12ab56; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_5d03354cde12ab56 ON public.application_message USING btree (created_by);


--
-- Name: idx_7cf1c4365da0fb8; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_7cf1c4365da0fb8 ON public.financial_destination USING btree (template_id);


--
-- Name: idx_7ff313f85da0fb8; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_7ff313f85da0fb8 ON public.legal_form USING btree (template_id);


--
-- Name: idx_8d93d649ebe07992; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_8d93d649ebe07992 ON public."user" USING btree (confidi_id);


--
-- Name: idx_8e54a3bf16fe72e1; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_8e54a3bf16fe72e1 ON public.application_group USING btree (updated_by);


--
-- Name: idx_8e54a3bf96f28344; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_8e54a3bf96f28344 ON public.application_group USING btree (registry_file_audit_id);


--
-- Name: idx_8e54a3bfde12ab56; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_8e54a3bfde12ab56 ON public.application_group USING btree (created_by);


--
-- Name: idx_8e54a3bfebe07992; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_8e54a3bfebe07992 ON public.application_group USING btree (confidi_id);


--
-- Name: idx_96d951e816fe72e1; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_96d951e816fe72e1 ON public.additional_contribution USING btree (updated_by);


--
-- Name: idx_96d951e83e030acd; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_96d951e83e030acd ON public.additional_contribution USING btree (application_id);


--
-- Name: idx_96d951e896f28344; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_96d951e896f28344 ON public.additional_contribution USING btree (registry_file_audit_id);


--
-- Name: idx_96d951e8de12ab56; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_96d951e8de12ab56 ON public.additional_contribution USING btree (created_by);


--
-- Name: idx_a45bddc116fe72e1; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_a45bddc116fe72e1 ON public.application USING btree (updated_by);


--
-- Name: idx_a45bddc132a319d8; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_a45bddc132a319d8 ON public.application USING btree (application_import_id);


--
-- Name: idx_a45bddc1416f0654; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_a45bddc1416f0654 ON public.application USING btree (application_group_id);


--
-- Name: idx_a45bddc196f28344; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_a45bddc196f28344 ON public.application USING btree (registry_file_audit_id);


--
-- Name: idx_a45bddc1de12ab56; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_a45bddc1de12ab56 ON public.application USING btree (created_by);


--
-- Name: idx_a45bddc1ebe07992; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_a45bddc1ebe07992 ON public.application USING btree (confidi_id);


--
-- Name: idx_b43d412916fe72e1; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_b43d412916fe72e1 ON public.financing_import USING btree (updated_by);


--
-- Name: idx_b43d412932a319d8; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_b43d412932a319d8 ON public.financing_import USING btree (application_import_id);


--
-- Name: idx_b43d4129de12ab56; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_b43d4129de12ab56 ON public.financing_import USING btree (created_by);


--
-- Name: idx_b4ad3e845da0fb8; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_b4ad3e845da0fb8 ON public.company_size USING btree (template_id);


--
-- Name: idx_b4bd1b8216fe72e1; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_b4bd1b8216fe72e1 ON public.report_import USING btree (updated_by);


--
-- Name: idx_b4bd1b82de12ab56; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_b4bd1b82de12ab56 ON public.report_import USING btree (created_by);


--
-- Name: idx_bf32314516fe72e1; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_bf32314516fe72e1 ON public.application_message_attachment USING btree (updated_by);


--
-- Name: idx_bf32314524f922c5; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_bf32314524f922c5 ON public.application_message_attachment USING btree (application_message_id);


--
-- Name: idx_bf323145de12ab56; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_bf323145de12ab56 ON public.application_message_attachment USING btree (created_by);


--
-- Name: idx_c53cc5bc5da0fb8; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_c53cc5bc5da0fb8 ON public.periodicity USING btree (template_id);


--
-- Name: idx_d54fa2d5a76ed395; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_d54fa2d5a76ed395 ON public.user_password USING btree (user_id);


--
-- Name: idx_d5f09ff816fe72e1; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_d5f09ff816fe72e1 ON public.registry_file_audit USING btree (updated_by);


--
-- Name: idx_d5f09ff8de12ab56; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_d5f09ff8de12ab56 ON public.registry_file_audit USING btree (created_by);


--
-- Name: idx_d860bf7a5da0fb8; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_d860bf7a5da0fb8 ON public.bank USING btree (template_id);


--
-- Name: idx_dbec1ae616fe72e1; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_dbec1ae616fe72e1 ON public.protocol_number USING btree (updated_by);


--
-- Name: idx_dbec1ae6de12ab56; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_dbec1ae6de12ab56 ON public.protocol_number USING btree (created_by);


--
-- Name: idx_edce8573e030acd; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_edce8573e030acd ON public.application_attachment USING btree (application_id);


--
-- Name: idx_edce857896dbbde; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_edce857896dbbde ON public.application_attachment USING btree (updated_by_id);


--
-- Name: idx_edce857b03a8386; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX idx_edce857b03a8386 ON public.application_attachment USING btree (created_by_id);


--
-- Name: log_class_lookup_idx; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX log_class_lookup_idx ON public.ext_log_entries USING btree (object_class);


--
-- Name: log_date_lookup_idx; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX log_date_lookup_idx ON public.ext_log_entries USING btree (logged_at);


--
-- Name: log_user_lookup_idx; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX log_user_lookup_idx ON public.ext_log_entries USING btree (username);


--
-- Name: log_version_lookup_idx; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX log_version_lookup_idx ON public.ext_log_entries USING btree (object_id, object_class, version);


--
-- Name: sess_lifetime_idx; Type: INDEX; Schema: public; Owner: ccl
--

CREATE INDEX sess_lifetime_idx ON public.sessions USING btree (sess_lifetime);


--
-- Name: uniq_18715e8b6d6315cc; Type: INDEX; Schema: public; Owner: ccl
--

CREATE UNIQUE INDEX uniq_18715e8b6d6315cc ON public.application_import_template USING btree (revision);


--
-- Name: uniq_22b5df083e030acd; Type: INDEX; Schema: public; Owner: ccl
--

CREATE UNIQUE INDEX uniq_22b5df083e030acd ON public.financing_provisioning_certification USING btree (application_id);


--
-- Name: uniq_8d93d649e7927c74; Type: INDEX; Schema: public; Owner: ccl
--

CREATE UNIQUE INDEX uniq_8d93d649e7927c74 ON public."user" USING btree (email);


--
-- Name: bank_leasing fk_15a11c5a5da0fb8; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.bank_leasing
    ADD CONSTRAINT fk_15a11c5a5da0fb8 FOREIGN KEY (template_id) REFERENCES public.application_import_template(id) ON DELETE CASCADE;


--
-- Name: application_import_template fk_18715e8bde12ab56; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.application_import_template
    ADD CONSTRAINT fk_18715e8bde12ab56 FOREIGN KEY (created_by) REFERENCES public."user"(id) ON DELETE SET NULL;


--
-- Name: financing_provisioning_certification fk_22b5df0816fe72e1; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.financing_provisioning_certification
    ADD CONSTRAINT fk_22b5df0816fe72e1 FOREIGN KEY (updated_by) REFERENCES public."user"(id) ON DELETE SET NULL;


--
-- Name: financing_provisioning_certification fk_22b5df083e030acd; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.financing_provisioning_certification
    ADD CONSTRAINT fk_22b5df083e030acd FOREIGN KEY (application_id) REFERENCES public.application(id);


--
-- Name: financing_provisioning_certification fk_22b5df0896f28344; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.financing_provisioning_certification
    ADD CONSTRAINT fk_22b5df0896f28344 FOREIGN KEY (registry_file_audit_id) REFERENCES public.registry_file_audit(id);


--
-- Name: financing_provisioning_certification fk_22b5df08de12ab56; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.financing_provisioning_certification
    ADD CONSTRAINT fk_22b5df08de12ab56 FOREIGN KEY (created_by) REFERENCES public."user"(id) ON DELETE SET NULL;


--
-- Name: application_status_log fk_26d3098b3e030acd; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.application_status_log
    ADD CONSTRAINT fk_26d3098b3e030acd FOREIGN KEY (application_id) REFERENCES public.application(id);


--
-- Name: application_status_log fk_26d3098bde12ab56; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.application_status_log
    ADD CONSTRAINT fk_26d3098bde12ab56 FOREIGN KEY (created_by) REFERENCES public."user"(id);


--
-- Name: leasing_import fk_2a1430d516fe72e1; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.leasing_import
    ADD CONSTRAINT fk_2a1430d516fe72e1 FOREIGN KEY (updated_by) REFERENCES public."user"(id) ON DELETE SET NULL;


--
-- Name: leasing_import fk_2a1430d532a319d8; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.leasing_import
    ADD CONSTRAINT fk_2a1430d532a319d8 FOREIGN KEY (application_import_id) REFERENCES public.application_import(id);


--
-- Name: leasing_import fk_2a1430d5de12ab56; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.leasing_import
    ADD CONSTRAINT fk_2a1430d5de12ab56 FOREIGN KEY (created_by) REFERENCES public."user"(id) ON DELETE SET NULL;


--
-- Name: city fk_2d5b02345da0fb8; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.city
    ADD CONSTRAINT fk_2d5b02345da0fb8 FOREIGN KEY (template_id) REFERENCES public.application_import_template(id) ON DELETE CASCADE;


--
-- Name: application_import fk_2d7dc2d816fe72e1; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.application_import
    ADD CONSTRAINT fk_2d7dc2d816fe72e1 FOREIGN KEY (updated_by) REFERENCES public."user"(id) ON DELETE SET NULL;


--
-- Name: application_import fk_2d7dc2d85da0fb8; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.application_import
    ADD CONSTRAINT fk_2d7dc2d85da0fb8 FOREIGN KEY (template_id) REFERENCES public.application_import_template(id) ON DELETE SET NULL;


--
-- Name: application_import fk_2d7dc2d8de12ab56; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.application_import
    ADD CONSTRAINT fk_2d7dc2d8de12ab56 FOREIGN KEY (created_by) REFERENCES public."user"(id) ON DELETE SET NULL;


--
-- Name: application_import fk_2d7dc2d8ebe07992; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.application_import
    ADD CONSTRAINT fk_2d7dc2d8ebe07992 FOREIGN KEY (confidi_id) REFERENCES public.confidi(id);


--
-- Name: assurance_enterprise_import fk_2e9f776516fe72e1; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.assurance_enterprise_import
    ADD CONSTRAINT fk_2e9f776516fe72e1 FOREIGN KEY (updated_by) REFERENCES public."user"(id) ON DELETE SET NULL;


--
-- Name: assurance_enterprise_import fk_2e9f776532a319d8; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.assurance_enterprise_import
    ADD CONSTRAINT fk_2e9f776532a319d8 FOREIGN KEY (application_import_id) REFERENCES public.application_import(id);


--
-- Name: assurance_enterprise_import fk_2e9f7765de12ab56; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.assurance_enterprise_import
    ADD CONSTRAINT fk_2e9f7765de12ab56 FOREIGN KEY (created_by) REFERENCES public."user"(id) ON DELETE SET NULL;


--
-- Name: login_failure fk_31b61dbca76ed395; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.login_failure
    ADD CONSTRAINT fk_31b61dbca76ed395 FOREIGN KEY (user_id) REFERENCES public."user"(id);


--
-- Name: leasing_destination fk_4bb56f3d5da0fb8; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.leasing_destination
    ADD CONSTRAINT fk_4bb56f3d5da0fb8 FOREIGN KEY (template_id) REFERENCES public.application_import_template(id) ON DELETE CASCADE;


--
-- Name: country fk_5373c9665da0fb8; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT fk_5373c9665da0fb8 FOREIGN KEY (template_id) REFERENCES public.application_import_template(id) ON DELETE CASCADE;


--
-- Name: application_message fk_5d03354c16fe72e1; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.application_message
    ADD CONSTRAINT fk_5d03354c16fe72e1 FOREIGN KEY (updated_by) REFERENCES public."user"(id);


--
-- Name: application_message fk_5d03354c3e030acd; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.application_message
    ADD CONSTRAINT fk_5d03354c3e030acd FOREIGN KEY (application_id) REFERENCES public.application(id);


--
-- Name: application_message fk_5d03354cde12ab56; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.application_message
    ADD CONSTRAINT fk_5d03354cde12ab56 FOREIGN KEY (created_by) REFERENCES public."user"(id);


--
-- Name: financial_destination fk_7cf1c4365da0fb8; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.financial_destination
    ADD CONSTRAINT fk_7cf1c4365da0fb8 FOREIGN KEY (template_id) REFERENCES public.application_import_template(id) ON DELETE CASCADE;


--
-- Name: legal_form fk_7ff313f85da0fb8; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.legal_form
    ADD CONSTRAINT fk_7ff313f85da0fb8 FOREIGN KEY (template_id) REFERENCES public.application_import_template(id) ON DELETE CASCADE;


--
-- Name: user fk_8d93d649ebe07992; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT fk_8d93d649ebe07992 FOREIGN KEY (confidi_id) REFERENCES public.confidi(id);


--
-- Name: application_group fk_8e54a3bf16fe72e1; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.application_group
    ADD CONSTRAINT fk_8e54a3bf16fe72e1 FOREIGN KEY (updated_by) REFERENCES public."user"(id);


--
-- Name: application_group fk_8e54a3bf96f28344; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.application_group
    ADD CONSTRAINT fk_8e54a3bf96f28344 FOREIGN KEY (registry_file_audit_id) REFERENCES public.registry_file_audit(id);


--
-- Name: application_group fk_8e54a3bfde12ab56; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.application_group
    ADD CONSTRAINT fk_8e54a3bfde12ab56 FOREIGN KEY (created_by) REFERENCES public."user"(id);


--
-- Name: application_group fk_8e54a3bfebe07992; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.application_group
    ADD CONSTRAINT fk_8e54a3bfebe07992 FOREIGN KEY (confidi_id) REFERENCES public.confidi(id);


--
-- Name: additional_contribution fk_96d951e816fe72e1; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.additional_contribution
    ADD CONSTRAINT fk_96d951e816fe72e1 FOREIGN KEY (updated_by) REFERENCES public."user"(id) ON DELETE SET NULL;


--
-- Name: additional_contribution fk_96d951e83e030acd; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.additional_contribution
    ADD CONSTRAINT fk_96d951e83e030acd FOREIGN KEY (application_id) REFERENCES public.application(id);


--
-- Name: additional_contribution fk_96d951e896f28344; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.additional_contribution
    ADD CONSTRAINT fk_96d951e896f28344 FOREIGN KEY (registry_file_audit_id) REFERENCES public.registry_file_audit(id);


--
-- Name: additional_contribution fk_96d951e8de12ab56; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.additional_contribution
    ADD CONSTRAINT fk_96d951e8de12ab56 FOREIGN KEY (created_by) REFERENCES public."user"(id) ON DELETE SET NULL;


--
-- Name: application fk_a45bddc116fe72e1; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.application
    ADD CONSTRAINT fk_a45bddc116fe72e1 FOREIGN KEY (updated_by) REFERENCES public."user"(id) ON DELETE SET NULL;


--
-- Name: application fk_a45bddc132a319d8; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.application
    ADD CONSTRAINT fk_a45bddc132a319d8 FOREIGN KEY (application_import_id) REFERENCES public.application_import(id);


--
-- Name: application fk_a45bddc1416f0654; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.application
    ADD CONSTRAINT fk_a45bddc1416f0654 FOREIGN KEY (application_group_id) REFERENCES public.application_group(id);


--
-- Name: application fk_a45bddc196f28344; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.application
    ADD CONSTRAINT fk_a45bddc196f28344 FOREIGN KEY (registry_file_audit_id) REFERENCES public.registry_file_audit(id);


--
-- Name: application fk_a45bddc1de12ab56; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.application
    ADD CONSTRAINT fk_a45bddc1de12ab56 FOREIGN KEY (created_by) REFERENCES public."user"(id) ON DELETE SET NULL;


--
-- Name: application fk_a45bddc1ebe07992; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.application
    ADD CONSTRAINT fk_a45bddc1ebe07992 FOREIGN KEY (confidi_id) REFERENCES public.confidi(id);


--
-- Name: financing_import fk_b43d412916fe72e1; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.financing_import
    ADD CONSTRAINT fk_b43d412916fe72e1 FOREIGN KEY (updated_by) REFERENCES public."user"(id) ON DELETE SET NULL;


--
-- Name: financing_import fk_b43d412932a319d8; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.financing_import
    ADD CONSTRAINT fk_b43d412932a319d8 FOREIGN KEY (application_import_id) REFERENCES public.application_import(id);


--
-- Name: financing_import fk_b43d4129de12ab56; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.financing_import
    ADD CONSTRAINT fk_b43d4129de12ab56 FOREIGN KEY (created_by) REFERENCES public."user"(id) ON DELETE SET NULL;


--
-- Name: company_size fk_b4ad3e845da0fb8; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.company_size
    ADD CONSTRAINT fk_b4ad3e845da0fb8 FOREIGN KEY (template_id) REFERENCES public.application_import_template(id) ON DELETE CASCADE;


--
-- Name: report_import fk_b4bd1b8216fe72e1; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.report_import
    ADD CONSTRAINT fk_b4bd1b8216fe72e1 FOREIGN KEY (updated_by) REFERENCES public."user"(id) ON DELETE SET NULL;


--
-- Name: report_import fk_b4bd1b82de12ab56; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.report_import
    ADD CONSTRAINT fk_b4bd1b82de12ab56 FOREIGN KEY (created_by) REFERENCES public."user"(id) ON DELETE SET NULL;


--
-- Name: application_message_attachment fk_bf32314516fe72e1; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.application_message_attachment
    ADD CONSTRAINT fk_bf32314516fe72e1 FOREIGN KEY (updated_by) REFERENCES public."user"(id);


--
-- Name: application_message_attachment fk_bf32314524f922c5; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.application_message_attachment
    ADD CONSTRAINT fk_bf32314524f922c5 FOREIGN KEY (application_message_id) REFERENCES public.application_message(id);


--
-- Name: application_message_attachment fk_bf323145de12ab56; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.application_message_attachment
    ADD CONSTRAINT fk_bf323145de12ab56 FOREIGN KEY (created_by) REFERENCES public."user"(id);


--
-- Name: periodicity fk_c53cc5bc5da0fb8; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.periodicity
    ADD CONSTRAINT fk_c53cc5bc5da0fb8 FOREIGN KEY (template_id) REFERENCES public.application_import_template(id) ON DELETE CASCADE;


--
-- Name: user_password fk_d54fa2d5a76ed395; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.user_password
    ADD CONSTRAINT fk_d54fa2d5a76ed395 FOREIGN KEY (user_id) REFERENCES public."user"(id);


--
-- Name: registry_file_audit fk_d5f09ff816fe72e1; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.registry_file_audit
    ADD CONSTRAINT fk_d5f09ff816fe72e1 FOREIGN KEY (updated_by) REFERENCES public."user"(id) ON DELETE SET NULL;


--
-- Name: registry_file_audit fk_d5f09ff8de12ab56; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.registry_file_audit
    ADD CONSTRAINT fk_d5f09ff8de12ab56 FOREIGN KEY (created_by) REFERENCES public."user"(id) ON DELETE SET NULL;


--
-- Name: bank fk_d860bf7a5da0fb8; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.bank
    ADD CONSTRAINT fk_d860bf7a5da0fb8 FOREIGN KEY (template_id) REFERENCES public.application_import_template(id) ON DELETE CASCADE;


--
-- Name: protocol_number fk_dbec1ae616fe72e1; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.protocol_number
    ADD CONSTRAINT fk_dbec1ae616fe72e1 FOREIGN KEY (updated_by) REFERENCES public."user"(id) ON DELETE SET NULL;


--
-- Name: protocol_number fk_dbec1ae6de12ab56; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.protocol_number
    ADD CONSTRAINT fk_dbec1ae6de12ab56 FOREIGN KEY (created_by) REFERENCES public."user"(id) ON DELETE SET NULL;


--
-- Name: application_attachment fk_edce8573e030acd; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.application_attachment
    ADD CONSTRAINT fk_edce8573e030acd FOREIGN KEY (application_id) REFERENCES public.application(id);


--
-- Name: application_attachment fk_edce857896dbbde; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.application_attachment
    ADD CONSTRAINT fk_edce857896dbbde FOREIGN KEY (updated_by_id) REFERENCES public."user"(id);


--
-- Name: application_attachment fk_edce857b03a8386; Type: FK CONSTRAINT; Schema: public; Owner: ccl
--

ALTER TABLE ONLY public.application_attachment
    ADD CONSTRAINT fk_edce857b03a8386 FOREIGN KEY (created_by_id) REFERENCES public."user"(id);


--
-- PostgreSQL database dump complete
--

