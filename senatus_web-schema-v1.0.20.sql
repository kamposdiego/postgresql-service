--
-- PostgreSQL database dump
--

-- Dumped from database version 13.7 (Debian 13.7-1.pgdg110+1)
-- Dumped by pg_dump version 13.7 (Debian 13.7-1.pgdg110+1)

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

--
-- Name: senatus_web; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE senatus_web WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE senatus_web OWNER TO postgres;

\connect senatus_web

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

--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- Name: concentrator_conection_types; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.concentrator_conection_types AS ENUM (
    'RADIUS',
    'PPPOE',
    'HOTSPOT'
);


ALTER TYPE public.concentrator_conection_types OWNER TO postgres;

--
-- Name: concentrator_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.concentrator_type AS ENUM (
    'MIKROTIK',
    'MIKROTIK_SNMP',
    'VYOS',
    'OUTRO'
);


ALTER TYPE public.concentrator_type OWNER TO postgres;

--
-- Name: contact_channel_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.contact_channel_type AS ENUM (
    'EMAIL',
    'REDES SOCIAIS',
    'PRESENCIAL',
    'CARTA',
    'LIGACAO TELEFONICA',
    'SMS',
    'WHATSAPP'
);


ALTER TYPE public.contact_channel_type OWNER TO postgres;

--
-- Name: contact_reason_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.contact_reason_type AS ENUM (
    'PROBLEMA TECNICO',
    'QUESTAO FINANCEIRA',
    'RECLAMACAO',
    'ELOGIO',
    'SUGESTAO',
    'BUSCAR INFORMACOES SOBRE PRODUTOS E/OU SERVICOS',
    'CONTRATAR SERVICO',
    'CANCELAR SERVICO'
);


ALTER TYPE public.contact_reason_type OWNER TO postgres;

--
-- Name: credit_card_flag_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.credit_card_flag_type AS ENUM (
    'VISA',
    'MASTERCARD',
    'ELO',
    'AMERICAN EXPRESS',
    'DINERS CLUB',
    'HIPERCARD'
);


ALTER TYPE public.credit_card_flag_type OWNER TO postgres;

--
-- Name: debit_card_flag_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.debit_card_flag_type AS ENUM (
    'VISA',
    'MASTERCARD',
    'ELO'
);


ALTER TYPE public.debit_card_flag_type OWNER TO postgres;

--
-- Name: internet_connection_technology_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.internet_connection_technology_type AS ENUM (
    'CABO PARA METALICO',
    'REDE HIBRIDA',
    'FIBRA OPTICA',
    'SEM FIO'
);


ALTER TYPE public.internet_connection_technology_type OWNER TO postgres;

--
-- Name: internet_customer_contact_phone_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.internet_customer_contact_phone_type AS ENUM (
    'SMS',
    'WHATSAPP'
);


ALTER TYPE public.internet_customer_contact_phone_type OWNER TO postgres;

--
-- Name: internet_customer_contact_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.internet_customer_contact_type AS ENUM (
    'TELEFONE',
    'EMAIL'
);


ALTER TYPE public.internet_customer_contact_type OWNER TO postgres;

--
-- Name: internet_customer_legal_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.internet_customer_legal_type AS ENUM (
    'PESSOA FISICA',
    'PESSOA JURIDICA'
);


ALTER TYPE public.internet_customer_legal_type OWNER TO postgres;

--
-- Name: payment_methods_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.payment_methods_type AS ENUM (
    'DINHEIRO',
    'CARTAO DE CREDITO',
    'CARTAO DE DEBITO',
    'TRANSFERENCIA BANCARIA',
    'PAGAMENTO NO SISTEMA FINANCEIRO'
);


ALTER TYPE public.payment_methods_type OWNER TO postgres;

--
-- Name: phone_ddd_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.phone_ddd_type AS ENUM (
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '21',
    '22',
    '24',
    '27',
    '28',
    '31',
    '32',
    '33',
    '34',
    '35',
    '37',
    '38',
    '41',
    '42',
    '43',
    '44',
    '45',
    '46',
    '47',
    '48',
    '49',
    '51',
    '53',
    '54',
    '55',
    '61',
    '62',
    '63',
    '64',
    '65',
    '66',
    '67',
    '68',
    '69',
    '71',
    '73',
    '74',
    '75',
    '77',
    '79',
    '81',
    '82',
    '83',
    '84',
    '85',
    '86',
    '87',
    '88',
    '89',
    '91',
    '92',
    '93',
    '94',
    '95',
    '96',
    '97',
    '98',
    '99'
);


ALTER TYPE public.phone_ddd_type OWNER TO postgres;

--
-- Name: public_place_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.public_place_type AS ENUM (
    'ACESSOACAMPAMENTO',
    'ACESSO LOCAL',
    'ADRO',
    'AREA ESPECIAL',
    'AEROPORTO',
    'ALAMEDA',
    'AVENIDA MARGINAL DIREITA',
    'AVENIDA MARGINAL ESQUERDA',
    'ANEL VIARIO',
    'ANTIGA ESTRADA',
    'ARTERIA',
    'ALTO',
    'ATALHO',
    'AREA VERDE',
    'AVENIDA',
    'AVENIDA CONTORNO',
    'AVENIDA MARGINAL',
    'AVENIDA VELHA',
    'BALNEARIO',
    'BECO',
    'BURACO',
    'BELVEDERE',
    'BLOCO',
    'BALAO',
    'BLOCOS',
    'BULEVAR',
    'BOSQUE',
    'BOULEVARD',
    'BAIXA',
    'CAIS',
    'CALCADA',
    'CAMINHO',
    'CANAL',
    'CHACARA',
    'CHAPADAO',
    'CICLOVIA',
    'CIRCULAR',
    'CONJUNTO',
    'CONJUNTO MUTIRAO',
    'COMPLEXO VIARIO',
    'COLONIA',
    'COMUNIDADE',
    'CONDOMINIO',
    'CORREDOR',
    'CAMPO',
    'CORREGO',
    'CONTORNO',
    'DESCIDA',
    'DESVIO',
    'DISTRITO',
    'ENTRE BLOCO',
    'ESTRADA INTERMUNICIPAL',
    'ENSEADA',
    'ENTRADA PARTICULAR',
    'ENTRE QUADRA',
    'ESCADA',
    'ESCADARIA',
    'ESTRADA ESTADUAL',
    'ESTRADA VICINAL',
    'ESTRADA DE LIGACAO',
    'ESTRADA MUNICIPAL',
    'ESPLANADA',
    'ESTRADA DE SERVIDAO',
    'ESTRADA',
    'ESTRADA VELHA',
    'ESTRADA ANTIGA',
    'ESTACAO',
    'ESTADIO',
    'ESTANCIA',
    'ESTRADA PARTICULAR',
    'ESTACIONAMENTO',
    'EVANGELICA',
    'ELEVADAEIXO INDUSTRIAL',
    'FAVELA',
    'FAZENDA',
    'FERROVIA',
    'FONTE',
    'FEIRA',
    'FORTE',
    'GALERIA',
    'GRANJA',
    'NUCLEO HABITACIONAL',
    'ILHA',
    'INDETERMINADO',
    'ILHOTA',
    'JARDIM',
    'JARDINETE',
    'LADEIRA',
    'LAGOA',
    'LAGO',
    'LOTEAMENTO',
    'LARGO',
    'LOTE',
    'MERCADO',
    'MARINA',
    'MODULO',
    'PROJECAO',
    'MORRO',
    'MONTE',
    'NUCLEO',
    'NUCLEO RURAL',
    'OUTEIRO',
    'PARALELA',
    'PASSEIO',
    'PATIO',
    'PRACA',
    'PRACA DE ESPORTES',
    'PARADA',
    'PARADOURO',
    'PONTA',
    'PRAIA',
    'PROLONGAMENTO',
    'PARQUE MUNICIPAL',
    'PARQUE',
    'PARQUE RESIDENCIAL',
    'PASSARELA',
    'PASSAGEM',
    'PASSAGEM DE PEDESTRE',
    'PASSAGEM SUBTERRANEA',
    'PONTE',
    'PORTO',
    'QUADRA',
    'QUINTA',
    'QUINTAS',
    'RUA',
    'RUA INTEGRACAO',
    'RUA DE LIGACAO',
    'RUA PARTICULAR',
    'RUA VELHA',
    'RAMAL',
    'RECREIO',
    'RECANTO',
    'RETIRO',
    'RESIDENCIAL',
    'RETA',
    'RUELA',
    'RAMPA',
    'RODO ANEL',
    'RODOVIA',
    'ROTULA',
    'RUA DE PEDESTRE',
    'MARGEM',
    'RETORNO',
    'ROTATORIA',
    'SEGUNDA AVENIDA',
    'SITIO',
    'SERVIDAO',
    'SETOR',
    'SUBIDA',
    'TRINCHEIRA',
    'TERMINAL',
    'TRECHO',
    'TREVO',
    'TUNEL',
    'TRAVESSA',
    'TRAVESSA PARTICULAR',
    'TRAVESSA VELHA',
    'UNIDADE',
    'VIA',
    'VIA COLETORAVIA LOCALVIA DE ACESSO',
    'VALA',
    'VIA COSTEIRA',
    'VIADUTO',
    'VIA EXPRESSA',
    'VEREDA',
    'VIA ELEVADOVILA',
    'VIELA',
    'VALE',
    'VIA LITORANEA',
    'VIA DE PEDESTRE',
    'VARIANTE',
    'ZIGUE-ZAGUE'
);


ALTER TYPE public.public_place_type OWNER TO postgres;

--
-- Name: telecommunications_equipment_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.telecommunications_equipment_type AS ENUM (
    'EQUIPAMENTO CLIENTE',
    'EQUIPAMENTO INFRAESTRUTURA'
);


ALTER TYPE public.telecommunications_equipment_type OWNER TO postgres;

--
-- Name: work_order_service_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.work_order_service_type AS ENUM (
    'INSTALACAO',
    'MUDANCA DE ENDERECO',
    'MIGRACAO DE PLANO',
    'CANCELAMENTO DE PLANO',
    'SERVICO PREVENTIVO',
    'SERVICO CORRETIVO',
    'SERVICO INFRAESTRUTURA'
);


ALTER TYPE public.work_order_service_type OWNER TO postgres;

--
-- Name: work_order_state_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.work_order_state_type AS ENUM (
    'ORDEM DE SERVICO CRIADA',
    'ORDEM DE SERVICO AGUARDANDO DEFINICAO DE EXECUTOR',
    'ORDEM DE SERVICO AGUARDANDO EXECUCAO',
    'ORDEM DE SERVICO EM EXECUCAO',
    'ORDEM DE SERVICO COM PROBLEMA DURANTE EXECUCAO',
    'ORDEM DE SERVICO FINALIZADA COM SUCESSO',
    'ORDEM DE SERVICO FINALIZADA COM ERRO',
    'RESULTADO DA ORDEM DE SERVICO ACEITO PELO CLIENTE',
    'RESULTADO DA ORDEM DE SERVICO DEVOLVIDA PELO CLIENTE'
);


ALTER TYPE public.work_order_state_type OWNER TO postgres;

--
-- Name: CAST (character varying AS public.concentrator_conection_types); Type: CAST; Schema: -; Owner: -
--

CREATE CAST (character varying AS public.concentrator_conection_types) WITH INOUT AS ASSIGNMENT;


--
-- Name: CAST (character varying AS public.concentrator_type); Type: CAST; Schema: -; Owner: -
--

CREATE CAST (character varying AS public.concentrator_type) WITH INOUT AS ASSIGNMENT;


--
-- Name: CAST (character varying AS public.contact_channel_type); Type: CAST; Schema: -; Owner: -
--

CREATE CAST (character varying AS public.contact_channel_type) WITH INOUT AS ASSIGNMENT;


--
-- Name: CAST (character varying AS public.contact_reason_type); Type: CAST; Schema: -; Owner: -
--

CREATE CAST (character varying AS public.contact_reason_type) WITH INOUT AS ASSIGNMENT;


--
-- Name: CAST (character varying AS public.credit_card_flag_type); Type: CAST; Schema: -; Owner: -
--

CREATE CAST (character varying AS public.credit_card_flag_type) WITH INOUT AS ASSIGNMENT;


--
-- Name: CAST (character varying AS public.debit_card_flag_type); Type: CAST; Schema: -; Owner: -
--

CREATE CAST (character varying AS public.debit_card_flag_type) WITH INOUT AS ASSIGNMENT;


--
-- Name: CAST (character varying AS public.internet_connection_technology_type); Type: CAST; Schema: -; Owner: -
--

CREATE CAST (character varying AS public.internet_connection_technology_type) WITH INOUT AS ASSIGNMENT;


--
-- Name: CAST (character varying AS public.internet_customer_contact_phone_type); Type: CAST; Schema: -; Owner: -
--

CREATE CAST (character varying AS public.internet_customer_contact_phone_type) WITH INOUT AS ASSIGNMENT;


--
-- Name: CAST (character varying AS public.internet_customer_contact_type); Type: CAST; Schema: -; Owner: -
--

CREATE CAST (character varying AS public.internet_customer_contact_type) WITH INOUT AS ASSIGNMENT;


--
-- Name: CAST (character varying AS public.internet_customer_legal_type); Type: CAST; Schema: -; Owner: -
--

CREATE CAST (character varying AS public.internet_customer_legal_type) WITH INOUT AS ASSIGNMENT;


--
-- Name: CAST (character varying AS public.payment_methods_type); Type: CAST; Schema: -; Owner: -
--

CREATE CAST (character varying AS public.payment_methods_type) WITH INOUT AS ASSIGNMENT;


--
-- Name: CAST (character varying AS public.phone_ddd_type); Type: CAST; Schema: -; Owner: -
--

CREATE CAST (character varying AS public.phone_ddd_type) WITH INOUT AS ASSIGNMENT;


--
-- Name: CAST (character varying AS public.public_place_type); Type: CAST; Schema: -; Owner: -
--

CREATE CAST (character varying AS public.public_place_type) WITH INOUT AS ASSIGNMENT;


--
-- Name: CAST (character varying AS public.work_order_service_type); Type: CAST; Schema: -; Owner: -
--

CREATE CAST (character varying AS public.work_order_service_type) WITH INOUT AS ASSIGNMENT;


--
-- Name: CAST (character varying AS public.work_order_state_type); Type: CAST; Schema: -; Owner: -
--

CREATE CAST (character varying AS public.work_order_state_type) WITH INOUT AS ASSIGNMENT;


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: address; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.address (
    address_id integer NOT NULL,
    public_place_address_number character varying(200) NOT NULL,
    public_place_address_complement character varying(200),
    public_place_address_latitude character varying,
    public_place_address_longitude character varying,
    public_place_id integer NOT NULL
);


ALTER TABLE public.address OWNER TO postgres;

--
-- Name: address_address_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.address_address_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.address_address_id_seq OWNER TO postgres;

--
-- Name: address_address_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.address_address_id_seq OWNED BY public.address.address_id;


--
-- Name: authorities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.authorities (
    username character varying(50) NOT NULL,
    authority character varying(50) NOT NULL
);


ALTER TABLE public.authorities OWNER TO postgres;

--
-- Name: branch_bank; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.branch_bank (
    branch_bank_id integer NOT NULL,
    branch_bank_name character varying(250) NOT NULL,
    branch_bank_bank_code character varying(50) NOT NULL,
    branch_bank_verifying_digit character varying(50) NOT NULL,
    financial_instituition_id bigint NOT NULL
);


ALTER TABLE public.branch_bank OWNER TO postgres;

--
-- Name: branch_bank_branch_bank_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.branch_bank_branch_bank_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.branch_bank_branch_bank_id_seq OWNER TO postgres;

--
-- Name: branch_bank_branch_bank_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.branch_bank_branch_bank_id_seq OWNED BY public.branch_bank.branch_bank_id;


--
-- Name: brazilian_city; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.brazilian_city (
    city_id integer NOT NULL,
    city_name character varying(100) NOT NULL,
    city_ibge_cod integer NOT NULL,
    brazilian_state_id integer NOT NULL
);


ALTER TABLE public.brazilian_city OWNER TO postgres;

--
-- Name: brazilian_city_city_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.brazilian_city_city_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.brazilian_city_city_id_seq OWNER TO postgres;

--
-- Name: brazilian_city_city_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.brazilian_city_city_id_seq OWNED BY public.brazilian_city.city_id;


--
-- Name: brazilian_city_holiday; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.brazilian_city_holiday (
    brazilian_city_holiday_id integer NOT NULL,
    brazilian_city_month_day character varying(50) NOT NULL,
    city_id bigint NOT NULL
);


ALTER TABLE public.brazilian_city_holiday OWNER TO postgres;

--
-- Name: brazilian_city_holiday_brazilian_city_holiday_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.brazilian_city_holiday_brazilian_city_holiday_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.brazilian_city_holiday_brazilian_city_holiday_id_seq OWNER TO postgres;

--
-- Name: brazilian_city_holiday_brazilian_city_holiday_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.brazilian_city_holiday_brazilian_city_holiday_id_seq OWNED BY public.brazilian_city_holiday.brazilian_city_holiday_id;


--
-- Name: brazilian_city_neighborhood; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.brazilian_city_neighborhood (
    neighborhood_id integer NOT NULL,
    neighborhood_name character varying(100) NOT NULL,
    brazilian_city_id integer NOT NULL
);


ALTER TABLE public.brazilian_city_neighborhood OWNER TO postgres;

--
-- Name: brazilian_neighborhood_neighborhood_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.brazilian_neighborhood_neighborhood_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.brazilian_neighborhood_neighborhood_id_seq OWNER TO postgres;

--
-- Name: brazilian_neighborhood_neighborhood_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.brazilian_neighborhood_neighborhood_id_seq OWNED BY public.brazilian_city_neighborhood.neighborhood_id;


--
-- Name: brazilian_state_holiday; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.brazilian_state_holiday (
    brazilian_state_holiday_id integer NOT NULL,
    brazilian_state_holiday_month_day character varying(50) NOT NULL,
    state_id bigint NOT NULL
);


ALTER TABLE public.brazilian_state_holiday OWNER TO postgres;

--
-- Name: brazilian_state_holiday_brazilian_state_holiday_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.brazilian_state_holiday_brazilian_state_holiday_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.brazilian_state_holiday_brazilian_state_holiday_id_seq OWNER TO postgres;

--
-- Name: brazilian_state_holiday_brazilian_state_holiday_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.brazilian_state_holiday_brazilian_state_holiday_id_seq OWNED BY public.brazilian_state_holiday.brazilian_state_holiday_id;


--
-- Name: brazilian_states; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.brazilian_states (
    state_id integer NOT NULL,
    state_name character varying(100) NOT NULL,
    state_ibge_cod smallint NOT NULL,
    country_id integer NOT NULL,
    state_abbreviation character varying NOT NULL
);


ALTER TABLE public.brazilian_states OWNER TO postgres;

--
-- Name: brazilian_states_state_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.brazilian_states_state_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.brazilian_states_state_id_seq OWNER TO postgres;

--
-- Name: brazilian_states_state_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.brazilian_states_state_id_seq OWNED BY public.brazilian_states.state_id;


--
-- Name: client_telecommunications_equipment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.client_telecommunications_equipment (
    telecommunications_equipment_id bigint NOT NULL,
    equipament_serial_number character varying(150) NOT NULL,
    equipament_mac_address character varying(150) NOT NULL
);


ALTER TABLE public.client_telecommunications_equipment OWNER TO postgres;

--
-- Name: concentrator; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.concentrator (
    concentrator_id integer NOT NULL,
    concentrator_type_id bigint NOT NULL,
    concentrator_conection_type public.concentrator_conection_types NOT NULL,
    concentrator_ip_address character varying NOT NULL,
    concentrator_password bytea NOT NULL
);


ALTER TABLE public.concentrator OWNER TO postgres;

--
-- Name: concentrator_concentrator_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.concentrator_concentrator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.concentrator_concentrator_id_seq OWNER TO postgres;

--
-- Name: concentrator_concentrator_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.concentrator_concentrator_id_seq OWNED BY public.concentrator.concentrator_id;


--
-- Name: concentrator_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.concentrator_types (
    concentrator_type_id integer NOT NULL,
    concentrator_type_name character varying(400) NOT NULL,
    concentrator_type_type public.concentrator_type NOT NULL,
    vendor_id bigint
);


ALTER TABLE public.concentrator_types OWNER TO postgres;

--
-- Name: concentrator_types_concentrator_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.concentrator_types_concentrator_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.concentrator_types_concentrator_type_id_seq OWNER TO postgres;

--
-- Name: concentrator_types_concentrator_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.concentrator_types_concentrator_type_id_seq OWNED BY public.concentrator_types.concentrator_type_id;


--
-- Name: contact; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contact (
    contact_id integer NOT NULL,
    contact_pearson_name character varying(250) NOT NULL,
    contact_date timestamp without time zone NOT NULL,
    phone_id bigint
);


ALTER TABLE public.contact OWNER TO postgres;

--
-- Name: contact_contact_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.contact_contact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contact_contact_id_seq OWNER TO postgres;

--
-- Name: contact_contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.contact_contact_id_seq OWNED BY public.contact.contact_id;


--
-- Name: contact_reason; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contact_reason (
    contact_reason_id integer NOT NULL,
    contact_reason_description character varying(250) NOT NULL,
    contact_reason_type public.contact_reason_type NOT NULL
);


ALTER TABLE public.contact_reason OWNER TO postgres;

--
-- Name: contact_reason_contact_reason_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.contact_reason_contact_reason_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contact_reason_contact_reason_id_seq OWNER TO postgres;

--
-- Name: contact_reason_contact_reason_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.contact_reason_contact_reason_id_seq OWNED BY public.contact_reason.contact_reason_id;


--
-- Name: country; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.country (
    country_id integer NOT NULL,
    country_name character varying(100) NOT NULL,
    telephone_code_area smallint NOT NULL
);


ALTER TABLE public.country OWNER TO postgres;

--
-- Name: COLUMN country.country_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.country.country_id IS 'Código de identificação do país. Fornecido pelo sistema.';


--
-- Name: COLUMN country.country_name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.country.country_name IS 'Nome do país.';


--
-- Name: COLUMN country.telephone_code_area; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.country.telephone_code_area IS 'Código de área do país.';


--
-- Name: country_country_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.country_country_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.country_country_id_seq OWNER TO postgres;

--
-- Name: country_country_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.country_country_id_seq OWNED BY public.country.country_id;


--
-- Name: country_holiday; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.country_holiday (
    country_holiday_id integer NOT NULL,
    country_holiday_month_day character varying(50) NOT NULL,
    country_id bigint NOT NULL
);


ALTER TABLE public.country_holiday OWNER TO postgres;

--
-- Name: country_holiday_country_holiday_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.country_holiday_country_holiday_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.country_holiday_country_holiday_id_seq OWNER TO postgres;

--
-- Name: country_holiday_country_holiday_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.country_holiday_country_holiday_id_seq OWNED BY public.country_holiday.country_holiday_id;


--
-- Name: customer_email_contact_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer_email_contact_details (
    email_contact_details_id bigint NOT NULL,
    internet_subscription_id bigint NOT NULL
);


ALTER TABLE public.customer_email_contact_details OWNER TO postgres;

--
-- Name: customer_face_to_face_contact; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer_face_to_face_contact (
    internet_subscription_id bigint NOT NULL,
    contact_id bigint NOT NULL
);


ALTER TABLE public.customer_face_to_face_contact OWNER TO postgres;

--
-- Name: customer_phone_contact_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer_phone_contact_details (
    phone_contact_details_id bigint NOT NULL,
    internet_subscription_id bigint NOT NULL
);


ALTER TABLE public.customer_phone_contact_details OWNER TO postgres;

--
-- Name: customer_social_media_contact_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer_social_media_contact_details (
    social_media_contact_details_id bigint NOT NULL,
    internet_subscription_id bigint NOT NULL
);


ALTER TABLE public.customer_social_media_contact_details OWNER TO postgres;

--
-- Name: email; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.email (
    email_id integer NOT NULL,
    email character varying(250) NOT NULL
);


ALTER TABLE public.email OWNER TO postgres;

--
-- Name: email_contact; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.email_contact (
    contact_id bigint NOT NULL,
    email_contact_details_channel_type public.contact_channel_type NOT NULL,
    email_id bigint
);


ALTER TABLE public.email_contact OWNER TO postgres;

--
-- Name: email_contact_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.email_contact_details (
    email_contact_details_id integer NOT NULL,
    email_contact_details_detail_by_support character varying(250),
    contact_id bigint NOT NULL
);


ALTER TABLE public.email_contact_details OWNER TO postgres;

--
-- Name: email_contact_details_contact_reason; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.email_contact_details_contact_reason (
    id integer NOT NULL,
    email_contact_details_id bigint NOT NULL,
    contact_reason_id bigint NOT NULL
);


ALTER TABLE public.email_contact_details_contact_reason OWNER TO postgres;

--
-- Name: email_contact_details_contact_reason_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.email_contact_details_contact_reason_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.email_contact_details_contact_reason_id_seq OWNER TO postgres;

--
-- Name: email_contact_details_contact_reason_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.email_contact_details_contact_reason_id_seq OWNED BY public.email_contact_details_contact_reason.id;


--
-- Name: email_contact_details_email_contact_details_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.email_contact_details_email_contact_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.email_contact_details_email_contact_details_id_seq OWNER TO postgres;

--
-- Name: email_contact_details_email_contact_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.email_contact_details_email_contact_details_id_seq OWNED BY public.email_contact_details.email_contact_details_id;


--
-- Name: email_email_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.email_email_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.email_email_id_seq OWNER TO postgres;

--
-- Name: email_email_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.email_email_id_seq OWNED BY public.email.email_id;


--
-- Name: employee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee (
    employee_id integer NOT NULL,
    natural_pearson_id bigint NOT NULL,
    employee_hiring_date timestamp without time zone NOT NULL,
    internet_provider_id bigint NOT NULL,
    employee_resignation_date timestamp without time zone
);


ALTER TABLE public.employee OWNER TO postgres;

--
-- Name: employee_employee_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employee_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employee_employee_id_seq OWNER TO postgres;

--
-- Name: employee_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employee_employee_id_seq OWNED BY public.employee.employee_id;


--
-- Name: employee_position; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee_position (
    employee_position_id integer NOT NULL,
    employee_id bigint NOT NULL,
    position_id bigint NOT NULL,
    begin_employee_position_date timestamp without time zone NOT NULL,
    end_employee_position_date timestamp without time zone NOT NULL
);


ALTER TABLE public.employee_position OWNER TO postgres;

--
-- Name: employee_position_employee_position_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employee_position_employee_position_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employee_position_employee_position_id_seq OWNER TO postgres;

--
-- Name: employee_position_employee_position_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employee_position_employee_position_id_seq OWNED BY public.employee_position.employee_position_id;


--
-- Name: face_to_face_contact; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.face_to_face_contact (
    face_to_face_contact_contact_channel_type public.contact_channel_type NOT NULL,
    face_to_face_contact_detail_by_support character varying(250),
    contact_id bigint NOT NULL
);


ALTER TABLE public.face_to_face_contact OWNER TO postgres;

--
-- Name: face_to_face_contact_contact_reason; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.face_to_face_contact_contact_reason (
    id integer NOT NULL,
    contact_reason_id bigint NOT NULL,
    contact_id bigint NOT NULL
);


ALTER TABLE public.face_to_face_contact_contact_reason OWNER TO postgres;

--
-- Name: face_to_face_contact_contact_reason_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.face_to_face_contact_contact_reason_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.face_to_face_contact_contact_reason_id_seq OWNER TO postgres;

--
-- Name: face_to_face_contact_contact_reason_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.face_to_face_contact_contact_reason_id_seq OWNED BY public.face_to_face_contact_contact_reason.id;


--
-- Name: financial_instituition; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.financial_instituition (
    financial_instituition_id integer NOT NULL,
    financial_instituition_name character varying(250) NOT NULL,
    financial_instituition_compensation_code character varying(50) NOT NULL
);


ALTER TABLE public.financial_instituition OWNER TO postgres;

--
-- Name: financial_instituition_financial_instituition_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.financial_instituition_financial_instituition_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.financial_instituition_financial_instituition_id_seq OWNER TO postgres;

--
-- Name: financial_instituition_financial_instituition_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.financial_instituition_financial_instituition_id_seq OWNED BY public.financial_instituition.financial_instituition_id;


--
-- Name: gupshup_whatsapp_communication; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gupshup_whatsapp_communication (
    id integer NOT NULL,
    app character varying(300) NOT NULL,
    timestamp_communication character varying(300) NOT NULL,
    version_payload character varying(50) NOT NULL,
    type_communication character varying(50) NOT NULL,
    paylod bytea NOT NULL
);


ALTER TABLE public.gupshup_whatsapp_communication OWNER TO postgres;

--
-- Name: gupshup_whatsapp_communication_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gupshup_whatsapp_communication_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gupshup_whatsapp_communication_id_seq OWNER TO postgres;

--
-- Name: gupshup_whatsapp_communication_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.gupshup_whatsapp_communication_id_seq OWNED BY public.gupshup_whatsapp_communication.id;


--
-- Name: internet_billing_address; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.internet_billing_address (
    internet_billing_address_id integer NOT NULL,
    internet_address_id bigint NOT NULL,
    internet_subscription_id bigint NOT NULL,
    begin_billing_address_date timestamp without time zone NOT NULL,
    end_billing_address_date timestamp without time zone
);


ALTER TABLE public.internet_billing_address OWNER TO postgres;

--
-- Name: internet_billing_address_internet_billing_address_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.internet_billing_address_internet_billing_address_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.internet_billing_address_internet_billing_address_id_seq OWNER TO postgres;

--
-- Name: internet_billing_address_internet_billing_address_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.internet_billing_address_internet_billing_address_id_seq OWNED BY public.internet_billing_address.internet_billing_address_id;


--
-- Name: internet_connection_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.internet_connection_type (
    internet_connection_type_id integer NOT NULL,
    internet_connection_type_name character varying(200) NOT NULL,
    internet_connection_technology public.internet_connection_technology_type NOT NULL
);


ALTER TABLE public.internet_connection_type OWNER TO postgres;

--
-- Name: internet_connection_type_internet_connection_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.internet_connection_type_internet_connection_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.internet_connection_type_internet_connection_type_id_seq OWNER TO postgres;

--
-- Name: internet_connection_type_internet_connection_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.internet_connection_type_internet_connection_type_id_seq OWNED BY public.internet_connection_type.internet_connection_type_id;


--
-- Name: internet_customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.internet_customer (
    internet_customer_id integer NOT NULL,
    version bigint,
    internet_customer_legal_type public.internet_customer_legal_type NOT NULL
);


ALTER TABLE public.internet_customer OWNER TO postgres;

--
-- Name: internet_customer_contact; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.internet_customer_contact (
    internet_customer_contact_id integer NOT NULL,
    internet_customer_id bigint NOT NULL,
    internet_customer_contact_type public.internet_customer_contact_type NOT NULL
);


ALTER TABLE public.internet_customer_contact OWNER TO postgres;

--
-- Name: internet_customer_contact_email; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.internet_customer_contact_email (
    internet_customer_contact_id bigint NOT NULL,
    internet_customer_contact_email_allowed boolean DEFAULT false NOT NULL,
    email_id bigint NOT NULL
);


ALTER TABLE public.internet_customer_contact_email OWNER TO postgres;

--
-- Name: internet_customer_contact_internet_customer_contact_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.internet_customer_contact_internet_customer_contact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.internet_customer_contact_internet_customer_contact_id_seq OWNER TO postgres;

--
-- Name: internet_customer_contact_internet_customer_contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.internet_customer_contact_internet_customer_contact_id_seq OWNED BY public.internet_customer_contact.internet_customer_contact_id;


--
-- Name: internet_customer_contact_phone_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.internet_customer_contact_phone_permissions (
    internet_customer_contact_phone_permissions_id integer NOT NULL,
    internet_customer_contact_id bigint NOT NULL,
    internet_customer_contact_phone_permission public.internet_customer_contact_phone_type NOT NULL
);


ALTER TABLE public.internet_customer_contact_phone_permissions OWNER TO postgres;

--
-- Name: internet_customer_contact_pho_internet_customer_contact_pho_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.internet_customer_contact_pho_internet_customer_contact_pho_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.internet_customer_contact_pho_internet_customer_contact_pho_seq OWNER TO postgres;

--
-- Name: internet_customer_contact_pho_internet_customer_contact_pho_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.internet_customer_contact_pho_internet_customer_contact_pho_seq OWNED BY public.internet_customer_contact_phone_permissions.internet_customer_contact_phone_permissions_id;


--
-- Name: internet_customer_contact_phone; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.internet_customer_contact_phone (
    internet_customer_contact_id bigint NOT NULL,
    internet_customer_contact_phone_allowed boolean DEFAULT false NOT NULL,
    phone_id bigint NOT NULL
);


ALTER TABLE public.internet_customer_contact_phone OWNER TO postgres;

--
-- Name: internet_customer_contact_social_media; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.internet_customer_contact_social_media (
    internet_customer_contact_id bigint NOT NULL,
    internet_customer_contact_social_media_allowed boolean NOT NULL,
    social_media_profile_id bigint NOT NULL
);


ALTER TABLE public.internet_customer_contact_social_media OWNER TO postgres;

--
-- Name: internet_customer_internet_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.internet_customer_internet_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.internet_customer_internet_customer_id_seq OWNER TO postgres;

--
-- Name: internet_customer_internet_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.internet_customer_internet_customer_id_seq OWNED BY public.internet_customer.internet_customer_id;


--
-- Name: internet_customer_payment_payment_slip; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.internet_customer_payment_payment_slip (
    internet_customer_payment_payment_slip_id integer NOT NULL,
    internet_customer_payment_slip_id bigint NOT NULL,
    payment_method_id bigint NOT NULL
);


ALTER TABLE public.internet_customer_payment_payment_slip OWNER TO postgres;

--
-- Name: internet_customer_payment_pay_internet_customer_payment_pay_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.internet_customer_payment_pay_internet_customer_payment_pay_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.internet_customer_payment_pay_internet_customer_payment_pay_seq OWNER TO postgres;

--
-- Name: internet_customer_payment_pay_internet_customer_payment_pay_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.internet_customer_payment_pay_internet_customer_payment_pay_seq OWNED BY public.internet_customer_payment_payment_slip.internet_customer_payment_payment_slip_id;


--
-- Name: internet_customer_payment_slip; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.internet_customer_payment_slip (
    internet_customer_payment_slip_id integer NOT NULL,
    internet_subscription_id bigint NOT NULL,
    receivables_portfolio_id bigint NOT NULL,
    internet_customer_payment_slip_due_date timestamp without time zone NOT NULL,
    internet_customer_payment_slip_pay_day timestamp without time zone,
    internet_customer_payment_slip_year_service integer NOT NULL,
    internet_customer_payment_slip_month_service integer NOT NULL,
    internet_customer_payment_slip_code_line character varying(500) NOT NULL,
    internet_customer_payment_slip_pdf_file bytea NOT NULL,
    internet_provider_logo bytea
);


ALTER TABLE public.internet_customer_payment_slip OWNER TO postgres;

--
-- Name: internet_customer_payment_sli_internet_customer_payment_sli_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.internet_customer_payment_sli_internet_customer_payment_sli_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.internet_customer_payment_sli_internet_customer_payment_sli_seq OWNER TO postgres;

--
-- Name: internet_customer_payment_sli_internet_customer_payment_sli_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.internet_customer_payment_sli_internet_customer_payment_sli_seq OWNED BY public.internet_customer_payment_slip.internet_customer_payment_slip_id;


--
-- Name: internet_plan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.internet_plan (
    internet_plan_id integer NOT NULL,
    internet_plan_name character varying(200) NOT NULL,
    internet_plan_download_speed character varying(200) NOT NULL,
    internet_plan_upload_speed character varying(200) NOT NULL,
    version bigint,
    internet_connection_type_id integer NOT NULL,
    internet_plan_service_agreement bytea
);


ALTER TABLE public.internet_plan OWNER TO postgres;

--
-- Name: internet_plan_internet_plan_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.internet_plan_internet_plan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.internet_plan_internet_plan_id_seq OWNER TO postgres;

--
-- Name: internet_plan_internet_plan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.internet_plan_internet_plan_id_seq OWNED BY public.internet_plan.internet_plan_id;


--
-- Name: internet_plan_price; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.internet_plan_price (
    internet_plan_price_id integer NOT NULL,
    internet_plan_id bigint NOT NULL,
    begin_internet_plan_price_date timestamp without time zone NOT NULL,
    end_internet_plan_price_date timestamp without time zone,
    internet_plan_price numeric NOT NULL,
    version bigint NOT NULL,
    internet_plan_percent_of_discount_until_due_date numeric(5,4) NOT NULL
);


ALTER TABLE public.internet_plan_price OWNER TO postgres;

--
-- Name: internet_plan_price_internet_plan_price_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.internet_plan_price_internet_plan_price_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.internet_plan_price_internet_plan_price_id_seq OWNER TO postgres;

--
-- Name: internet_plan_price_internet_plan_price_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.internet_plan_price_internet_plan_price_id_seq OWNED BY public.internet_plan_price.internet_plan_price_id;


--
-- Name: internet_plan_public_place; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.internet_plan_public_place (
    id integer NOT NULL,
    internet_plan_id bigint NOT NULL,
    public_place_id bigint NOT NULL
);


ALTER TABLE public.internet_plan_public_place OWNER TO postgres;

--
-- Name: internet_plan_public_place_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.internet_plan_public_place_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.internet_plan_public_place_id_seq OWNER TO postgres;

--
-- Name: internet_plan_public_place_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.internet_plan_public_place_id_seq OWNED BY public.internet_plan_public_place.id;


--
-- Name: internet_provider; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.internet_provider (
    internet_provider_id integer NOT NULL,
    legal_entity_id bigint NOT NULL,
    address_id bigint NOT NULL,
    internet_provider_logo bytea,
    internet_provider_max_number_installment_plan integer NOT NULL,
    internet_provider_number_of_days_overdue_until_service_suspensi integer NOT NULL,
    internet_provider_interest_per_day_late double precision NOT NULL,
    internet_provider_late_fee double precision NOT NULL,
    internet_provider_max_discount_percent double precision NOT NULL,
    internet_provider_number_max_of_agreement_payment integer NOT NULL
);


ALTER TABLE public.internet_provider OWNER TO postgres;

--
-- Name: internet_provider_brazilian_cities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.internet_provider_brazilian_cities (
    id integer NOT NULL,
    internet_provider_id bigint NOT NULL,
    city_id bigint NOT NULL
);


ALTER TABLE public.internet_provider_brazilian_cities OWNER TO postgres;

--
-- Name: internet_provider_brazilian_cities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.internet_provider_brazilian_cities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.internet_provider_brazilian_cities_id_seq OWNER TO postgres;

--
-- Name: internet_provider_brazilian_cities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.internet_provider_brazilian_cities_id_seq OWNED BY public.internet_provider_brazilian_cities.id;


--
-- Name: internet_provider_due_dates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.internet_provider_due_dates (
    internet_provider_due_dates_id integer NOT NULL,
    internet_provider_due_date character varying(20) NOT NULL
);


ALTER TABLE public.internet_provider_due_dates OWNER TO postgres;

--
-- Name: internet_provider_due_dates_internet_provider_due_dates_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.internet_provider_due_dates_internet_provider_due_dates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.internet_provider_due_dates_internet_provider_due_dates_id_seq OWNER TO postgres;

--
-- Name: internet_provider_due_dates_internet_provider_due_dates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.internet_provider_due_dates_internet_provider_due_dates_id_seq OWNED BY public.internet_provider_due_dates.internet_provider_due_dates_id;


--
-- Name: internet_provider_emails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.internet_provider_emails (
    id integer NOT NULL,
    internet_provider_id bigint NOT NULL,
    email_id bigint NOT NULL
);


ALTER TABLE public.internet_provider_emails OWNER TO postgres;

--
-- Name: internet_provider_emails_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.internet_provider_emails_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.internet_provider_emails_id_seq OWNER TO postgres;

--
-- Name: internet_provider_emails_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.internet_provider_emails_id_seq OWNED BY public.internet_provider_emails.id;


--
-- Name: internet_provider_gupshup_integration; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.internet_provider_gupshup_integration (
    id integer NOT NULL,
    api_token character varying(300) NOT NULL,
    channel character varying(100) NOT NULL,
    source_address character varying(100) NOT NULL,
    src_name character varying(200) NOT NULL
);


ALTER TABLE public.internet_provider_gupshup_integration OWNER TO postgres;

--
-- Name: internet_provider_gupshup_integration_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.internet_provider_gupshup_integration_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.internet_provider_gupshup_integration_id_seq OWNER TO postgres;

--
-- Name: internet_provider_gupshup_integration_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.internet_provider_gupshup_integration_id_seq OWNED BY public.internet_provider_gupshup_integration.id;


--
-- Name: internet_provider_internet_plan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.internet_provider_internet_plan (
    id integer NOT NULL,
    internet_provider_id bigint NOT NULL,
    internet_plan_id bigint NOT NULL
);


ALTER TABLE public.internet_provider_internet_plan OWNER TO postgres;

--
-- Name: internet_provider_internet_plan_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.internet_provider_internet_plan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.internet_provider_internet_plan_id_seq OWNER TO postgres;

--
-- Name: internet_provider_internet_plan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.internet_provider_internet_plan_id_seq OWNED BY public.internet_provider_internet_plan.id;


--
-- Name: internet_provider_internet_provider_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.internet_provider_internet_provider_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.internet_provider_internet_provider_id_seq OWNER TO postgres;

--
-- Name: internet_provider_internet_provider_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.internet_provider_internet_provider_id_seq OWNED BY public.internet_provider.internet_provider_id;


--
-- Name: internet_provider_phone; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.internet_provider_phone (
    id integer NOT NULL,
    internet_provider_id bigint NOT NULL,
    phone_id bigint NOT NULL
);


ALTER TABLE public.internet_provider_phone OWNER TO postgres;

--
-- Name: internet_provider_phone_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.internet_provider_phone_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.internet_provider_phone_id_seq OWNER TO postgres;

--
-- Name: internet_provider_phone_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.internet_provider_phone_id_seq OWNED BY public.internet_provider_phone.id;


--
-- Name: internet_subscription; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.internet_subscription (
    internet_subscription_id integer NOT NULL,
    internet_plan_id bigint NOT NULL,
    version bigint,
    internet_customer_id bigint,
    begin_subscription_date date,
    end_subscription_date date,
    internet_subscription_agreement_service_file bytea
);


ALTER TABLE public.internet_subscription OWNER TO postgres;

--
-- Name: internet_subscription_address; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.internet_subscription_address (
    internet_subscription_address_id integer NOT NULL,
    internet_address_id bigint NOT NULL,
    internet_subscription_id bigint NOT NULL,
    begin_subscription_address_date timestamp without time zone NOT NULL,
    end_subscription_address_date timestamp without time zone
);


ALTER TABLE public.internet_subscription_address OWNER TO postgres;

--
-- Name: internet_subscription_address_internet_subscription_address_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.internet_subscription_address_internet_subscription_address_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.internet_subscription_address_internet_subscription_address_seq OWNER TO postgres;

--
-- Name: internet_subscription_address_internet_subscription_address_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.internet_subscription_address_internet_subscription_address_seq OWNED BY public.internet_subscription_address.internet_subscription_address_id;


--
-- Name: internet_subscription_due_date; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.internet_subscription_due_date (
    internet_subscription_due_date_id integer NOT NULL,
    internet_provider_due_dates_id bigint NOT NULL,
    internet_subscription_id bigint NOT NULL,
    begin_internet_subscription_due_date_date timestamp without time zone NOT NULL,
    end_internet_subscription_due_date_date timestamp without time zone
);


ALTER TABLE public.internet_subscription_due_date OWNER TO postgres;

--
-- Name: internet_subscription_due_dat_internet_subscription_due_dat_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.internet_subscription_due_dat_internet_subscription_due_dat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.internet_subscription_due_dat_internet_subscription_due_dat_seq OWNER TO postgres;

--
-- Name: internet_subscription_due_dat_internet_subscription_due_dat_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.internet_subscription_due_dat_internet_subscription_due_dat_seq OWNED BY public.internet_subscription_due_date.internet_subscription_due_date_id;


--
-- Name: internet_subscription_internet_plan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.internet_subscription_internet_plan (
    internet_subscription_internet_plan_id integer NOT NULL,
    internet_subscription_id bigint NOT NULL,
    internet_plan_id bigint NOT NULL,
    internet_subscription_internet_plan_begin_date timestamp without time zone NOT NULL,
    internet_subscription_internet_plan_end_date timestamp without time zone,
    version bigint
);


ALTER TABLE public.internet_subscription_internet_plan OWNER TO postgres;

--
-- Name: internet_subscription_interne_internet_subscription_interne_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.internet_subscription_interne_internet_subscription_interne_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.internet_subscription_interne_internet_subscription_interne_seq OWNER TO postgres;

--
-- Name: internet_subscription_interne_internet_subscription_interne_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.internet_subscription_interne_internet_subscription_interne_seq OWNED BY public.internet_subscription_internet_plan.internet_subscription_internet_plan_id;


--
-- Name: internet_subscription_internet_subscription_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.internet_subscription_internet_subscription_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.internet_subscription_internet_subscription_id_seq OWNER TO postgres;

--
-- Name: internet_subscription_internet_subscription_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.internet_subscription_internet_subscription_id_seq OWNED BY public.internet_subscription.internet_subscription_id;


--
-- Name: internet_subscription_login; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.internet_subscription_login (
    username character varying(100) NOT NULL,
    password bytea NOT NULL,
    enabled boolean NOT NULL,
    internet_subscription_id integer NOT NULL
);


ALTER TABLE public.internet_subscription_login OWNER TO postgres;

--
-- Name: legal_entity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.legal_entity (
    legal_entity_id integer NOT NULL,
    legal_entity_company_name character varying(250) NOT NULL,
    legal_entity_trading_name character varying(250) NOT NULL,
    legal_entity_cnpj character varying(200) NOT NULL
);


ALTER TABLE public.legal_entity OWNER TO postgres;

--
-- Name: legal_entity_internet_customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.legal_entity_internet_customer (
    internet_customer_id bigint NOT NULL,
    legal_entity_id bigint NOT NULL
);


ALTER TABLE public.legal_entity_internet_customer OWNER TO postgres;

--
-- Name: legal_entity_legal_entity_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.legal_entity_legal_entity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.legal_entity_legal_entity_id_seq OWNER TO postgres;

--
-- Name: legal_entity_legal_entity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.legal_entity_legal_entity_id_seq OWNED BY public.legal_entity.legal_entity_id;


--
-- Name: model_vendor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.model_vendor (
    model_vendor_id integer NOT NULL,
    model_vendor_name character varying(400) NOT NULL,
    vendor_id integer NOT NULL
);


ALTER TABLE public.model_vendor OWNER TO postgres;

--
-- Name: model_vendor_model_vendor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.model_vendor_model_vendor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.model_vendor_model_vendor_id_seq OWNER TO postgres;

--
-- Name: model_vendor_model_vendor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.model_vendor_model_vendor_id_seq OWNED BY public.model_vendor.model_vendor_id;


--
-- Name: natural_pearson; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.natural_pearson (
    natural_pearson_id integer NOT NULL,
    natural_pearson_name character varying(200) NOT NULL,
    natural_pearson_birthday date NOT NULL,
    natural_pearson_cpf character varying(200) NOT NULL,
    natural_pearson_rg character varying(200) NOT NULL,
    natural_pearson_cpf_file bytea,
    natural_pearson_rg_file bytea
);


ALTER TABLE public.natural_pearson OWNER TO postgres;

--
-- Name: natural_pearson_natural_pearson_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.natural_pearson_natural_pearson_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.natural_pearson_natural_pearson_id_seq OWNER TO postgres;

--
-- Name: natural_pearson_natural_pearson_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.natural_pearson_natural_pearson_id_seq OWNED BY public.natural_pearson.natural_pearson_id;


--
-- Name: natural_person_internet_customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.natural_person_internet_customer (
    internet_customer_id bigint NOT NULL,
    natural_pearson_id bigint NOT NULL
);


ALTER TABLE public.natural_person_internet_customer OWNER TO postgres;

--
-- Name: payment_method; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payment_method (
    payment_method_id integer NOT NULL,
    payment_method_description character varying(250) NOT NULL,
    payment_method_type public.payment_methods_type NOT NULL
);


ALTER TABLE public.payment_method OWNER TO postgres;

--
-- Name: payment_method_credit_card; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payment_method_credit_card (
    payment_method_id bigint NOT NULL,
    payment_method_credit_card_flag public.credit_card_flag_type NOT NULL
);


ALTER TABLE public.payment_method_credit_card OWNER TO postgres;

--
-- Name: payment_method_debit_card; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payment_method_debit_card (
    payment_method_id bigint NOT NULL,
    payment_method_debit_card_flag public.debit_card_flag_type NOT NULL
);


ALTER TABLE public.payment_method_debit_card OWNER TO postgres;

--
-- Name: payment_method_payment_method_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.payment_method_payment_method_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_method_payment_method_id_seq OWNER TO postgres;

--
-- Name: payment_method_payment_method_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.payment_method_payment_method_id_seq OWNED BY public.payment_method.payment_method_id;


--
-- Name: phone; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.phone (
    phone_id integer NOT NULL,
    phone_code_area public.phone_ddd_type NOT NULL,
    phone_phone_number character varying(250) NOT NULL
);


ALTER TABLE public.phone OWNER TO postgres;

--
-- Name: phone_contact; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.phone_contact (
    phone_id bigint,
    phone_contact_details_contact_channel_type public.contact_channel_type NOT NULL,
    contact_id bigint NOT NULL
);


ALTER TABLE public.phone_contact OWNER TO postgres;

--
-- Name: phone_contact_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.phone_contact_details (
    phone_contact_details_id integer NOT NULL,
    phone_contact_details_detail_by_support character varying(500),
    contact_id bigint NOT NULL
);


ALTER TABLE public.phone_contact_details OWNER TO postgres;

--
-- Name: phone_contact_details_contact_reason; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.phone_contact_details_contact_reason (
    id integer NOT NULL,
    phone_contact_details_id bigint NOT NULL,
    contact_reason_id bigint NOT NULL
);


ALTER TABLE public.phone_contact_details_contact_reason OWNER TO postgres;

--
-- Name: phone_contact_details_contact_reason_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.phone_contact_details_contact_reason_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.phone_contact_details_contact_reason_id_seq OWNER TO postgres;

--
-- Name: phone_contact_details_contact_reason_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.phone_contact_details_contact_reason_id_seq OWNED BY public.phone_contact_details_contact_reason.id;


--
-- Name: phone_contact_details_phone_contact_details_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.phone_contact_details_phone_contact_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.phone_contact_details_phone_contact_details_id_seq OWNER TO postgres;

--
-- Name: phone_contact_details_phone_contact_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.phone_contact_details_phone_contact_details_id_seq OWNED BY public.phone_contact_details.phone_contact_details_id;


--
-- Name: phone_phone_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.phone_phone_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.phone_phone_id_seq OWNER TO postgres;

--
-- Name: phone_phone_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.phone_phone_id_seq OWNED BY public.phone.phone_id;


--
-- Name: position; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."position" (
    position_id integer NOT NULL,
    position_name character varying(400) NOT NULL,
    position_cbo_code bigint NOT NULL
);


ALTER TABLE public."position" OWNER TO postgres;

--
-- Name: position_position_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.position_position_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.position_position_id_seq OWNER TO postgres;

--
-- Name: position_position_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.position_position_id_seq OWNED BY public."position".position_id;


--
-- Name: promotional_campaign; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.promotional_campaign (
    promotional_campaign_id integer NOT NULL,
    promotional_campaign_name character varying(50) NOT NULL,
    begin_promotional_campaign_date timestamp without time zone NOT NULL,
    end_promotional_campaign_date timestamp without time zone,
    promotional_campaign_code character varying NOT NULL
);


ALTER TABLE public.promotional_campaign OWNER TO postgres;

--
-- Name: promotional_campaign_material_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.promotional_campaign_material_item (
    promotional_campaign_material_item_id integer NOT NULL,
    promotional_campaign_material_item_name character varying(400) NOT NULL,
    promotional_campaign_id bigint NOT NULL,
    promotional_campaign_material_item_is_discount boolean NOT NULL,
    promotional_campaign_material_item_percent_of_discount double precision
);


ALTER TABLE public.promotional_campaign_material_item OWNER TO postgres;

--
-- Name: promotional_campaign_material_promotional_campaign_material_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.promotional_campaign_material_promotional_campaign_material_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.promotional_campaign_material_promotional_campaign_material_seq OWNER TO postgres;

--
-- Name: promotional_campaign_material_promotional_campaign_material_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.promotional_campaign_material_promotional_campaign_material_seq OWNED BY public.promotional_campaign_material_item.promotional_campaign_material_item_id;


--
-- Name: promotional_campaign_promotional_campaign_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.promotional_campaign_promotional_campaign_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.promotional_campaign_promotional_campaign_id_seq OWNER TO postgres;

--
-- Name: promotional_campaign_promotional_campaign_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.promotional_campaign_promotional_campaign_id_seq OWNED BY public.promotional_campaign.promotional_campaign_id;


--
-- Name: promotional_campaign_service_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.promotional_campaign_service_item (
    promotional_campaign_service_item_id integer NOT NULL,
    promotional_campaign_service_item_name character varying(400) NOT NULL,
    promotional_campaign_id bigint NOT NULL,
    promotional_campaign_service_item_is_discount boolean NOT NULL,
    promotional_campaign_service_item_percent_of_discount double precision,
    promotional_campaign_service_item_is_days_of_use_without_paymen boolean NOT NULL,
    promotional_campaign_service_item_number_of_days_of_use_without integer,
    promotional_campaign_service_item_is_instalation_kit_released_w boolean NOT NULL,
    promotional_campaign_service_item_is_discount_on_instalation_ki boolean NOT NULL,
    promotional_campaign_service_item_percent_of_discount_on_instal double precision
);


ALTER TABLE public.promotional_campaign_service_item OWNER TO postgres;

--
-- Name: promotional_campaign_service__promotional_campaign_service__seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.promotional_campaign_service__promotional_campaign_service__seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.promotional_campaign_service__promotional_campaign_service__seq OWNER TO postgres;

--
-- Name: promotional_campaign_service__promotional_campaign_service__seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.promotional_campaign_service__promotional_campaign_service__seq OWNED BY public.promotional_campaign_service_item.promotional_campaign_service_item_id;


--
-- Name: promotional_campaign_service_item_internet_plan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.promotional_campaign_service_item_internet_plan (
    id integer NOT NULL,
    promotional_campaign_service_item_id bigint NOT NULL,
    internet_plan_id bigint NOT NULL
);


ALTER TABLE public.promotional_campaign_service_item_internet_plan OWNER TO postgres;

--
-- Name: promotional_campaign_service_item_internet_plan_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.promotional_campaign_service_item_internet_plan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.promotional_campaign_service_item_internet_plan_id_seq OWNER TO postgres;

--
-- Name: promotional_campaign_service_item_internet_plan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.promotional_campaign_service_item_internet_plan_id_seq OWNED BY public.promotional_campaign_service_item_internet_plan.id;


--
-- Name: public_place; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.public_place (
    public_place_id integer NOT NULL,
    public_place_type public.public_place_type NOT NULL,
    public_place_name character varying(500) NOT NULL,
    brazilian_neighborhood_id integer NOT NULL,
    public_place_cep character varying NOT NULL,
    public_place_type_google_maps public.public_place_type,
    public_place_name_google_maps character varying(500),
    public_place_name_specific_to_google_maps boolean DEFAULT false
);


ALTER TABLE public.public_place OWNER TO postgres;

--
-- Name: public_place_public_place_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.public_place_public_place_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.public_place_public_place_id_seq OWNER TO postgres;

--
-- Name: public_place_public_place_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.public_place_public_place_id_seq OWNED BY public.public_place.public_place_id;


--
-- Name: receivables_portfolio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.receivables_portfolio (
    receivables_portfolio_id integer NOT NULL,
    receivables_portfolio_beneficiary_code character varying(50) NOT NULL,
    receivables_portfolio_beneficiary_verifying_digit character varying(20) NOT NULL,
    receivables_portfolio_agreement_code character varying(50) NOT NULL,
    receivables_portfolio_code character varying(50) NOT NULL,
    receivables_portfolio_our_number_code character varying(50) NOT NULL,
    branch_bank_id bigint NOT NULL,
    receivables_portfolio_instructions_01 character varying(400),
    receivables_portfolio_instructions_02 character varying(400),
    receivables_portfolio_instructions_03 character varying(400)
);


ALTER TABLE public.receivables_portfolio OWNER TO postgres;

--
-- Name: receivables_portfolio_receivables_portfolio_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.receivables_portfolio_receivables_portfolio_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.receivables_portfolio_receivables_portfolio_id_seq OWNER TO postgres;

--
-- Name: receivables_portfolio_receivables_portfolio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.receivables_portfolio_receivables_portfolio_id_seq OWNED BY public.receivables_portfolio.receivables_portfolio_id;


--
-- Name: salesman; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.salesman (
    salesman_id integer NOT NULL,
    natural_pearson_id bigint NOT NULL,
    salesman_activation_date timestamp without time zone NOT NULL
);


ALTER TABLE public.salesman OWNER TO postgres;

--
-- Name: salesman_period_active; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.salesman_period_active (
    salesman_period_active_id integer NOT NULL,
    salesman_id bigint NOT NULL,
    salesman_period_active_begin_date timestamp without time zone NOT NULL,
    salesman_period_active_end_date timestamp without time zone
);


ALTER TABLE public.salesman_period_active OWNER TO postgres;

--
-- Name: salesman_period_active_salesman_period_active_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.salesman_period_active_salesman_period_active_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.salesman_period_active_salesman_period_active_id_seq OWNER TO postgres;

--
-- Name: salesman_period_active_salesman_period_active_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.salesman_period_active_salesman_period_active_id_seq OWNED BY public.salesman_period_active.salesman_period_active_id;


--
-- Name: salesman_salesman_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.salesman_salesman_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.salesman_salesman_id_seq OWNER TO postgres;

--
-- Name: salesman_salesman_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.salesman_salesman_id_seq OWNED BY public.salesman.salesman_id;


--
-- Name: social_media_contact; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.social_media_contact (
    social_media_contact_contact_channel_type public.contact_channel_type,
    contact_id bigint NOT NULL,
    social_media_profile_id bigint NOT NULL
);


ALTER TABLE public.social_media_contact OWNER TO postgres;

--
-- Name: social_media_contact_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.social_media_contact_details (
    social_media_contact_details_id integer NOT NULL,
    social_media_contact_details_detail_by_support character varying(200),
    contact_id bigint NOT NULL
);


ALTER TABLE public.social_media_contact_details OWNER TO postgres;

--
-- Name: social_media_contact_details_contact_reason; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.social_media_contact_details_contact_reason (
    id integer NOT NULL,
    social_media_contact_details_id bigint NOT NULL,
    contact_reason_id bigint NOT NULL
);


ALTER TABLE public.social_media_contact_details_contact_reason OWNER TO postgres;

--
-- Name: social_media_contact_details_contact_reason_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.social_media_contact_details_contact_reason_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.social_media_contact_details_contact_reason_id_seq OWNER TO postgres;

--
-- Name: social_media_contact_details_contact_reason_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.social_media_contact_details_contact_reason_id_seq OWNED BY public.social_media_contact_details_contact_reason.id;


--
-- Name: social_media_contact_details_social_media_contact_details_i_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.social_media_contact_details_social_media_contact_details_i_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.social_media_contact_details_social_media_contact_details_i_seq OWNER TO postgres;

--
-- Name: social_media_contact_details_social_media_contact_details_i_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.social_media_contact_details_social_media_contact_details_i_seq OWNED BY public.social_media_contact_details.social_media_contact_details_id;


--
-- Name: social_media_platform; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.social_media_platform (
    social_media_platform_id integer NOT NULL,
    social_media_platform_name character varying(250) NOT NULL,
    social_media_prefix character varying(250) NOT NULL
);


ALTER TABLE public.social_media_platform OWNER TO postgres;

--
-- Name: social_media_platform_social_media_platform_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.social_media_platform_social_media_platform_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.social_media_platform_social_media_platform_id_seq OWNER TO postgres;

--
-- Name: social_media_platform_social_media_platform_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.social_media_platform_social_media_platform_id_seq OWNED BY public.social_media_platform.social_media_platform_id;


--
-- Name: social_media_profile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.social_media_profile (
    social_media_profile_id integer NOT NULL,
    social_media_profile_platform_id bigint NOT NULL,
    social_media_profile character varying(250) NOT NULL
);


ALTER TABLE public.social_media_profile OWNER TO postgres;

--
-- Name: social_media_profile_social_media_profile_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.social_media_profile_social_media_profile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.social_media_profile_social_media_profile_id_seq OWNER TO postgres;

--
-- Name: social_media_profile_social_media_profile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.social_media_profile_social_media_profile_id_seq OWNED BY public.social_media_profile.social_media_profile_id;


--
-- Name: technician; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.technician (
    technician_id integer NOT NULL,
    employee_id bigint NOT NULL
);


ALTER TABLE public.technician OWNER TO postgres;

--
-- Name: technician_period_active; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.technician_period_active (
    technician_period_active_id integer NOT NULL,
    technician_id bigint NOT NULL,
    technician_period_active_begin_date timestamp without time zone NOT NULL,
    technician_period_active_end_date timestamp without time zone
);


ALTER TABLE public.technician_period_active OWNER TO postgres;

--
-- Name: technician_period_active_technician_period_active_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.technician_period_active_technician_period_active_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.technician_period_active_technician_period_active_id_seq OWNER TO postgres;

--
-- Name: technician_period_active_technician_period_active_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.technician_period_active_technician_period_active_id_seq OWNED BY public.technician_period_active.technician_period_active_id;


--
-- Name: technician_technician_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.technician_technician_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.technician_technician_id_seq OWNER TO postgres;

--
-- Name: technician_technician_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.technician_technician_id_seq OWNED BY public.technician.technician_id;


--
-- Name: telecommunications_equipment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.telecommunications_equipment (
    telecommunications_equipment_id integer NOT NULL,
    version bigint,
    telecommunications_equipment_type public.telecommunications_equipment_type NOT NULL,
    internet_connection_type_id integer NOT NULL,
    model_vendor_id integer NOT NULL
);


ALTER TABLE public.telecommunications_equipment OWNER TO postgres;

--
-- Name: telecommunications_equipment_telecommunications_equipment_i_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.telecommunications_equipment_telecommunications_equipment_i_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.telecommunications_equipment_telecommunications_equipment_i_seq OWNER TO postgres;

--
-- Name: telecommunications_equipment_telecommunications_equipment_i_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.telecommunications_equipment_telecommunications_equipment_i_seq OWNED BY public.telecommunications_equipment.telecommunications_equipment_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    username character varying(50) NOT NULL,
    password bytea NOT NULL,
    enabled boolean NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: vendor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vendor (
    vendor_id integer NOT NULL,
    vendor_name character varying(400) NOT NULL
);


ALTER TABLE public.vendor OWNER TO postgres;

--
-- Name: vendor_vendor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vendor_vendor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vendor_vendor_id_seq OWNER TO postgres;

--
-- Name: vendor_vendor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vendor_vendor_id_seq OWNED BY public.vendor.vendor_id;


--
-- Name: work_order; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.work_order (
    work_order_id integer NOT NULL,
    work_order_begin_date date NOT NULL,
    work_order_end_date date
);


ALTER TABLE public.work_order OWNER TO postgres;

--
-- Name: work_order_customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.work_order_customer (
    work_order_id bigint NOT NULL,
    internet_subscription_id bigint NOT NULL,
    contact_id bigint
);


ALTER TABLE public.work_order_customer OWNER TO postgres;

--
-- Name: work_order_infrastructure; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.work_order_infrastructure (
    work_order_id bigint NOT NULL
);


ALTER TABLE public.work_order_infrastructure OWNER TO postgres;

--
-- Name: work_order_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.work_order_item (
    work_order_item_id integer NOT NULL,
    work_order_service_id bigint NOT NULL,
    work_order_id bigint NOT NULL,
    work_order_service_technician_result_id bigint
);


ALTER TABLE public.work_order_item OWNER TO postgres;

--
-- Name: work_order_item_customer_move_another_location; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.work_order_item_customer_move_another_location (
    work_order_item_id bigint NOT NULL,
    address_id bigint NOT NULL
);


ALTER TABLE public.work_order_item_customer_move_another_location OWNER TO postgres;

--
-- Name: work_order_item_customer_plan_migration; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.work_order_item_customer_plan_migration (
    work_order_item_id bigint NOT NULL,
    internet_plan_id bigint NOT NULL
);


ALTER TABLE public.work_order_item_customer_plan_migration OWNER TO postgres;

--
-- Name: work_order_item_work_order_item_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.work_order_item_work_order_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.work_order_item_work_order_item_id_seq OWNER TO postgres;

--
-- Name: work_order_item_work_order_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.work_order_item_work_order_item_id_seq OWNED BY public.work_order_item.work_order_item_id;


--
-- Name: work_order_service; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.work_order_service (
    work_order_service_id integer NOT NULL,
    work_order_service_name character varying(250) NOT NULL,
    work_order_service_type public.work_order_service_type NOT NULL,
    internet_connection_type_id bigint NOT NULL
);


ALTER TABLE public.work_order_service OWNER TO postgres;

--
-- Name: work_order_service_technician_result; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.work_order_service_technician_result (
    work_order_service_technician_result_id integer NOT NULL,
    work_order_service_technician_result_name character varying(250) NOT NULL,
    work_order_service_type public.work_order_service_type NOT NULL,
    internet_connection_type_id bigint NOT NULL
);


ALTER TABLE public.work_order_service_technician_result OWNER TO postgres;

--
-- Name: work_order_service_technician_result_photo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.work_order_service_technician_result_photo (
    work_order_service_technician_result_photo_id integer NOT NULL,
    work_order_service_technician_result_id bigint NOT NULL,
    work_order_service_technician_result_photo_file bytea NOT NULL,
    work_order_service_technician_result_photo_upload timestamp without time zone NOT NULL
);


ALTER TABLE public.work_order_service_technician_result_photo OWNER TO postgres;

--
-- Name: work_order_service_technician_work_order_service_technicia_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.work_order_service_technician_work_order_service_technicia_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.work_order_service_technician_work_order_service_technicia_seq1 OWNER TO postgres;

--
-- Name: work_order_service_technician_work_order_service_technicia_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.work_order_service_technician_work_order_service_technicia_seq1 OWNED BY public.work_order_service_technician_result_photo.work_order_service_technician_result_photo_id;


--
-- Name: work_order_service_technician_work_order_service_technician_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.work_order_service_technician_work_order_service_technician_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.work_order_service_technician_work_order_service_technician_seq OWNER TO postgres;

--
-- Name: work_order_service_technician_work_order_service_technician_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.work_order_service_technician_work_order_service_technician_seq OWNED BY public.work_order_service_technician_result.work_order_service_technician_result_id;


--
-- Name: work_order_service_work_order_service_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.work_order_service_work_order_service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.work_order_service_work_order_service_id_seq OWNER TO postgres;

--
-- Name: work_order_service_work_order_service_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.work_order_service_work_order_service_id_seq OWNED BY public.work_order_service.work_order_service_id;


--
-- Name: work_order_states; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.work_order_states (
    work_order_state_id integer NOT NULL,
    work_order_id bigint NOT NULL,
    work_order_state public.work_order_state_type NOT NULL,
    work_order_state_note character varying(250) NOT NULL,
    work_order_state_begin_date timestamp without time zone NOT NULL,
    work_order_state_end_date timestamp without time zone
);


ALTER TABLE public.work_order_states OWNER TO postgres;

--
-- Name: work_order_states_work_order_state_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.work_order_states_work_order_state_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.work_order_states_work_order_state_id_seq OWNER TO postgres;

--
-- Name: work_order_states_work_order_state_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.work_order_states_work_order_state_id_seq OWNED BY public.work_order_states.work_order_state_id;


--
-- Name: work_order_work_order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.work_order_work_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.work_order_work_order_id_seq OWNER TO postgres;

--
-- Name: work_order_work_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.work_order_work_order_id_seq OWNED BY public.work_order.work_order_id;


--
-- Name: address address_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.address ALTER COLUMN address_id SET DEFAULT nextval('public.address_address_id_seq'::regclass);


--
-- Name: branch_bank branch_bank_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.branch_bank ALTER COLUMN branch_bank_id SET DEFAULT nextval('public.branch_bank_branch_bank_id_seq'::regclass);


--
-- Name: brazilian_city city_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brazilian_city ALTER COLUMN city_id SET DEFAULT nextval('public.brazilian_city_city_id_seq'::regclass);


--
-- Name: brazilian_city_holiday brazilian_city_holiday_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brazilian_city_holiday ALTER COLUMN brazilian_city_holiday_id SET DEFAULT nextval('public.brazilian_city_holiday_brazilian_city_holiday_id_seq'::regclass);


--
-- Name: brazilian_city_neighborhood neighborhood_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brazilian_city_neighborhood ALTER COLUMN neighborhood_id SET DEFAULT nextval('public.brazilian_neighborhood_neighborhood_id_seq'::regclass);


--
-- Name: brazilian_state_holiday brazilian_state_holiday_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brazilian_state_holiday ALTER COLUMN brazilian_state_holiday_id SET DEFAULT nextval('public.brazilian_state_holiday_brazilian_state_holiday_id_seq'::regclass);


--
-- Name: brazilian_states state_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brazilian_states ALTER COLUMN state_id SET DEFAULT nextval('public.brazilian_states_state_id_seq'::regclass);


--
-- Name: concentrator concentrator_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.concentrator ALTER COLUMN concentrator_id SET DEFAULT nextval('public.concentrator_concentrator_id_seq'::regclass);


--
-- Name: concentrator_types concentrator_type_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.concentrator_types ALTER COLUMN concentrator_type_id SET DEFAULT nextval('public.concentrator_types_concentrator_type_id_seq'::regclass);


--
-- Name: contact contact_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact ALTER COLUMN contact_id SET DEFAULT nextval('public.contact_contact_id_seq'::regclass);


--
-- Name: contact_reason contact_reason_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact_reason ALTER COLUMN contact_reason_id SET DEFAULT nextval('public.contact_reason_contact_reason_id_seq'::regclass);


--
-- Name: country country_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.country ALTER COLUMN country_id SET DEFAULT nextval('public.country_country_id_seq'::regclass);


--
-- Name: country_holiday country_holiday_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.country_holiday ALTER COLUMN country_holiday_id SET DEFAULT nextval('public.country_holiday_country_holiday_id_seq'::regclass);


--
-- Name: email email_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.email ALTER COLUMN email_id SET DEFAULT nextval('public.email_email_id_seq'::regclass);


--
-- Name: email_contact_details email_contact_details_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.email_contact_details ALTER COLUMN email_contact_details_id SET DEFAULT nextval('public.email_contact_details_email_contact_details_id_seq'::regclass);


--
-- Name: email_contact_details_contact_reason id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.email_contact_details_contact_reason ALTER COLUMN id SET DEFAULT nextval('public.email_contact_details_contact_reason_id_seq'::regclass);


--
-- Name: employee employee_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee ALTER COLUMN employee_id SET DEFAULT nextval('public.employee_employee_id_seq'::regclass);


--
-- Name: employee_position employee_position_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_position ALTER COLUMN employee_position_id SET DEFAULT nextval('public.employee_position_employee_position_id_seq'::regclass);


--
-- Name: face_to_face_contact_contact_reason id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.face_to_face_contact_contact_reason ALTER COLUMN id SET DEFAULT nextval('public.face_to_face_contact_contact_reason_id_seq'::regclass);


--
-- Name: financial_instituition financial_instituition_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.financial_instituition ALTER COLUMN financial_instituition_id SET DEFAULT nextval('public.financial_instituition_financial_instituition_id_seq'::regclass);


--
-- Name: gupshup_whatsapp_communication id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gupshup_whatsapp_communication ALTER COLUMN id SET DEFAULT nextval('public.gupshup_whatsapp_communication_id_seq'::regclass);


--
-- Name: internet_billing_address internet_billing_address_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_billing_address ALTER COLUMN internet_billing_address_id SET DEFAULT nextval('public.internet_billing_address_internet_billing_address_id_seq'::regclass);


--
-- Name: internet_connection_type internet_connection_type_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_connection_type ALTER COLUMN internet_connection_type_id SET DEFAULT nextval('public.internet_connection_type_internet_connection_type_id_seq'::regclass);


--
-- Name: internet_customer internet_customer_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_customer ALTER COLUMN internet_customer_id SET DEFAULT nextval('public.internet_customer_internet_customer_id_seq'::regclass);


--
-- Name: internet_customer_contact internet_customer_contact_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_customer_contact ALTER COLUMN internet_customer_contact_id SET DEFAULT nextval('public.internet_customer_contact_internet_customer_contact_id_seq'::regclass);


--
-- Name: internet_customer_contact_phone_permissions internet_customer_contact_phone_permissions_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_customer_contact_phone_permissions ALTER COLUMN internet_customer_contact_phone_permissions_id SET DEFAULT nextval('public.internet_customer_contact_pho_internet_customer_contact_pho_seq'::regclass);


--
-- Name: internet_customer_payment_payment_slip internet_customer_payment_payment_slip_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_customer_payment_payment_slip ALTER COLUMN internet_customer_payment_payment_slip_id SET DEFAULT nextval('public.internet_customer_payment_pay_internet_customer_payment_pay_seq'::regclass);


--
-- Name: internet_customer_payment_slip internet_customer_payment_slip_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_customer_payment_slip ALTER COLUMN internet_customer_payment_slip_id SET DEFAULT nextval('public.internet_customer_payment_sli_internet_customer_payment_sli_seq'::regclass);


--
-- Name: internet_plan internet_plan_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_plan ALTER COLUMN internet_plan_id SET DEFAULT nextval('public.internet_plan_internet_plan_id_seq'::regclass);


--
-- Name: internet_plan_price internet_plan_price_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_plan_price ALTER COLUMN internet_plan_price_id SET DEFAULT nextval('public.internet_plan_price_internet_plan_price_id_seq'::regclass);


--
-- Name: internet_plan_public_place id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_plan_public_place ALTER COLUMN id SET DEFAULT nextval('public.internet_plan_public_place_id_seq'::regclass);


--
-- Name: internet_provider internet_provider_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_provider ALTER COLUMN internet_provider_id SET DEFAULT nextval('public.internet_provider_internet_provider_id_seq'::regclass);


--
-- Name: internet_provider_brazilian_cities id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_provider_brazilian_cities ALTER COLUMN id SET DEFAULT nextval('public.internet_provider_brazilian_cities_id_seq'::regclass);


--
-- Name: internet_provider_due_dates internet_provider_due_dates_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_provider_due_dates ALTER COLUMN internet_provider_due_dates_id SET DEFAULT nextval('public.internet_provider_due_dates_internet_provider_due_dates_id_seq'::regclass);


--
-- Name: internet_provider_emails id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_provider_emails ALTER COLUMN id SET DEFAULT nextval('public.internet_provider_emails_id_seq'::regclass);


--
-- Name: internet_provider_gupshup_integration id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_provider_gupshup_integration ALTER COLUMN id SET DEFAULT nextval('public.internet_provider_gupshup_integration_id_seq'::regclass);


--
-- Name: internet_provider_internet_plan id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_provider_internet_plan ALTER COLUMN id SET DEFAULT nextval('public.internet_provider_internet_plan_id_seq'::regclass);


--
-- Name: internet_provider_phone id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_provider_phone ALTER COLUMN id SET DEFAULT nextval('public.internet_provider_phone_id_seq'::regclass);


--
-- Name: internet_subscription internet_subscription_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_subscription ALTER COLUMN internet_subscription_id SET DEFAULT nextval('public.internet_subscription_internet_subscription_id_seq'::regclass);


--
-- Name: internet_subscription_address internet_subscription_address_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_subscription_address ALTER COLUMN internet_subscription_address_id SET DEFAULT nextval('public.internet_subscription_address_internet_subscription_address_seq'::regclass);


--
-- Name: internet_subscription_due_date internet_subscription_due_date_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_subscription_due_date ALTER COLUMN internet_subscription_due_date_id SET DEFAULT nextval('public.internet_subscription_due_dat_internet_subscription_due_dat_seq'::regclass);


--
-- Name: internet_subscription_internet_plan internet_subscription_internet_plan_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_subscription_internet_plan ALTER COLUMN internet_subscription_internet_plan_id SET DEFAULT nextval('public.internet_subscription_interne_internet_subscription_interne_seq'::regclass);


--
-- Name: legal_entity legal_entity_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.legal_entity ALTER COLUMN legal_entity_id SET DEFAULT nextval('public.legal_entity_legal_entity_id_seq'::regclass);


--
-- Name: model_vendor model_vendor_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.model_vendor ALTER COLUMN model_vendor_id SET DEFAULT nextval('public.model_vendor_model_vendor_id_seq'::regclass);


--
-- Name: natural_pearson natural_pearson_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.natural_pearson ALTER COLUMN natural_pearson_id SET DEFAULT nextval('public.natural_pearson_natural_pearson_id_seq'::regclass);


--
-- Name: payment_method payment_method_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_method ALTER COLUMN payment_method_id SET DEFAULT nextval('public.payment_method_payment_method_id_seq'::regclass);


--
-- Name: phone phone_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.phone ALTER COLUMN phone_id SET DEFAULT nextval('public.phone_phone_id_seq'::regclass);


--
-- Name: phone_contact_details phone_contact_details_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.phone_contact_details ALTER COLUMN phone_contact_details_id SET DEFAULT nextval('public.phone_contact_details_phone_contact_details_id_seq'::regclass);


--
-- Name: phone_contact_details_contact_reason id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.phone_contact_details_contact_reason ALTER COLUMN id SET DEFAULT nextval('public.phone_contact_details_contact_reason_id_seq'::regclass);


--
-- Name: position position_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."position" ALTER COLUMN position_id SET DEFAULT nextval('public.position_position_id_seq'::regclass);


--
-- Name: promotional_campaign promotional_campaign_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.promotional_campaign ALTER COLUMN promotional_campaign_id SET DEFAULT nextval('public.promotional_campaign_promotional_campaign_id_seq'::regclass);


--
-- Name: promotional_campaign_material_item promotional_campaign_material_item_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.promotional_campaign_material_item ALTER COLUMN promotional_campaign_material_item_id SET DEFAULT nextval('public.promotional_campaign_material_promotional_campaign_material_seq'::regclass);


--
-- Name: promotional_campaign_service_item promotional_campaign_service_item_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.promotional_campaign_service_item ALTER COLUMN promotional_campaign_service_item_id SET DEFAULT nextval('public.promotional_campaign_service__promotional_campaign_service__seq'::regclass);


--
-- Name: promotional_campaign_service_item_internet_plan id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.promotional_campaign_service_item_internet_plan ALTER COLUMN id SET DEFAULT nextval('public.promotional_campaign_service_item_internet_plan_id_seq'::regclass);


--
-- Name: public_place public_place_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.public_place ALTER COLUMN public_place_id SET DEFAULT nextval('public.public_place_public_place_id_seq'::regclass);


--
-- Name: receivables_portfolio receivables_portfolio_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.receivables_portfolio ALTER COLUMN receivables_portfolio_id SET DEFAULT nextval('public.receivables_portfolio_receivables_portfolio_id_seq'::regclass);


--
-- Name: salesman salesman_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salesman ALTER COLUMN salesman_id SET DEFAULT nextval('public.salesman_salesman_id_seq'::regclass);


--
-- Name: salesman_period_active salesman_period_active_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salesman_period_active ALTER COLUMN salesman_period_active_id SET DEFAULT nextval('public.salesman_period_active_salesman_period_active_id_seq'::regclass);


--
-- Name: social_media_contact_details social_media_contact_details_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_media_contact_details ALTER COLUMN social_media_contact_details_id SET DEFAULT nextval('public.social_media_contact_details_social_media_contact_details_i_seq'::regclass);


--
-- Name: social_media_contact_details_contact_reason id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_media_contact_details_contact_reason ALTER COLUMN id SET DEFAULT nextval('public.social_media_contact_details_contact_reason_id_seq'::regclass);


--
-- Name: social_media_platform social_media_platform_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_media_platform ALTER COLUMN social_media_platform_id SET DEFAULT nextval('public.social_media_platform_social_media_platform_id_seq'::regclass);


--
-- Name: social_media_profile social_media_profile_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_media_profile ALTER COLUMN social_media_profile_id SET DEFAULT nextval('public.social_media_profile_social_media_profile_id_seq'::regclass);


--
-- Name: technician technician_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.technician ALTER COLUMN technician_id SET DEFAULT nextval('public.technician_technician_id_seq'::regclass);


--
-- Name: technician_period_active technician_period_active_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.technician_period_active ALTER COLUMN technician_period_active_id SET DEFAULT nextval('public.technician_period_active_technician_period_active_id_seq'::regclass);


--
-- Name: telecommunications_equipment telecommunications_equipment_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.telecommunications_equipment ALTER COLUMN telecommunications_equipment_id SET DEFAULT nextval('public.telecommunications_equipment_telecommunications_equipment_i_seq'::regclass);


--
-- Name: vendor vendor_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendor ALTER COLUMN vendor_id SET DEFAULT nextval('public.vendor_vendor_id_seq'::regclass);


--
-- Name: work_order work_order_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.work_order ALTER COLUMN work_order_id SET DEFAULT nextval('public.work_order_work_order_id_seq'::regclass);


--
-- Name: work_order_item work_order_item_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.work_order_item ALTER COLUMN work_order_item_id SET DEFAULT nextval('public.work_order_item_work_order_item_id_seq'::regclass);


--
-- Name: work_order_service work_order_service_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.work_order_service ALTER COLUMN work_order_service_id SET DEFAULT nextval('public.work_order_service_work_order_service_id_seq'::regclass);


--
-- Name: work_order_service_technician_result work_order_service_technician_result_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.work_order_service_technician_result ALTER COLUMN work_order_service_technician_result_id SET DEFAULT nextval('public.work_order_service_technician_work_order_service_technician_seq'::regclass);


--
-- Name: work_order_service_technician_result_photo work_order_service_technician_result_photo_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.work_order_service_technician_result_photo ALTER COLUMN work_order_service_technician_result_photo_id SET DEFAULT nextval('public.work_order_service_technician_work_order_service_technicia_seq1'::regclass);


--
-- Name: work_order_states work_order_state_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.work_order_states ALTER COLUMN work_order_state_id SET DEFAULT nextval('public.work_order_states_work_order_state_id_seq'::regclass);


--
-- Data for Name: address; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.address (address_id, public_place_address_number, public_place_address_complement, public_place_address_latitude, public_place_address_longitude, public_place_id) FROM stdin;
1	46	EM FRENTE A IGREJA SENHOR DOS POBRES	-10.284076	-36.573631	1
\.


--
-- Data for Name: authorities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.authorities (username, authority) FROM stdin;
\.


--
-- Data for Name: branch_bank; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.branch_bank (branch_bank_id, branch_bank_name, branch_bank_bank_code, branch_bank_verifying_digit, financial_instituition_id) FROM stdin;
\.


--
-- Data for Name: brazilian_city; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.brazilian_city (city_id, city_name, city_ibge_cod, brazilian_state_id) FROM stdin;
1	PENEDO	2706703	14
\.


--
-- Data for Name: brazilian_city_holiday; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.brazilian_city_holiday (brazilian_city_holiday_id, brazilian_city_month_day, city_id) FROM stdin;
\.


--
-- Data for Name: brazilian_city_neighborhood; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.brazilian_city_neighborhood (neighborhood_id, neighborhood_name, brazilian_city_id) FROM stdin;
1	CENTRO HISTORICO	1
\.


--
-- Data for Name: brazilian_state_holiday; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.brazilian_state_holiday (brazilian_state_holiday_id, brazilian_state_holiday_month_day, state_id) FROM stdin;
\.


--
-- Data for Name: brazilian_states; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.brazilian_states (state_id, state_name, state_ibge_cod, country_id, state_abbreviation) FROM stdin;
1	RONDONIA	11	1	RO
2	ACRE	12	1	AC
3	AMAZONAS	13	1	AM
4	RORAIMA	14	1	RR
5	PARA	15	1	PA
6	AMAPA	16	1	AP
7	TOCANTINS	17	1	TO
8	MARANHAO	21	1	MA
9	PIAUI	22	1	PI
10	CEARA	23	1	CE
11	RIO GRANDE DO NORTE	24	1	RN
12	PARAIBA	25	1	PB
13	PERNAMBUCO	26	1	PE
14	ALAGOAS	27	1	AL
15	SERGIPE	28	1	SE
16	BAHIA	29	1	BA
17	MINAS GERAIS	31	1	MG
18	ESPIRITO SANTO	32	1	ES
19	RIO DE JANEIRO	33	1	RJ
20	SÃO PAULO	35	1	SP
21	PARANA	41	1	PR
22	SANTA CATARINA	42	1	SC
23	RIO GRANDE DO SUL	43	1	RS
24	MATO GROSSO DO SUL	50	1	MS
25	MATO GROSSO	51	1	MT
26	GOIAS	52	1	GO
27	DISTRITO FEDERAL	53	1	DF
\.


--
-- Data for Name: client_telecommunications_equipment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.client_telecommunications_equipment (telecommunications_equipment_id, equipament_serial_number, equipament_mac_address) FROM stdin;
\.


--
-- Data for Name: concentrator; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.concentrator (concentrator_id, concentrator_type_id, concentrator_conection_type, concentrator_ip_address, concentrator_password) FROM stdin;
\.


--
-- Data for Name: concentrator_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.concentrator_types (concentrator_type_id, concentrator_type_name, concentrator_type_type, vendor_id) FROM stdin;
\.


--
-- Data for Name: contact; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contact (contact_id, contact_pearson_name, contact_date, phone_id) FROM stdin;
\.


--
-- Data for Name: contact_reason; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contact_reason (contact_reason_id, contact_reason_description, contact_reason_type) FROM stdin;
\.


--
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.country (country_id, country_name, telephone_code_area) FROM stdin;
1	BRASIL	55
\.


--
-- Data for Name: country_holiday; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.country_holiday (country_holiday_id, country_holiday_month_day, country_id) FROM stdin;
\.


--
-- Data for Name: customer_email_contact_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer_email_contact_details (email_contact_details_id, internet_subscription_id) FROM stdin;
\.


--
-- Data for Name: customer_face_to_face_contact; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer_face_to_face_contact (internet_subscription_id, contact_id) FROM stdin;
\.


--
-- Data for Name: customer_phone_contact_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer_phone_contact_details (phone_contact_details_id, internet_subscription_id) FROM stdin;
\.


--
-- Data for Name: customer_social_media_contact_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer_social_media_contact_details (social_media_contact_details_id, internet_subscription_id) FROM stdin;
\.


--
-- Data for Name: email; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.email (email_id, email) FROM stdin;
1	customer@acme.co
\.


--
-- Data for Name: email_contact; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.email_contact (contact_id, email_contact_details_channel_type, email_id) FROM stdin;
\.


--
-- Data for Name: email_contact_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.email_contact_details (email_contact_details_id, email_contact_details_detail_by_support, contact_id) FROM stdin;
\.


--
-- Data for Name: email_contact_details_contact_reason; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.email_contact_details_contact_reason (id, email_contact_details_id, contact_reason_id) FROM stdin;
\.


--
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employee (employee_id, natural_pearson_id, employee_hiring_date, internet_provider_id, employee_resignation_date) FROM stdin;
\.


--
-- Data for Name: employee_position; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employee_position (employee_position_id, employee_id, position_id, begin_employee_position_date, end_employee_position_date) FROM stdin;
\.


--
-- Data for Name: face_to_face_contact; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.face_to_face_contact (face_to_face_contact_contact_channel_type, face_to_face_contact_detail_by_support, contact_id) FROM stdin;
\.


--
-- Data for Name: face_to_face_contact_contact_reason; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.face_to_face_contact_contact_reason (id, contact_reason_id, contact_id) FROM stdin;
\.


--
-- Data for Name: financial_instituition; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.financial_instituition (financial_instituition_id, financial_instituition_name, financial_instituition_compensation_code) FROM stdin;
\.


--
-- Data for Name: gupshup_whatsapp_communication; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.gupshup_whatsapp_communication (id, app, timestamp_communication, version_payload, type_communication, paylod) FROM stdin;
\.


--
-- Data for Name: internet_billing_address; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.internet_billing_address (internet_billing_address_id, internet_address_id, internet_subscription_id, begin_billing_address_date, end_billing_address_date) FROM stdin;
\.


--
-- Data for Name: internet_connection_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.internet_connection_type (internet_connection_type_id, internet_connection_type_name, internet_connection_technology) FROM stdin;
\.


--
-- Data for Name: internet_customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.internet_customer (internet_customer_id, version, internet_customer_legal_type) FROM stdin;
\.


--
-- Data for Name: internet_customer_contact; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.internet_customer_contact (internet_customer_contact_id, internet_customer_id, internet_customer_contact_type) FROM stdin;
\.


--
-- Data for Name: internet_customer_contact_email; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.internet_customer_contact_email (internet_customer_contact_id, internet_customer_contact_email_allowed, email_id) FROM stdin;
\.


--
-- Data for Name: internet_customer_contact_phone; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.internet_customer_contact_phone (internet_customer_contact_id, internet_customer_contact_phone_allowed, phone_id) FROM stdin;
\.


--
-- Data for Name: internet_customer_contact_phone_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.internet_customer_contact_phone_permissions (internet_customer_contact_phone_permissions_id, internet_customer_contact_id, internet_customer_contact_phone_permission) FROM stdin;
\.


--
-- Data for Name: internet_customer_contact_social_media; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.internet_customer_contact_social_media (internet_customer_contact_id, internet_customer_contact_social_media_allowed, social_media_profile_id) FROM stdin;
\.


--
-- Data for Name: internet_customer_payment_payment_slip; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.internet_customer_payment_payment_slip (internet_customer_payment_payment_slip_id, internet_customer_payment_slip_id, payment_method_id) FROM stdin;
\.


--
-- Data for Name: internet_customer_payment_slip; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.internet_customer_payment_slip (internet_customer_payment_slip_id, internet_subscription_id, receivables_portfolio_id, internet_customer_payment_slip_due_date, internet_customer_payment_slip_pay_day, internet_customer_payment_slip_year_service, internet_customer_payment_slip_month_service, internet_customer_payment_slip_code_line, internet_customer_payment_slip_pdf_file, internet_provider_logo) FROM stdin;
\.


--
-- Data for Name: internet_plan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.internet_plan (internet_plan_id, internet_plan_name, internet_plan_download_speed, internet_plan_upload_speed, version, internet_connection_type_id, internet_plan_service_agreement) FROM stdin;
\.


--
-- Data for Name: internet_plan_price; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.internet_plan_price (internet_plan_price_id, internet_plan_id, begin_internet_plan_price_date, end_internet_plan_price_date, internet_plan_price, version, internet_plan_percent_of_discount_until_due_date) FROM stdin;
\.


--
-- Data for Name: internet_plan_public_place; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.internet_plan_public_place (id, internet_plan_id, public_place_id) FROM stdin;
\.


--
-- Data for Name: internet_provider; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.internet_provider (internet_provider_id, legal_entity_id, address_id, internet_provider_logo, internet_provider_max_number_installment_plan, internet_provider_number_of_days_overdue_until_service_suspensi, internet_provider_interest_per_day_late, internet_provider_late_fee, internet_provider_max_discount_percent, internet_provider_number_max_of_agreement_payment) FROM stdin;
1	1	1	\\xffd8ffe000104a46494600010101009600960000ffdb00430006040506050406060506070706080a100a0a09090a140e0f0c1017141818171416161a1d251f1a1b231c1616202c20232627292a29191f2d302d283025282928ffdb0043010707070a080a130a0a13281a161a2828282828282828282828282828282828282828282828282828282828282828282828282828282828282828282828282828ffc20011080276027603012200021101031101ffc4001b00010002030101000000000000000000000005060304070201ffc4001a010100030101010000000000000000000000010304020506ffda000c03010002100310000001851e7fd600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000123d7abf0e36c4b5b9a13e5db0f7969df2df09d7316f5f31fb3f1f7e57a039e800000000000000000000000000000000000000000001ebbabcb26cecf274fd58376ec354df908d8e64b66bbef8eb3ebd8a578ea899ef1f26ba564b838d34c9af30d31ab975a72c883f972c3d73504bc465f5833ef08900000000000000000000000000000000000fbef461c6d995d7e5c2fab66ddb82b125862d559f056ec54698c8fbeed44d26c32f9627536316acc48e1fb98d7c5b180c0ddf26be7d8f468eac9628eaa1ab76f29a4c6f4ca353e8c60cfebfdf9e65accd169fd0b7347b278e6df8fbf28da1120000000000000000000000007af7b3cbc7f66257479b55909fd6b3162ddae7cafb9c869399aada34a5e33cc4578b057b9b64bd648227bde0d89af1c4cce94c573d50ab675d8be73331d5abd57d3162f759f48b27baa6f13166abd88dec993cc48d6751d2f97073769445c7ecd7cfd7dc51d55fd64869668bdbdde74c2ad75be356bb6f0d95e27af397d20e2c0000000000000000007d587d1f9fd9de89d2efcdfba37adfa74d06c52db69d76d47f55faf2c46f6d57bd93782363a3ab06782f44bfd88fb3cef6cd736893acc9ef1cf627ace239c78f9ecf1a323089e9b2d8fd432e2c1aa4861d4c31dcced57b67aae73ec2e589dcdc84f2ea6fc437c44be8fac91dfc8d94fb3c5222ba5abd753b0e6af599b142dbebdab2c78f1bec800000000000000001f7ae335ce11ec7c5c7740d791c9b72e2d1dc8eb1f9d9d39e1a121e26217e486ac77aff667ecf1138a731736606de2eabd7c7bdaa7ad7fbe62533152eea3f95f54e7d3c572537be1a3173dee3b85e9d4797e6cb6e0f19278d2f7bfa93c68497cdc98c39336c1a5f76bc9a18247d274f2e7c879fb83da3cebede5e34ecfb819d9ae913db915667a978918eafd60c3ec80000000000000032e299dde359699313fd79b31eb26046cebe2878eb2e5e5fb9afcdbeee735f89e8f839cf889e9d25c77e43b2457339aab55ef2fbc55dbe60ead86fc9efe6d7db69c567adc673d750f94eb6e6dbf29d6ce5f6553983dfcd1875add4a9ccfb6c5b1872557f86b533a8be48736da9e7a467e796de7a45436a5d9ad396a1e2da2e9f697e279bae2a6e38eba06f724ebb9776963dec3c69cd4db646233532760ae8c63cbfa800000000000000279fb3b8fd6ff009f88eab52b4c50c2cc216735278e6f2513e37f9133f2b73f766d7cf4abd51bbd7988c37f9d3bada12d8bd5bff3fb6f3ce2d91cfee1bd1f1bd6858ad3e7faf43ddf18f5f991d6f87d2a36de79cf49e6fcf731e3ec36ef22575b6a232fa1d2b06662f5616996987d387d6f46edeff2767361f997d0dcc3b1866bc78b62b97679cf9b9868d787e79f444751a7dbb17abe73eb6cc7793378f33c5224773439bebde3675abf5032fa2000000000000c98f77778f6aa7cd6f4e19d90d6f4a9f70668efee4d3da9e72546dbcee78d0d797aefaff39b3216ea0e3f4a4bd7b85b33f57fbf7e60f6b9d6c44cb7a5e07882d9b351aec7973b27a91bcc3aef3bee942ecfbb735c2897ba3475274cba55eecb678addf7a31dbb2572dbe57d1d13d69ec6cf2612562249133abb1af16cce94bc2cf39a364a33ba7abe2fbe307b5a3bba998fb871c6f366c6f696d3acbef5fef54e7e73d0ab3cdc80b45774d1ac3c8fad000000000002632db2077bd6f9085e9156b467bf63efdf33c7df5ad94fb8b2648ebe72ae97caf4619dae4fe8e9f3fac724eb9cd31fabeeb764d0f57e77a1edd36ebe37d4f219a829ff0057e66bdd239bf52c1ed4978d7c34ecd9f1ad84dcd7c584d2a75b2a3655271d25a5a7cdd299d5ddee888e89cd2e58bd8a8cbc6ecfa1e4c3ef4844e5db3d17271d6679c8db357f8bb66ab69f3bbc9cbe71f8c9e8fc96898da75741d292f19bd1af6b5bfef1a69592d9b11dd73259f175450a43637f461a5f9cd8737ba193d300000000064c7975f996baa5d6b9778d70dad396e2cc597c7b9e3079dbf531abefe7c2b557dacbbfc6889d8b8e98e895786f946b95c98737a5e047748e51d77c7fa8e4b35a527e87895eea7cf2c79bd1b66bfbc797d0d3d09ca1a747e6dea6df2b6a37ce4aacddd5dcd2ee99f88bcf32e6dd9d19ea6f5cdbe2a620efc77da1750e6593d4b0454ac2eaf3eed59b6d3eabf760e67e5d96375ba0eee1f6b97eef45d98e7ee2cf978bb45bdac79c9f76c8d6c7c3150aff0048376bf6caadd3e0793f56000000000c98fd68c164d19089d5e1dc66a33d576c93c7b9ab2f8f58a63269f98f8ef9ecbc24d7b3f2f8f5e1ac79f6c6e595c99f6c1eff00a8fd1e7eadeead9aad5935affca7999c829ff1bfc8b8ec72cd9f33debcf3efb2dabce404b4777c5821ee94ca36c8ea6eea775dff0099f51a463f430c5efbd6f9cf9179e5317a978e5bd4797d7a26a0a6e0f679bd1a9176a3e7d7278b2c068c5d5b679066c3ebf55c9c77ef5c75dcdc47a6d77d87d6ae1e2cddf2f26265d4865a1dc29499facc945ddd8795f5000000000006cdbe9369f5fe4752728d7dc9b3772eb67ee8cde7e7a9e35ea973ab44c1e784d3f4bc1d9eb9cfef7e6fbd8f3f8f3319b9175da8f75d635ad9649e77232671d57f2198bfd2f579f8fe44e2d18a6233e586bbea9d2f6f2e3f4e02a770e777e4b1c7686f77574f8d92f993d2e39efaa7db33f21e8121a95df33cabaac4f5cd1b47a66d59462a3741a047527e341abcd91f9a1f53b7e34b629ddab6883b7d5dca363257a35fcef6234f06f45c7558dc83dfbf345fc307d3851b000000000006d6ae4d7e65ca0a4e0aef22f5b58b2f1d7dcdf31755ec60cd0113e20e87391df4ddce4fd2e78f35be716998b9cff12bcd7aa7a3e95afde5e9533c5ecd2bad7b1d18ea561e23748eaef5ecbc5e79e8361a6d6cecd5eb470d2fb2155af1dbabfeaae5933f19d83b5c569c4139e399ccc4f5b8ff001cc0ec88ba993be79fc81d63d735bdcc54ee1c0bab44da3678ef552436613ec592bf70fd9afcd16e3cfdd4dd7a423ae8f83cafaa000000000000033ced76cbea7cb7db6f38e95547af18354dfe7778a7a61fa872eea2e6b992a36c98e6dd7b90f6a8eb9befd7ac9cdd112d1959ef3dc22a0fab11b072dcf4eaf428bbec77a11b311c8e8dc77b5708475fe53d63924c74ee7fa1344e4858f9d9a95f92833b9a1260e6376a3dd226ddc4bb271c3aaf25ebbca0e892b0d98e55d8791f5d98e4fb7ef648eeb5c63ae7364d43eefc8ee43cb53aaaa3e6337ece233c98fe8828d600000000000003635fdebf326a53c40dbe4745d6f7a7119357636ce2bf3b4ea4c73fe9ff00072b8eed71e723eabbb8e3ba566b46cb9e396dbde198a940f51f91d41efca6a477a9ca3af799af92ca745df98c3cc7ab792b1cdfaf78e6cd4e6bd931755d4b4af7b250ed5ba393dd24b39b9c7fb27923206e1f39ef89ba9ee3aae4cc8669e3915fe437ce2dd8f26e1099b63d459eea36be6935cc434c435b3f0797f5200000000000000006ec9416e6ef0e5e7a876bae6c519b9eadc10d9b7f24f3a38e6be9098e4f19a78e731c4c3fd9cc0467a97f13119925b011de3733262f2c8eca20be49eb91df657e9079267cc4e8fc94f53113e24be9178a5c45669cc69894c62445e29af243fc99f245e691c9130692ca446fec7b35763df9755489d4dd5ba38befca3d60cfb8000000000000000003cc9c764b33d8776979fbcb7ad8a0485fe55d3e474eb98fd395f8efc6c45c8b9cfe3dc7cf19e165e3adab0ea7af36533992bfb7c5929b35dd48ea761e2a5eecd23b15c92e7a9547c9537c0fb8d98d58a7bd5426a9d325a717a9d736cacc97a346d3832537f8c7b5afcf7930e3f71d60cfe7d1af96061517dd2a0fd8b2cb5b90d8ef9f301eb1d1ea865f50000000000000000000009e404d437cb33cdc6e1fb761da9082f75dd7395a4f9bbcde85af43959e27fcc64bf5cc6c56f6edd9abfeed9af35d6fd5b35e62b0b0c8577d4fc4bc6eac32de2cbad9766ad62dfaf3157cd67f3d7153dbb1f8988db1e96ed37fbc51958e2db940d5b2f37cd456d7ab7357f6e563b465ddd9af79af64f4079f98bdb7af2ab5057700000000000000000000000000004bdeec7b4f9b3fbb55fbafc6b0476b4ad9935a4367355749aaba555fd0b5e97308b1ede2d44c3ccc779999fd5d5cdcc6efd848d2c9a94ec4eef1071d9e79d1c33d136d521b159f9d4d8b4227c45b93cf966f47d7932fa61cf6000000000000000000000000000000000000fbf131efd626af3b724e017f9f70d6ad7aea895c1abe72fa329961fdf1766d3f0af562cbf1166f668b5f8f671e2775faf266f4038b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ffc400331000020202010303020503040301010000020301040005111213140621311522103234404123355016242533304260a020ffda0008010100010502ff00f369d39c671ffc4f191182045156832c0ab58bea653ae04cd6048b293833e3ff0083e33a7388c55471e46bf85545a9759db0a90b1d9ddedf8f76de4684a3202ed301da3d790c5d86b68a7a19103329288e33a7fcdf19c602e4f17af69606bc04a6e0566bb6832c3b1b0b395f526f856a96b80ac0113f60e711312b598375486c7d25c8c79d812adbb5752fc5b4a8d6c341d4dca1ff002dd39d38aaad662f5b3cf8f5d385b9a75c59b9b4ececdeb928d3406268ac71702bc89cf899e64e4a781f719fc060b07dc9e916036821c2dd0afae55b6a72edb9caf989ff0025c640e0049caf5ee39550561be952c76f55c9ded859c1d539d35b56a1c8ae90c88888cf88fe3de24679cfe7ff0068f78ffdbe723de3da738e04d9cca8a7b71d524c48346f559ac79fc2da9ee2575cb0a8c1615760ccc671fe1f8f6888c555732475f390aa6a93da534e7d5ec4e026f588afa3fb95ac500f5a50c11f79e7057eddbc809cbb6d5572371527276d4a6036b5224b7e325f5e1e077f1031ea01c8f508e47a8239ff00510727ea00c53e2d24ff0032a78082283640b419aec4941a6758a613749312c1d955c5ee0947e4d6b8b46be094fa6c5fe13fe07f9119931a8dea56b86244eb53976fabc615fd8bb17abb164ab6a0005351519c4e71c94fcf8ccf3fe31a5693612deace7dbaa32dd7559afb4d532a440f39c90e53fea61ac33b639d91ced84674c72ba26731a7891a28f1d5fccf48175733d1d053f95511d3043106c880588f0cae96459d357cfa75fa9337ae0cab6553155abbc0fa39949f5cc71931c7ef232aebe49762fd3a505b7719f17ec9d7d3c1e275a038202a8967d8e2e004e23219ce7b64cf125f66288a723263992fcb0ce70a623f0b9a8acd86680b14865467ce467c649cbacd3a60298102128ceb982ee4f0be0e4599f23c750c0c0e319031c7319ccf3d5d20f776531c1e3a85778dad3c2d622d8cadba5ac666aec02f522ab931fbbd6a21acda6c590cd76a79c5d05844040e246270084b0be2d08f3101c3ea57617815b3c1ad9e0d6e1b52b8c4d048cc50ad9e0d6ea8a5570a9a227e9f5b17554b28cf6c6081c5f95a2efe14582abc27d51ee38eaeb711d0467829812a488c1a55b029d5cf06bf2542b711afad333ae4c17808c8ac9aecfba65ea16296be85c4461c8827c705a41296c5ad3caf35f763628b2aecb7f7211911e053d320ed3a5c082e6381e70fa6260d2390c0e4d551e648a43848a251e35488f1ea7108a7c3514e33c5a19e3ebf3c5a3c0d6a259e36be33c7a395d753aa38e760e8a956dedadd8c412c67cb5e796bc740b9b576162ae6b6e0dd45a55723f1e8cc826a75b2b53e155eb460d6a383568e78b473c5a1855a86455a318556af5f8d470134d652e092235cc5805b828bfa4c8079023ee6c79d76db6c9eed72fdc47bceb95d6ef50b7b8dd5d785d67a21a30673883ee2ceba9b33451854abc0c504444d5af33e3240e2b5529f0ab48f835b0aa57191ab5e426a22322b56e5b5511049af11355339d9523165139b347994a350dcfa4b327546393ac2e675ac8c8d79650aa48632bc3315595d1e323a8d15c662ba2642a57cf12be0d4ad874ebc44d2471e22398a48e229578cf0ebe7868c9a95e314a5a8a2bae1897a50869440edab79b43d3b67caa5653d977edc72b80d3a3ad5b2e595448041754cfe56346ba3eb343a3eab4671db4aa221b0aac0efd79c3629808902809e327da3a4c9b05f77cc4865fdc54ad9f527333ea17c64776c12a96976242673ab39c3ded5c3dea8b3eb4c9c3dc5a5e77c4b12de991673306522d0c0e0615383f3c65fbe8a793bda3c46ea844c6ef5fcc6e35d93b8a19f55a539f52a5068b959e7f10eaca628ca6b65520e9b9ceb37bb957581fede82bbafdfd8ea9d3d68524b27da04e78de7beb6955432af835e6235f5f8fa757c8a083c9d6a327589cfa62f06876cbd2ed69e718d81945ed936f1d7a6b4e17e362bc966af67dfc1919c39fb75831d9e3f0b63d48d033b9544217865c4f7b899da5c63bea9730376f0c8f5144650bebbb5fd55ef3e327250a9cf1519352be7855f3c2467855f10309db4c7e023c0a90011b6ab362b55bac2a133cfedbf8d7088ae944dcb6331d2cf84818e73f76efdb53aff00d14e4e173112ce30389fc4bf2fa539cee494ef6e1597294295e58b60992be788b20fce32fa7db5aff311c9057d57e9bf1d0ccaef3be58b229b27da4ebe384f3ef8dffabd29ff005fab3d9391c67797cf7959dd5e770720a3a95fde08f8cae7dc5c467050318de75dbbdd2f8617ed3e728221cfdecad41aaac101d3095d72eac19e63df9d827c9a5f46ba113acb901af264a24ba575f9070c74e6d7abc7adafb76127adbe19a5ae550b616fc5d76b5522afe2c30f359ac881f157c6e75c281433b8af698d137c7bb6278afaafd3ce26cc95b9f89fe86d24a1829f71ddcf6e8571e8431909051f70267a83d2939eadfd147c4c655a816af7fa70327d3a3cb741003fe9ff006aba63acee9e815944b638c99f68f9dda7c8a942e05da6d5901fecc7282046b5219b776b0c0abe31bd50b591740fc7c6466fec746ba887454da1f4547d3ff83ae7dc43c3b89f4c59915ac7a4892339ea22ee598f832801d62c9ed4c4ac67e5eb830d74cf1fc11486d2d4cf8facfd2fccf5485a11cda8ff004b5fd2faa49ed33d407dc6f3edb32e0287bd6fe7d31ff67aae3fe3427fa79a59e769fc1cc63cb98ce70be5727dff0088f919f8c80f0f6b7d73205f3fb18c547bee2c18d7d2d7edaabffd4c8168768230007a25dd133f9c79cf5533b8e88e3365fd4b408ebd66acf9494f11419e2eee4b891e7a593dddee6d0fa6b6995db42d7f6c8f1263ed6b46c9796a6c0c06a5cb6d81e359aefd2e2d7dd552675d6b03d69f4dd8e6bb582196bfa9bb282e6d4772cebbf499e9cfb2dfa8c25d415ecbcd1ff7492e7f067e7e709a2ac9bcacaceefe4c9464cc414fe5e788f502e195f5a51775c6331fb208ca2b852c26761b1e885206781c9f8fe663da39e23da2c1f93bfc4477f6a2b81020f1b7939b3e4595261d5be335f3d4ff009cdafb96bbec4f3f84e7387d3c9fbcdb64150a3f6d7cd147558a3fd177f3ac2f1f69cfbd19ef3ce3da90f7a757ef5334d321777ebff8fad3fd1cab70696c3fd475f8ff0051af277fccebf67e6cb14b32b141670ca3d18056586db4c3643ac1877ec9aebb2cb594ce757b6d844114fec6aabbafddb652ad356e807754ac6270b9ce62679e7026620ff2b8fb4ad4c4c830ba03d389ee1a78e8f5287676b97c3b957d336259520735393ed9b1f6b54bf4dcce77326670a4b279cebf7bf111475f1fed6273d3f1cd9dbafc7db65dfe95bbaf81a3ae8e8ad699d15b529e2aeaa7fdbc669beddb7a8b8fa4579ea4fe3c7bff003a1fd797e5fbb9e3da79e4d4b3210e98e3dbed29f505596d4ace1d86b4a3f6039ad48c2659f50d8ac05505f9427d8872038998cf9cf9cf53bbb3a9aa32aafb3674d4d176d1566dfd9ea4625f4545dc571ede9f678db1274714a3a2e44f39b6f61d7cf34e632471f072bd93fc5a51b6b8511b6b119e745cd5ebbf485f3e9efd57a96bc9ebd0cee2f621d755eee75ab8e90da4f21af4c0d5d57fd51f1acfef5ea019fa551fd2117407d5178573a47cf2e66ebb9d141c5ee98e623db8c9f809fb7b433323319113106b860d0ff61b5d9afa5d3f3ff987e3afa355e9f08edc170631d2303c67f3f39d3851c647bcfa94e1db0cb15c6c04eb5319f4e4711af47480f6879f67ff00436690098bd1e3fa83f8bcbeed5f4dda86d0299ceae7f0f533b9101e05e5d28a41c6a287e8a3de341ed66c40bab6b267a3a7aa1025e561ff0057675e3a17abf69cadf6eef79efa8d7fe8ec7ba3d34a17a4aa2a6c8524807869c8aca1c2fca231105f00b9988198c8c3f88c8f79dfc40ddd87df44be7ff30fc7701953d3ace04cba823f2fe5c1912c9f68e73a720ba19d7e4ee308c430ac2726d2e73ca4e15954e7c66d87aabea1fdfa3ea44f2951c355fc0196aef577aecac7dc7617934555e1962cce6c8faa0922ad1d0fd1e7a797fef4d31dc7afc5dc60a78bbf19a71ef5a88f7a31d366307db71bafed5aefd1cfb8fa527d9b1065c7b410ccf7038ef2faa0a2561ccc4c614471ccc414cc614cce7494e6e190fd95ff00b69cfcff00e68f9d4b2219b319a3b649f39f6c38bf28f119ce7e5c9b1ce6ce5608d4874d5cb23163623e9f5c847a755391e9f48cec3490ba148fbd51abeb57a55d3d0e5c3d6305aeb792305134ba193e7c8ae8c41e5860a57ac41dab1b98ede9a87e8f34ded6a2791f53ab85417547f370fa2bfa7d5c2c26672afb5fc67b6df6ff00db759fa2e72758bc8d6846784ae235ca9cfa72b9b548155f4ad93a2d32801ea98f8c02ea92c5c446399e1a754a27beebbbd63f6005c4db579f474163bcb7c80da2ebee07dc1d7c47be0702cf5537a68a87a1539ac1875d9e6444239e622272a7fb5b256abacb4cf81daf25ced2905f475bf5e6a683467f0e7ab1f754ac4d575d754ade3af7b3ff001743f499a0f7d8ff003b05793492db2a5f7ade3a2cbe35e3d0901f6970d7d94ec9390f8b1b0bdf76af5bfa4c8fff009bfd3e27a7beea53ef81051921ce7488e47dd9cf27bd6f78ff004f4bf6239a874c65ae2becd92963219ef1c9e0474e10cce4afecdc6ae6d0f83b05032c5a15fa793d0125ee1f74cc4f303ce6d34f165f5b44a8956bd2193ed263d785592e1b5e9c8e4b5fb25678fb2c1d55b7653d28aa6ba96a9ea8cdaacec5059dc4079767343d517be739c25011ca571922330c88162590c0b34d0d606b939e12a21cbebadf47b319f46b791a5b7391a3b339f41b19f492e27524f8ff004fe6a6a788b11ce98ce32473a798798d35ea94565f79bdc77ec927207729aee6b7536bbc8039c57b47f305f83023aeeec934897bad7b5ca1402e32cd84d4597a92a73afd885aceb891b1b0ab4cbebf439afb5a560a0b2cda5d454fa8a8e54dad3b278731c5fd8d7a731ea0ab26a7aed87c658d8ebd4cfaa6b672b9d5b270bfb1fb1ad5ce3694a67ea94a7146a78dbb34947f57a039f59a5955a2e53f65512e8989888cb7bca89346fa9b4c4baa5cc84a8bd455e7125dd897a5653ed9d51f8757bcce47da3ea17cb9b111528cfecc67358ee46d2e286de060f17f07f1c719cf31b5b915aa5682b762ee94d757d3b7084cc96a8b6e6dfb95343de51d1b14eecdf6397ea9898b54b53e4a365a76d457a66f9b07d533ff0019a8d7c5e8d9e99b487d3b7898adbda8a5450b3b8f8d075a283d9afbabe96af641ced97a1eb0bf49dad7e9ef4daa9bad59b2ca952c1a75a6d334d59d54773ad758b96aa32b36a6a98f5ea2b1a2bfa83fbbeb4a3c2f50dc98cd76bfc9cd8e98abd7f4cdf283d817fc7c0cc8fa5ecc32aee3fbe5699243e4832bb8a03b91247f95c70a5535cbee5c7938ff0068b3903da445bada3b5366a0cff527dcb8c8cf56cff4fd3abebc25c12c34ea5bfd445d1abd2875db7cb62379dca87e9964b23d5ffaad1dbaa1537db541d4f4d04f91ea9e6355e94e3afd48f10d5fa7baa6efab8fecd000c874e7a846076fa4392d7ec7db775761502aefaf2adbfd3cb2146fdddad668102cca9335b606d0857f1ea5fd7e8262297566ff00df6fab1ff69ba2ebd9ead7db4d9889adad998bb7fdf5da94792cd2366aecf61ccef68c845760448f43d503110279ea07cccaba5357f6a3f3ad6f39cfd3b70b382864718fb1d24b9eb8f552f9abe989036f542135f7b65d7b701dfd4e8da2bbf9ea6b10ebbe9a41047ac23fdc0d192a1adac1659ae40d78f55cf3ada371f570fcaba5a6abdacf5604b2b7a5cc64d6300ad837ccd96a03a2a6dffbb5fa25557a6d68da0af5c52bf5637fa9afdaf86169ddfb3ae2f26971c67a97fb8e8420aa9094b37dc7d5b5fcf8dea05caf6bae6c3286e6c0a35faa092b5b1885eabd39fadf52579afb1ebeeec6ba94fa9da188ac7322b82e969476e8015db77e47bffb659c81dbafe6eb3476bcaa739d319243197044d1628daa2f75ad85c1d3eb4a486078dc698d27e76d20296bda6eaea842bd4551b68b52828a9735f668bf4576c997aa408a968d7d077122b121848394bb0ab542cd1b2eb5b3b41aad61f717c2c76bac79dfb1546ce9c42feb5fa7b4db153790c66d2a6b526adaeabfdb68218a5c33fa9ea2530afe9238a63139bcaee2da6bff0047bfac0e849dca787e65c6eae9f4e6e79fa768a27cadad23b941145e162ac0c2dd0dea4c1840ce7a82c750a07c6a93fb78cd4b7a8039d5ef08fda71261841d527c71e3d6914c0f6e3e6473b29ea04a8318ae23aa1731c4e10c18f8eb1c11ea85d752c8871c8ee0fe4000e4050bc5fb61041c47b65e38ed257070b5084d952992b0801e38c8111820821e98612805593ef0c006400c0c1441657a8038085447ce7139e2ae19cfb97b0e59f75844c8cfd815b9bb7762dee1fee2abbb2edf043d14af478a2d164440f431d67abbef28f22c732fb3cf7ecce77ecce792f2c2b360725d68b3bb62605d6326c59e7c8b102362cc64dbb113e4d8cef59e25d63abbd6607bf62321f62625f63abbaf98695960ad8f8c9b163997d8cef58c27d89c16d88836da9887be0bbf6325f633c9b053dfb390fb1ccbece77ecccc3acc677ecc635d65830eb130bb0f98ae6c287bfb0a533b83ea1b3222aebaa929fdcc6012a43b9d8b2b0582b8f6ea8e17c08cfe7e7398c819cf7e989ee6497497e6114c097b4e4e47c4c1639931033ef9d78df7c067393833ccc647cc4e14f39d4783f747f31ee5939c67bc4cce719c6170224b1300382ce6488ca7ab888cf68c9541e1742942477aeda98eb9fdd90c1456b8cac417d79164584e2962807b81f90604b1ed3564cb3b9d71223c64c74c4fbe197035de5e45dbd2040364541c1a56ae4d8b2ee444f3b2b3d85d2775a6f3fb01f39ce0fb95a7b956046d2f2222638f790cb4f8aea497712cbf236354e7b0a70a3de079c8c2fb710d1993f90fb807ae60639c6bc150fded6e9b0cb5b264c0d3099999fde11116711caea932667635f2b6e6510adb537c04892d9c749f57048ed304272638cb0e84afd886c404a35eae17b19e042c98e39dcdbb570e5a36de979932dda540398952ec5aa2de66830ecc36450baaf58bdeeeb7d964aad50b32e4d064baec286decaf7453a74a90f8a28100889cfe078c9b3107d5cc1fb89bd4906eea9ac9db8b2e9e9bf6303582135d55800ee2d6065245fe05075fb3e1d4b32553c4c55fba9c56f2265376a3b1cc85017be1c090a441437879ab5ac574a4226dd8aadede20e109ac628ae040aa62f14204c5352582aa0e642eb6bd9333b4ea6b612a58a190a02518d76f6c9f0e8558acd8ab4e07cd7cfb64f3845039dfea575f593b675158ddd3199d57ecc234e44534108955a4241fb2618754f1933fe0b9fc3db3ae7ab03892752ac623acb75246fde4b0370a9355c56354bb00fd6c4ca26c1645658926b2c0814a510a949caf59738aae95e5ceca335b545ed81818644758fc953494b821830854005652b22b82581d00627ce58da52463779d650fd8b00752d74fd3ebd7cee554916c24719618c9e633ab39ff001718369c2b45b5ad4514ec0bb4eb3c9d7ec6ac86d2fd69a7b8a7388b15da282ee64c7b58593115bfea9cd8d76f7e9abb0922e723da078e2671df91244313b2a8b8b1ea04ce1ded958cfa6d9b32ad42138df0943f51e8075c71c73efce73fe479ce71672121b078e7d414c8ecebece3340b9c84ecea606e6d272beea9b58a62983608a0fb3e560076057d70dee8131d6c10f76e91113b1baf38a56ed1fd242b290caa333b01113baf2c93992ebcea9ff33d59ce0398b85ec5a3117d2d87a75ef8768e12533b3a525b8673f56ac043b0b1224d7332141d195df2921b4d8133922ea8ce7ff81e73db3ba7d3dc295874705db88fff00409fffc4003911000103020403040706070100000000000100020304110512213110134122303251141520236171f03340425281b1438091a1c1d1e162ffda0008010301013f01fe5e2f652e234f102735ede5aa38992dcec669f5f5ba8ab2a1c1d9dd6beda0d1438a55307bd6dd3ab238f59344c7b6419986e3eff2cd1c42f23aca6c7a9d9a47777c91c52b27f03727d7d7452d3c92347a43effdd471471c5940ea9d2970b156ea8540b005aaa5ec9fb3f854f4f1888320397f546b6b22dbb5654558ea90ebb6d6289037fbcd46254d4fe3727e3d9b482327e69f535f3f89f947c3ebfca6d1b2e5ced5358d60b3470bfb57d2c88b2c3a4ed16a36ea9af8e3b86aa8c48443b2c25418845330c9b5bcd35c1e2ed3f729f17a785d901b94fc56ae51ee99953e3a990fbe9094ca785bb857e9c220dd7328d9cc36ba22dc7456f65a9d339eded20f7df44653b1464bc459e6a2932441ad51d44990060cc46e9d8c431b835e08bfc1452b266e78cdc77d8cd63c114b16e77f928606462c1176ba276874f61a331b23ed116434574d008df85d0b1f82b5f64db5c5f65a5d433f245c2275b950ca70f94399e13b8ef64788da5eed8281ce9e4754bff1265afda4e8c8d7881d3846e0d3af1b236df88ffd26c7991669744eb7475e20db8b24190b1e9f1961b299bcc6e52b05ab3343cb93c4def3197131887f320c6b1a00e1f04ec4a3612d2365eb582db15eb28afd57ac6150d44728390af9aa8ad641a7553628ee5b480a2c42322d2709e5e4b33af5913a00a9e6e683744a243752b98df357baa8aa101008bdd3f138c1d02f59b37b143138fc8a63c3da1c3aa129d9da84435ced0a862969aa5b30f0ec7bb73830173b60a2c45d511bee373a7c91b15a8b8e12618e7b8beea6a275306c86c7555a618600cb59ff000d8feea9e84ccccc0aa2a534f7b9dd55cfc88efd551d23ab5ceb1171e7d57a043d42aca5e4eadd9504a6c6276e1621f629911782474540ecaf3e478573accb79a7464ebd161cc7479daedd62ba65fd55353fa592495eac1b665eab1f9942d0c686f929076b835c7f0ef62b0ca812c01b7d46fdd62d505a1b033777ecb96636651b70d2d645a42272eaa9bdfd4dfe3758a477883fc9614fd4b38628fbc81be4b0966469911d55445ce8f22a6a2740ecd75897d9ac3c662e098e314c2fd0f0af7dde1aa66e4a66ac3c9373f258ac6ec8d7f4585789dc5b13dde10a46f6adc21395da0514e292b03ff0bbb92401729b2fa4cefa876dd17c38dd57c99212b0a6769cf552ccf139aa924e5ca0f0ae3efdcb0fd206fb159cbe5f6b6586eee55ecc92dfcd533f9b182aa6291d35d57b3dcd82c2cd9eebac5358c5caa4a9f4724dae862809d5aa96af9f7d13267b35694dae75bb62e8d647601ac5cf6dac18154462588b7aac22afd269c5f71a1ee318939748eb75d144dcac0d09c2c8f1c5a4b658d50d4c713321dd7ac623b276fa281fcc8c3962232cd7f3586baf0dbcb81768a3af2f36b2c44fbb1f3586eee588c79a3cde4b0ea831b1edbaa26679aeab496c4485863bde9bf92c57ecc2a1a78e704bd4d434ce39b2a8e9e38bc03dac25dcbad7306ce1dc625073e99cd514cd9636e508ea2dc5a47e255cfe64c4f92830d63d81e4a75144e234b0f2d7fdaaca48e2cae6ecb0d7764b3c96234fcc6e66ee15354981f751d5c4f69766d955d707b7246b0f833bb39d82c487bb03e2b0660797fc029599d85aa3259758732c0b9577d81587692ac53ec87cd5054321be7eaa3ae824ddf6fd0a1591baf975b28a56cadbb7d83658330cb54f9fa0d3b99a1f42aa2c1e176a3ebeba21607b489e16f24fc3260ebee8dba709a212b3214c8723b31373b70a9c3d929ccdd0af564a0ee1478601e329ad0d160aba174cc018a829e48492e1c3d16226f651b1adec8d0292312b72151524711ccd555073e3ca0af55bbf32f559fcc998598987b7bfc3ebfeaa78392db5efc405552658ecddcaa0a6f4681b19dfb9c5a1e65397346a3554f209407b93b8028d80d388a77cbda68b047886122e3badd116e17e1cabb730445906170b85414fe93579ceccfdfbb309a5a9317e13a84535a5da056b2e9c1aeca6e9f3c920b13a7b1d10dd1f687c55b85b4bf16b3a9d9349034d51d5492f2dbd9dceca869f910869dfaf7789c4e31f3631da6fedd51767ed2dbd91644706e5ea9af160d28f12cece6f698e01d77052e50eec22e24dca274b702ebb2c9a2ea803aa6aee3c2cef7d11ada97340d37feaa481806815bd81aa3c6dec6636b7716d15f85db97e284a216e672c3e9f9108d353bf7d2647f60a9699a1b9958d95d35e00d9380e8506e6360a665bb7e4836f1995fbf44d9875f926cd9dc18d4c99f9f379e814733b35ddb1dbfda1202dcfd135cd78cf7d4ec9938738b4a3317b3b1b94fccf76469d946cc8db5f858b774e373a222dba646e70d1485919e593aaa380b8091db7f7fd7bf7343b741b9459aa563e4d0eca18b3bec4152d0c7bdec9cc0c7ebb2e53c6b655313ec43faa736ee6871b84da722daedf575e8c4e97e9653459cdefadaca46973f96df97f4462ccdca4a9622e20b4a34de47e82653b9bd53199501740b5b7b27ccc6f88af4d69368c125322afa8d397947c7ebfc2a3a2e4c592437253e9a291c1cf6dc8fba597ab5ad71730fc7f552d262113b378d3ab1ccecccd2147531bb40e5d134d8dd019dc9b48c65c83da45842c8536d6b14596697f451384ba47a9460ad27ddb137039e5d6797fa7d050e094916e2ff34c8d918b305bef4e6870b152e11492eb92df2d14981b9bf6125be69b49570b8739b71f05151177893a946cd29b4ed1a94d8dad55541cfd9d64dc220fe26bff003e4a38638fc02dfcd07fffc4003011000103030204050402020300000000000100020304111221311013304114202232512333406142710580245291ffda0008010201013f01ff005e594d23fb2f0a068e727b2116c47f69d4d0bbd8eb210b9dedd539a5a6c7f3dac73f4684cff1f21f768bc3c11fb8e484ed69fa6d4e95ef75c9405b862a3ca3d46ea39dd95de2e8474efdf453c2d8ed63bab7e4c74b2c9ed087f8f0dfb8e405347ed6dd1a976c3445c5db9e94c3bf0393b75153e7bbaca4a67b1d8ee882343f851d148f196c10a6819ee75d09a360fa6c4e9e4777e2ebf644dba61a01d1582c50d1d709dabaee458d2ed744289ee17694f639871775a8a16d8ccfeca495d21d7f1dcdc9047fe530b5db8eab5a5c710aa2d1810b7b22afe53d0255fa046b7081ba8dd83aeaba10c7e6dd8f528858993e117171b9e2291ce1705782917847d9785913e2733ddc22a77489b4adcb74fa623dbc226731d8af0bfb52c781e005f6589e11c26406c851b8f75e09df2bc1bd39b89b2c7e16cb364b098cefdba605cd829a9c44e007919581ad02c993096e3654f9c8fbf6535408dd6214f3096d650c7cc7594d28800d11a87f6504bccd0aa9601ea6f754bef4e9003aaa9d470a61eaba6b86caac876242a3eea597920582f1a7e178cfd279c892870d2faaaa8f07dfb1e951c77bc87b22ec9d73e402ea5fa70aa377af1558dd8f0a36d9b7558eb9c7846fc1d752ce241654dee55231b2700e8f4e14edf4dd46efaa55576546e1721566c389701ba1b7076cb0e7c05bdc747752b7951b611bf7f2d3372902ad3601aa1762f054edcd87841f6c2a9d643e4832cb45546e02a6764cb29462e2142e688d533bd772aaf501518f5153c3cd16ba347fb5343cb45a0ae50ecb967e5627e543272de0aac8795269b1e85137298290e4e250f250b2f772a985ef764bc23c207e548dc5c42a5f53155b6cfbf0b2752801530f52a9eca95d675954c7938153bb18eca9c02fb15583d01517b8aa995d1d83536a251a5d3e573fdde6a9f5d3827b742964e5ca0a9632c7907c85530c630a5ab2d716842a5e153cce7dc1dd558f5072a5931362a68c482c9d03c1b59414d89c9eaaa5b371547ee2abcd83531d8b814eb1b2aa75ec1537dc0aafedaa3f7aa985d25b14ea791bd9787727b0b0d8f96ac8642d8fbf472f11087770bfaf236ad96b718df83b24e93216b708aa4b342bc5b13eb3fea11249b954d236375dcaa656c805b8739ff29ce2754c7e07209f3bde2c543272dd75e347c2f1bfa46ac38eca593986fe4a7664eb9d82a8979af2ee8d1bf19003b152b307168f3e61ba792fd7bf0ba99fc9871eeee9b9dce883fbf0bdbc850681f857478451e6ed7653c9cc7dc6dd3a570cb076c516e3a744ab77f25f5f31085fbf93ba2a5b4506bbbbaae9098838941c7f23ba6b0c8eb05532f31fd6171aa6bf5e2421c2377f1f957b3c46d4623dbfb5ca206453a3686e3ffa9f10034ec8b087629cd2d38764e8481904220d77abb26e2c6e47ba7bb237e2381364d639c3203452bc37d23ae091b2bdcea9a5a13fd22e0a6c855ee164144e008216403496a3303d973c7c26498f64c2037328496764a37868b1427f94e983bb27bb2e1ba6c6e76c10a476ef3647c347fcaea69839d760b26caf68b03f8be24b859c9afa578b6c852e5ac66e9d0bdbb8e056c9d339c003b2baba285c9b04e89cdd5da26f871ef7235b133edb13eba6777b2739ced5c7f2812364cad999dd0ae6bbee351740ff0061b1fda7c96d907fca2f44a8a711eedba35927f1d139ee77b8ff00b41fffc40047100001030202060508070605040300000001000211032112310410224151611332718191233342527292a1b11434406293c1d120245063e1f0437382a2a35360a0b20583f1ffda0008010100063f02ff00c80765a562270379a12710dea1acc5feaba9a750c8dc51d891c95ffec6eac7b564e754a99704fab55b4849384bca63768d406fd1e4560d1e8860cb13f35e5ebd470e0dc96cbe0f6ab3deedc495e51b9644a68af5032f992861b730735027bc218986e27f8f5d7936972db862132ef82a8c6f46de0874149f52a35d33928796b1bc02c4f97737594ffea1480076a69837b444aef51504f6ac258d4419c94e8b5e0e71283b48639c78f1582acd21f78649eed871c46e0de163a5536772388481bc7f19d965b9af28ff0005b584737940076376f6b028d17450c1eb3d797d21e470664a5d1df75712b61b01081650ad90e2164549ba8e5aad70b9a189b8c8c900fa610e81c58ecd6cd4e959f7ae9d4f49a0f64fa4d52dcbf8a014da5c792930c038a97973fb14975361e1bd11a2d17d53e0a1b828b4f00b15773de7ef9840c8ed6feab6582789561acacf5db76ab6ab2c9100c2172b6e6518ea6e277ada6827b158793391d786a3f0abb9c6db885349c437efe65461c5c30de7f84cea18299f921d2be2f10dbac320bf7e339270e9315a22984ffa350384999a8b0bab3837d562f291cf11957bf6590a7870483b59269f9ac311c3567a9bf48744e56286d91dc579c3ee95e73fda55a80c23297e7f05e65bf887f443c8b7dffe8bcc8fc4fe8bccb7dffe8bcdb7dffe8bcc8f7ffa29147fdffd132ab378165dc8341cb82845afbb4f041d4dacb66093751d18b0e165b6c6c71deb150aa4390cea11bf92fde68b871211e8ead30f19076fb20e7be1ceca14818af087f02bd9435b33904d0f0198b894ec4fe908dcdb2f2dd133e6bf77a2facee42015b019407c562ad52a54ed4d71c206fe2a03279b9651afa5152d197e4a2117d2f2d49de8f05b4c2d3c0eb34aa096958a31b3d6016e4119f87ec5fe680a4d73c9136dc8025b4e77759cae6b7c1a3f358237d821d8b9f25926861c2ce0af37e09c69e44937524a0e27678a96999debca5369ee58e94877dd47e8da43adba6421f48a4096e4e6a01a3a37657f8ac64b606f63b721871739580349772bcfdba4e4ba5abdcde3dab0bdc1aeff00a6d1744e8b45c7862c912ea85b378a621173849cb690f9030acc0dec2b9945bab23ab7cab6656d78a9398527576a17ba8225a51735b85dc96cbd39959a5bcc853adb49b92c2db34e677b8ac2598402b332a6cb685cdd39e3c56119ae6ad9a8c804cd921873e4b2501596ced4f041cf24f62dce6c2dba773c11a942a3846e1b943f6f8b814d6e9341ed8d9c5c535d4c8a97f4730a66699dff006cc4f1b2df9afa2e8922a9cddea858ac7ef1deb2bea7101ac78b0016cdef0a10bdf3436aea5f9f272cbfde5647df2b23ef95919b7a45133238632b23ef9591f7cac8fbe5070bb0dbac6caf3efac54e438644bb512b69a0a0da076625cddc0ebf2bd59829b8382f8ac5533f6a140b1f6cadfef2cce0f695ff00f72b23ef95918f6cac8fbe545fde2a71bb0f0c4867ef941cd9266d728063861945ae220d935a3202106f24f0e38442f2070efb6f515407923842fa4fff0016f753a83d1e28b5cd68aa2cf6bbf24ea67ed66a3faad13de9f56a75aa192792631d69c9722a5ddc8e37b4077728c7480e455eab32f5939f53a32ee389751863ef206986476abb69f8aca9f8ada6d3f7979314c9666317597569fbcbab4fde52052f7975698ff52ead2f79654fc562a21b8c73d4faaebc6e441a981a7d16596d4adeb33e0a699cf8af26ed8f54e4a621e2c533a40d2ecae51314e3b53b1329e1ed50de8fde5b429fbcb2a7ef2bf45e2b2a5ef2ca9fbcb2a7ef236a4786d26e1e8a37ed2ead3f790737a30e1bf12b546f8af38c9f691f2fb39b802be8c4830365c3d20a47c136db245d52d25a229553b5da9b5db78f97dab146cb551d0297b4f41f173f25cf74dd115b606e86f7a060de4e5cd794635e4710ad4a9fbaa451a73d880e859e0a594e9c760409a2c20e7656a2cf750268d3f754f42cf05269b077207e8f4e7b1799a5eeabd0a7eeac428b3081eaabd2609e4a5b4d9e0b1b5801e2064b3928b1a61d388620af13ec9472f74a9b7ba509204fdd2a767b7095c7b1ab09117bc8576367216c90c7469f8223a067baaf4593d8bcd33c17996782f334fc1798a7eeaf334fdd5e6a9fbaad469fbaa7a1a7e0a4d2a7de15e853f0175e659eeaf334fc11c3458de70ba566e6610d41b78b7358e2427d38dacdbda8e8f57accb14fa4777da5eeae32b9552bbfce543bf8268e0b7c046174954e160bba77238749a78b74cafad52f14e753af49e7d5c599409d2688c4263a408c6914bdf088c4cbfde440700392c332ac8e23619292117130332a47f4458e71a8ff00559faa9a744c4e4efd51c34584767f551a4e8c4736af2662d3044150e461126558553dcb6683cad8d0dde3fd162e818d1ce50ab4faaee28e3ba332b9f14082a46b94cfa438b71e5695b352fc30953d37fb0afac0f74a03e9023bd0fde1abeb34d3a349641e68329d663de7702b34f68d9c466c9915268cc5f30a0b810e26136b33ccd7cfb536bb6f163d9f6813d5172a868949d7372b191139766a9e1c14c67b9690edd86e98e7d304ef2af4fe25753e2b23e2bd2f1562ff0015d6a8acf7a05b55d64f6e31b4edf7571bd1e920377ce48e8fa0ec50162fe2ac313b89fd80fa2f2ca82e2eba0d2b66b8dfeb2b2309d91dacf5bc2c260e145bbb8a242bee553a16b1cc0eb4f05b5a3b0f62dad089ef2bca688f1deba4a72376139ad0ceec447c979a6782bd36c762f34d5e682f36179b0bcdfc4a8a32d81b8a1a85e510db4a736e60626cae8c53351c3608e5f68a959eec31914fac7acf3039041acb5add8ad9ee09f8df8e792bad27d954b5985ba7b573d653a389fc94345b8afa068e7fcc720d665aa0c92a4e8ee038ad937e07574ccb3d97941f178da4f910209ba77b5fb0fa3317420c2cd54a9bc35769596a7f6270edfc968c47afaaca0d460ef5e719ef2f38df15d66f8a3709c797e88195be77caed5284e4ade66add53a83788b7d98077505ca6e89a353c0fa8768f2576dbab1dcbc9b72dc139dc771110a5a4615655a887612e19ac2dab5308e128bfe915308124ff006539ce738c9de8bddc2552aceeabdd7d58e9b9c309dc854a55ea169426abf82c15fb6154ad6916673e0ba57f5ea5f5398d2719e09a4dfef7e8a307c57d2b45d92d3b4135e37eaab44e4aa8cf64fc977ea7d37445e142a6fdce460ecf15b3161f14e6fa4f21a983922f22535cdde8a777fe4a89fbff0096bacd71dff1563f15d6f8aeb7c559df158da7c4a1127bd581103c54abea269838d970a851a9e70d8a2c766db7d92563aae2c9b9bee84eab7bbb0b2543771b2c912dda7ada8ec035dd578100f931cd531de9dc5d658f7d22dfebf354dfc42733884fa304be6c1173aee2895a2e86deaf58ea2e390ba7d674ed980b0c586fd458ec8aaac3e8bb53398558993b07b977ea353707ae69b5066d298792c6c27982b46a237dcff7e2ac9ade26553d4e6cc5d309ff00a83e4537b35558b6d6b02f98d6632551a7280e1c96f95736d5c55a594deec6d0a9d72dc27277d906ccc26d1c115aae7758e2dd5085b9a731d20261832d116254349693bf7a02ab700393b3054ead17451bce23fdf8ead1e8f3928d28f380a2d88c2725255ecd7df549cd692edd4f67f2d447ad64db5c085b475bdf46a3a1c65026abc0cbfbba6542e2f8550b85fa327e0876ead2c0cc1c5e129877e49ece211a67721329f176d31a9e27a8c3f24dd4f9e3faa0d0475e537b3555f6f55d3638eadb7b42b127727bf0c7a2146c995989392da5129a407748dbb485771cb096a2d7663ec60d403ca71e09f54757a94c7258586d086b175d8ae675567eea430ea79f56c106c5a16954773b687cf552af1d53098f1c1725a5bf797ead1d9c5c9b233d79eabab66b488dcd23e09a355507227f555f4777a2ed4fa7b9c84f05a4d73e93b5692fe20aefd55b0df6b2f14faa7ad2153b7a2355673c388c5b95a854f82b68f53c508d15fe29cdc1d196f399589c311e68166c2305c604f7a675b672909a6cd8caca41a840b4840368659c85b4c6804de554a1134aa7542e99a089b381ce7ec4c66edfd88b584e3d23640e4a6622dda8b44495bf55f7280aeac9f55dd5634b954aaeeb3dc9cee0b13bd274a104c735a2d7f58613fdf7ea78ef5d1cddaaeabfb5ab44e18bf442db91d722fcb515a43b111b0679a6abaa9ed7eaa9d4f46a8d546b771551c08c65909b6cee9e72b227ee947dad557dafcd56e32d3f14c70de27565fb1547defd542b9b6ace102e6027713aee37ae9d9e72899ee466248f8a20e63ec3d2bb371b4a2fc2219b2d1b931a1c0b9a3fb2806e6af9ea31bd5b5427007ce1c2a9b48c82773b2c52c0e81be16d54a53ed84d732ad375463f71ba6bb88950aa514ebdd696ce0f5cd51a9eab95336ca35495e4e31cee4eacd82e116281fa33483da897687f35a49c18201b4ca677ea7c475bf542a66693a67926bb884ee2dbaa787ce38c4a0de02153a6dcdce5db609e3ef6a7f6cfc5693bf2f090a9762738e404aea3d0706972b50778ab68ce45d51a5989dbf55b513ab2e76538a5bcf54198e12aa68c4ec1bb4941feb8f8fd85c599b6913f05888c84f7a030018a776f43f44607ec6cac2b45d15b936eed403e445ecb3a8b37f8a98778a0c6e43551aa3d24daa00870c52aac756a891a9c37e68d39da62b6ba3a2b4cb9c64a006e4f7722ab9e2c2533bd5f7aabed2ab4cfa4d84fa67acc288391b26d2764c71d4d1ba9a634f05587ded4efef82d27b3f354fb13c7dd2887ee95840225b64c696c9e288c03c502da617cb5c93753bd65fb1a1d46e64c7f7e2a93cfd85b4cba310c0556a3d578c8146197f821c355883aa37ea6d1b97918a56955f36b4c0d5b4e03b579d67bcbaecf79435edee281e9001ab10cd865321d7c952d2a988a949d0e41cdc88d5d2b44d07f582e9283c3821645d50edee66f29da657eb3baa386a6516759eb48bfa360a98d4ec42c5d6f8a98447a3544ea7d4dc46a7bfd6728392d2dbc1ff00aeaee5a40b7555344278edfc931c0c16a92e5d75d66ada7b78e6811046e527c17057d78b96aa149bfe1092b4764de263bbec3d1380bdc4f14dd25a229d430eed4d79eaee58af88ee5689e6bb754a8636e2caa694f6f94a6cb1958bd633a9b4f7345d6291e25663c4a0447c6caabe89da68c517c9349ec29cce509f4b822d7b658f10653f45add437638ea875c2c5a2d57d27725034b7f3958eb38d57f3d45ef5d3385cf5792acd0767047c553d42d1b46507032150aed17a661070c88d4f3ca1031bb569a3f99f99d54fd955ed6c0553eff9eab3dcbaee57ed4769ea313d1a8d2e91c530d474d801e08e052e240d51c66cb8a384ec2ad5ea1c4d170387246ad5cea1c4eec45de88b0fb0823308c759d769e057435271b0ef392a41aedb25402d1b280a9676f564642eadcef4ca23ad55ff00dfe49ac1b86a7bcc104c77274f041ddeae6c9cd31192d2346798c26d2893524f245ed69e8dc7c1461582a588eabb82e8b4a692cf45e14d37076ab2e4ac71bb804d7560637310b0c47355bb153ecd557dbfd5055a96f22dda853fa3bad6b856a2106bd8d0de4bb4ead33a49bbcfcd755e7b9517b411b9569bf92273e49bda7f65cb9a7894db8b2e48e23bd66a625dc558dc28e0a9e88d7586d3d5ace7d8767d8dd481be610aec71e8aabb6b0da0a6e2a78a1b88141d87b56414629ed50ebf308b64df7a612f7f48c103f541d4de5ed4e1568df2901071ed1de9c19f34273443513bd1acdeb1b16e4af87e6b7b8f3561dea094fa3500753f563258b44a841476c98ef5188787f45e55f508e4102ed9e66e516d3e19abe5cd5614812e70b0419d059aafa33be29eea8d2dc466e3b75c9634aea37c164135c5d18770421170a4d9df005d64baa7c554a59626164f050cacfc2382f3d5179d7ff7debce39759de2a369c41bc2064db3bab9778a34cf57b755f57256e2aab9f24669d56a75aa1f82b755b61f630f198329e29dc918dbdaa8d327ca34e1da4e6be31ee0351c43c15ec15d7485c7c50e95dfe96844d46d418bd76c858a8f52a7aa5003b4ac7a4550d6ab32b1e70111887482f0386a0daf5301ce22579c747b05432bb6783acb92e96b9c2d9dc14795f7560a758076e0eb6bf2d536bd5172bab540e3014d1787b50e69cca8f189a6e304adc3ffad62d19f4dcee1928c574ea556b0155b9882beb0cf02bcfd358a939ae6f10b057a8d0eec56ade0d2bce9f74a6d561d97648d3a9580216cf6a3758711a91ea2838a99e2e0ad71c53ea1c980b8a23a1a907b1620416bb78585f52987702ed407a5aa1669b6ed54f43a673da7a91d67d9a397d97a177684ca8ef3554e2b6e2ba499e0b2f82deae796a7d5b1f579a25ee74e6e29d5d96c224b495f4725d80dc724ea956d02ee52665c764700a4cfb52a1ae00b6e1c8318c0d7ef3c5519f53f342a62397623546d5319a3a3d53387aa4aed704ebed03c5749634f29e0850aeec4e1914faa2eeeab7b538b9d337738ac5381d1e915c20e17b5070c8855d9c6a42c41cef14c93cdae09ae775c66aae921f675c88ca02a847a2251635d0516549846ab088232429bfac44a6bd8ecf92753a823255c6597c8213c57d1a93b0c897470e0a5d37c8046b52321b985f46aa767d1e4b4a1fca77c913c11a47acd550cfa61522e3365d2fa34f726e2c45a2c6d002c26c7357df64e71ea8ba356ac63a87e08022306cc0fb2b5e3308018b175996583d3658ac2419ec50aead75407de2a79a2c70c4088238ac74a29f72af1c87c5426d3d18757c0a6bea612eab2601c93b1dcaa1ec7e6b0d6ad4da6dd672768da31c78a2e320162e26c80273abfaa33b8fe4aa0912f20058b7080b4766e24b91c79175d06098e7755e397c9338aad390aaa9e2d2294817129a347ea364cf12afc154e2fd8471e4f4d0736bb0941db88564df63f329b26f015957eef9042cab9e764d81c95569c8b0cf82a70b493fca27e09f4bd610ba3a96be172a939f4a131ceb002139a6ed76e51e743ac81c184c009a152d129f59f7776225bd6ea8e5f67c0ecdb95f720f6cfd1f485898642906ea06d3fd540f8a65419e283d89f46a0cc5939c6cd609280306917641b7855b0e65a1c07c53319b1d4da6d33d18f8ae16bf7ad1fd84ed25a670dca879cb74acb6a3b82a7fe60f915fbbfca50754c4ef6ac020e76edfc551abea388f1fff0013e93b812a4db799dcaabd97c6e86fc947f792d239bd527e6c7cdd748dda2339392c22e77954280dc319400a01d689c49f5b0e1c46613095f9a1ec04c7706c7c16cbad0b48ed1f24c836bcaad3e96d04c21d85d3bb8aa93189c30840faab48007f847e4bc10acccaa5fbd0a84f59f28620e8b4a1840908620711253b1ba4aa8e7b8616b6f09f5dd6c6607208b69f51bcfece1edcd3a0794a7b4c8ec427aedb15d8b20a00bf24ea75ba8ece107530ee2d7b174755f55ede110b6bbcf0e4a211ada28c548df08cdaba3c75a3d9bf8a0ea80ccf5779582c5c7aca93a9612da6309e49f42b761841d4c38b736b9a9ccd2f119ea970854c3013e526c3928acd30fe09bd0d2c449ed8403678009d4ea096b82f252e8eab9aba2a8eaa5a7761c2b1384bfe0d4183209f55b870bcc8bae8eaec91b4d3c0a2182a53772120a1d383d28cc919aa85cc7004e16c8cd0258dedc2b168b4e5e0e406e469d510772c0e19ac4ca6e2cc22e0268df03e4b355ddd13f093638792b1bc9cd31ce1b637a3d0636c9bc5c20ead2ef6ec135ee161f15a47b28e1e49d4e26b3769bda9a5ec80d37baa5236b04f62acea727d183f920d7e6de0ae9ba2d137ab777b2b1831686f3fb49a6736e4a32a35afc95baaad9042d3cd49ca55db89aa7a200a01900282b250ea6df0470009a719004d86f5617dd08150e00f22b131a03910ebca96d30d2325659c10b6b76e52f17766af4c2200014e456528c83245979518a4c895b0d015db2b0b45b5584057515059bbb9a3b82b2db682772c2c1011053b133d2c9d7409a4d0eec5037ab2c5876b3995c962004eeddaa059d9b7b57560fcd173c8817253ebdf68c0e41369b6303047da58fe19a639b6c3b6d2a98a94c970119c20e90d595b350dd15c79f4816d689207f3020d1a1e7fcc0bea67f1029fa21fc40bea863fcc0ada1ffc817d4cdfef857d14c727856d10e13f7c2b687ff2056d10fbe147d13fe40afa19f7c2fa99fc40a3e887f102faa1fc40afa1cc7f302fa9181fcc0afa19fc40bea66ffcc0beabfef0ada21f7c2faa907db0a068bfef0bea87f102fa99f7c21fba1fc40afa21fc40beaae3db5028668d87fd610074438bdb0bea87df087ee67f102fa9ff00c817d4cfe2053f443ef853f44ff7851f443f8817d4cfe20449d0cfe205034520f1e902faa18ff302d9d109078d408b6a523480cb68141f8491976291926e8c3fc5e19aa6fa640dcaf9fda9ada98e5a77278680fa4535f9870c8e529b75672871cd660346f426275380c90204fe4b7858516b85b258a6faaca15d6c097224f704273373ab10dda81575c51d56d53bb50d5653acea9764a0dda8e0bee5f73e685c05b7aa1d71cd38b88631a27927691162618135ad8803771fb65d4169737e488e93048c9f2b18dc4412a7bd5b22a37809a5f9a07039ede48d5db686b7a877a0243a45d6168d5628e7dd9a60aa4fa867e05747406df14faceac65b9b66535e378953bf8a106cd375c940eb9f821d29c2661ae5c5c7721e3ac53a2fcf72e96ad56860cc132811bf5977a5b8263b2912aa169f26d6c0506f4c4e2278acb51d45dbf82b330b5d91dcb06438ab5af9218a31eafde2a52670ba2ca38aa543c059455f27487a0ddebf9b1d5e089273fb68c467b54c5d134df85d9ccabb85568f5d015f4621a0ccb510daad693ebd962696f28c95f2de9b0279261a60401044a195b51742c896f1e28e9184cc0f1dc9fa41189db82907acb46a14b3b62e6a850a5e89da8468e8dd626e50679d0cce37ab667e0be8a2f41833fcd3cf5680be6ab6ea0c1e0aa93d59b275429d52bf58e499a28bb4d9c98294b9b44580551f5606139aa9566d161c93b008a732e858296ce25154097dddf926b59b2070471467a89dd29cdc0e817c5bb5431d13995b4f637b4c2c409a8efbabf75d1704fa4f39a7bdf5c81bfa35358412265e6cb6ea007d56858746a707d628b89b9fe0581e21deb42869837ee4ee83498ec721b4daa3707051a468f55878b560154465b5641c0ece475106e0a6b58f761e69f717ca4a1b5b58048e6ba5a9e6c1b0e3c93eaccd676cb07e69d58ed567d9bc4273ac6b3ecd1c13af35aadbb02c030e222f1cd61699ad533e410a6d3b752ee4da148c9cde79a14e90f20c105c7d272a341be928a74db6e4aa577106abacd1f9a64f5ab3ae4aa7418fc34059cabf47e96cb616c5eb54dc152c47ccf9c1cf58929d52982eb48b22fac308f55d9050fac1f1b997951a268e7b5ca1d5f034ee6a9ad88b89f4ce6b0bdec1d99a134c55771845a035a3928931fc1e4993cd4218b24cc4f380fa5fd17eed58b9bc2560aada7500de73582a527b1fcb682dbaa0cdf2884318c4dcc29a07b9d92146b526b1bc962a6c6b5c792c458d0e3bc22e6d36c9cec9cfa54dbdc16314d818ebe185b14dad3d8ba3a34586abf9226a0f26de1bca01a00037040c5c6fd4e9a4ddaccac2e00b79ac1d1b70708534a9b41e2b18a6d078808b8361cecca33650ed21b3c1b751a2d1aaf13bd7478c536f2cd4d773dc3397184311634cab37a4e6a69526314bde7f87ba98759c8b452c2e8eb04d189ade3ba50e85ee0791c913a3d7711c3351a468c2a01ead93dcee9291264e2bac546b074dfacbad8b859714e68385365c5e78910ad9ac74f278827820d690e19cf150ae675ecf82653338a26e89ad59ad23d1ccac3a351ab54f82d86b28043a7ab56a4f82f2a69b7b6ea29b9cf728a549839adaa87b02bdd587f14d879055ce3ed586b52fcd44b7e48ba8bcb385d790ad89bc0dd4693a2cf362973cb24755edfcd4d27b5c3ee994d0dc5c6429af51f96d31a6c1639182006ed22e74961f82c2d20bb82f28f63191bcaf24d7bdc6e2d9a069d16d21c4e68baa3dcf9e09d56a345910e63881f15e42806db3284bc88e1652e24ff1df27508e5280706bc28ab4edceeb205c77041d46a613b86284d9add2372dbbaf2941bc25b91ee4496d6a85b93708d94ec1b32665ca6a55749e1657b99df75611d8ac9c1af2311930a5ce27b5587fd8984b896f0582766656d4cf108f4733cfff00205fffc4002b10010002020103030403010101010100000100112131415161718191a1b1c1d1f040e1f150103060a0ffda0008010100013f21ff00f9b3a9a5dc324b8d1fff00122f105ef2d2c31685d4a020e86dfda82b21776afda6713ce5b3bdfa440297131602d57cbd22590232a227ff008113a21d4c49acca64add4347d6d6f5de51a804d579d6e595c199a75b7133029cb50cf5bd87f6f89904c79ab52dc66cef1d33adc24cb4c2e7afd65c93b352efbb8976b74dcc48cd9f6a2a60c1410e31f92273da2aa27fda1b2a6d31ca7345d4df0bbb6fc440abdda7b6e639ebb6f3e85c70e8709d4c5e272a5e2cb7b988138b29ae3985005d773fb9832b03946ab4328e6e5e92eaedcba6a23d4de0232fe85518d47600e1e62f19e404a0bf3434ed88da77e811acb4d8452c35853bb2200d86ce3ff0069ff00a60b07ce202baccdb980b81289df9a37f3002e10bf88e2a270eb0535edf33dcc13f07d6359c9717d84a20f95eda8483f37347b44b0dfc150c3116eb8864593ad6a6615650f92056c85c0217eb0df26c6f50130d86f3da0bd85ed9c6a07595f88e1bf5e20163e2f1f9970a2a0cd78b80972c56c3f7bc0769addf1fdcee5e4f1ff00ab8ff9f6f13255ea6fa130b894711967d8820ed6c0fcc30123a1f5f315c1cb54fcc08e0bc8a7cfda13b132ff00a21ebd1323ee95656f725600c6a3d21efe220d99661be897afae7ccb377736b860b1e4c500beb998151d5cae3e657414c4ac1473599655cab0dc60b65d958bfddc05abc5ce526b2c3916b62169b7d53ee80bff0029b34a762e24537efb4b346d2867e9299a010f810f0a1dbdc12b5129216889bff8a0ba20da332973294f7a5c1f782c5e00a98f129bd873d985b5982d578e3a4e9f933511c27b68b5eb0695b6d58f8c4a587b557d896a80ec28facbf6314bcbcc198c18a7d611577d59a179789956900485bb99f496da9c9fd5338bbaff00545d9d56ff00aa1ea28da8a678d2370c384ec66478b7ade6b187d5245bf7323b62e968003f3e69503b12c5728ea2ea070076e650f391e8e217e35196e5db5e208d033c1876eb2eb500eaca93abab93f68b58b1064ea54dafebbc41c1fe07e261742833e279bf31e5a3558c3ae0b542dc73e255e98a9b625357c7fc00305d506b1aa02e3f584627da5ba0846e4cc8ac677eca73146f98d83ebf12fd60ef76fded3c896e8f4b9bbbed0ba7965085f52f32a4d10a2de699dcc4334ab71a3fb46ed63dbacb80467976c6f2353730e8ef0a9ed3b7abe2bbca31fa08ee46d1b74b96edc6af30e600edd2e1a8b4bdca9cbf30a6f27ac09690ab6e914ea5820efd271da857da31f31f2ebc55d2f94e04a1c941df9985ef0598845376c072c16546371dc32ed9fdccaa060a16abe900a2f9017e91884a32f01092dfa8acf30c76c73bb16ebc66551470b0836ef978968ab96e3d3fa892fd815d7f752e03c37c309c22101a1c9d6e601f40c7300f6014c1d48783b88bf980d986c9da0dfee63b40201d50fefbdcb45e977faf985f20b715d7dfac532d5af6df895e6af6e13b556bbcbe8e69b2cf32942d60f0b280a3007acc8073b989617cca1d6fac101bb335a2e2aad56a6da969959ba46e69c9ae91ac2f225313672bc4aa26341ef3aa8e91b47bc9d2571ad9ce1ad74f465007718097d7514c0f8f338641e31334c9284e8d2a62fbf68e2f05d077cc520a2c635cccf7a9d60b932fdf680606c67447912f105862dc5c00393331a27430532c86e5298daac63c9294b63a30c2d175a3a4c6b7c6c9ba1eb74bce66faaa5e4fac0652ac3037023efc46a6b9095b7b269d5d4abccad26a12f0e53fd943700ea3dcdcaee965b1e8cab5afe5118dbe2e18ebc9cc3f61fde6035d07795da04db4ceabf11a1a0097616d1a04da8a255d4dca230cd7b42719787c7d622d0a4dbfbd20b2ba5650facbcc2c7edb96e367edb99cfeff00998867ecc6e5f57a23e621ec7e99941e4f53e66954fe9cc1e16699b7bdcaa9b7d5f99496d2c1edab9cc43799864d6fb454e368b2dcfd23d34e4b2b8f6816590c769c3aac74cce86a35aa968e046f0eb2983c36c3c4c007f4398da55fcff32d5dcadbf315a23032663f6e60a1aff4732c2acfd398ced89fb667a74987e65b6d0daa7de60b0f0c57eb280cea56bb4d137b26f896cb083cc1b464a178bedf12aa7a2f167bee15482b81f3629091ef3e23740ec58f03f109e8e5bc5f4663eb069ea71fca6e0cba94f5ced3bff5896176bf735128349f1d664639205a8ad2314134bfa61086f342679665183c01514e5605d188d51c956daef10ad6f5facec038fef11b9af03358db775a4e0065285fe9f696d615fdf32e3187aedf3154d1b08e8737fa62a6e8fd758a76f0fed989147b8be90e0cdefcc3be989a5ae2a1ba45469e7705aa9b68dceefb66882a9476a511a2df57e8e904d544574c5dc5134d1983956c1d70f83dc67757043275d512ce7bed1dfd2975f213c5fa3d6525aefebace1feef300bb2ff46e0683cfb1f3fb7347cbfda1df98383bc68041abac0a5be0facb9e8e843610a9764b8fc928b1775af59d499e09a9ae52c2ba1baf7f79436d55f283935fc8305f35bddd7e65f8c28e74e0fbfb40950e8af6432341cd065dc601431df6516778d46cbc82d6b967b542c9c62a6a1dd73761cf0471c1813b8183ee996f3d6cef7e228df6c717a8330eaee95ef3ba4b496be831870356ab296dd15893a3ad62e943ad227318dd3f58713d538e2116f4e71d43680c0aedde61d7a2b188a0d47418e19c001b35fc46c1c3f7d4b2be05d7f542f429fe52c534336c5f12f68b9c98ef2e4b6040cc2a958efd2af2efac7b65d6b57f12de035a05cc032edc6a53b5e2ab2f7d9cc9d9e98b29b3c23868a338408b6f446af9184c8acec60274628dac016a27448cd8cbd98948f1f4c5ac250466e1e12ea1c6f5de5bc4b0bc33bcfa37055a15c5e20ec52f6b07f6bd653d5349e48886ed87a9fc8e6065f89522a237d7fa94f2a9e143f6a5f854535cc6610727599f243473da2228ecb61fece928e817ed2f1828cd6ec3a34b01fec9404cb6c1e8c281b494d978c4c23f0c1fa90f52ea32ca562b8ef10d50abc11722a09ef1720a6b898b4d2c7043dab6605828e7857fc4af57a3263ae933feb65e5042eed7f43f98c6cfa80d9ed2909712b92cb97371af8824eff81f795857f0a110d23cb606ca5eb7de07d273c88ddcd1962a9d3572b6176fba7522a3b852f599d6fa9982b81c54daee612338db6aff00499157852bf88555739eafb45e007ebc400150ac9f5d4561e3a7f10c3a0f585e0a0e635078b0b39b6bf8821151d34f695fc2086fd4e92d9ae68d5ecc6e51644c3e5f5bf583d761d56a0cdf5fe38a34f03ae9de07ac3e571f46502e9b99045c9aa807ae9c3883161869a85b474617cc4384722730bda7f6eb360cf5c6ad7035f1c47e3240717a9f89fe6e303ad79989c15516d719972edbe8e6e099bb776875f697578cb14fb1da55a1d0effc99e6b2769a5fda8f4732c47f0617f68b6af1cd3fd4dc0f1197786fe27a4c53b11a6f11d7d672f3567a66128d0aa7dbf11955b645baef2c05a9ccd0c4ca5a768a356c731373dab0fe654633a05fc47bd8ff00aca9b954a52a56b4ad287fa5c1abb046ae97498517fb363cfef3f98229fb3d65f61c765e4ebeb2e01f31071b5c9fbe91af506ee5759de9ae25dfeef2c1c5fb6e34c9145d239ae7bca2191fe356d044d5566832e3c6277c22fe9d23dba034ba85a26a6cbb6366eab4681dbc4dfd05ca515cfdd2e0575fab29cf98f0575892c9e2582bc10a84ee8c31e2713a4d97fe114781cacc5dea15b20e0e7b78fbc36a86debde5d6e0d64f01af5943c8a7f10ad077b279115b9c23744a4ec680e196be4427bc7f425178af59778882d6018c0a85ebc7e265846aebaca9500e7af31340a4f6972bd6b9957c205551322eafe918aa04e10be90e135333c222901b132cc7c498367a667293ac2f518372aed00fa429b14e47ed29d1a0c0566b710ef68e019a96c516b6bacb7af42562f8f78214ab54d56bebf1053afe205a8dcfaada768cc81c1fbdfd26c1e8eda6faee0957636563cb1335b58d078848f7644a5477b37895e9438dd66600b0634f4cc7558b231505a3a452d57fb0b7a2ef69ca107ebdfda1deb4bed290872d930c0db86af1f308dab4b194c5cad575a30cd52b03a984562d65dd473003a20d81e63276e5c37dea997725026d87a7583c63ae91577a636f9d7efb4e963e28dbe7f698d378facc1528c3a329da8b8a13dff6a5f9ab20fac0954143fae273778066fecc1d4345f318353147b4ad480b06100c612541be60762dfcd0889a26fcd515aa4c533f221280df57e2376ebdbfacbdacb4e8fc41097840942020c1ca33a5ad385ac7ef33ac01d4ef9da3dc74e63d799ab1788515a2dd28661352dfc4147c23f6e16283d63aed8160157b075f6dfac5b5527a38cfa4db4dc41e6c0adc6dd1f6056a7bc758e8517cdf58474aef3aa223c9dfc5ca64cd5afbe7ef297ca4aac190c77bfb13ad037e65846e25450a07bfe7da35915b5d1dbb42a8dfc4bc1872f74fa0fbc0040a0d4536815e0840a690e0fc7104574f28570fa4ce88d309bbe3fded16a114fd8afb41301ecabfb962ddf0361443b8efd57fb9907716f7d7e7f48abef7878f9a4968b09501f2a7da2294a4ee11ec8fd13f5855f76e66769b6cf044692f519a85ddc10ae38814c53afbb98a99be221cef701fb5d99ef0c575a88bec711a2147bed001b90e76c54b74adb1f48a5896d445ebcf799de9b837640468bfa7da2d3403739eb0d58d39fe10b6a2ba9cab8f5ed31ef0316b9fa11f4432f5eafbf329414bcafbc501b8c618f1773a0edeb0ae81fbbde65ce25dfd062ba5d6324b32e353a9f7c5a22a6e2a1c8d03bbfec66b964e2f5f69bbd72cdd1fb70263076579cfe60a59766e2b532dff0052b92f03b557d8cf132725bf3823b50c3aed98ae46d4f30702f896f44b04bba0295bade63a10e5d18be94c1facdb5dfeefb4d43aa572f26a365943ee3f17398416f49862d4af32e66ff7fee522e5c50465ee00f6fcb158b882c5ac55794cedd0bf5862997d76de89044ad05fac541e827198c14b7fb30286ab572af0b8e901472b7b11f39c84e4cd71f30790c700ab9b94db437190d385ad2fe79955c2e17b98ab62b18d432c9cfe92f38e8f8ac8fc7b40ed0190d3c38f11d253557f0b02c249a5af03e9fb72f11bf63a7b57d602b1d76f9866ac341117b7da662ab5b96e4c3986daa8b63646fc8958a3a476dbc56676e22f84c7d6ff00f10f78f9ac3f30a412096961eaf3fd994a6cba95d57df73f987f58d1fcc726aad98dd75fcb32297cd4fdc5c7e6687dd5e77886a961e21bcf482b03bde614e4f6980511cb0a06a14fdf59433682d57754010f2fa329a0a827edb675c41b66715f3c7e23b4bab1abf7d6356c3299819abdeff12ca987963f2843c52ceb34e6227819a21a95285dba5d4c4d9b6bf49c748d7c3c56f6c7116554566ff841560581fe212f82c3c47f102844a1c82524a3746c8a6d8a13e133c5c5ea622a7b169728b73a0f59781865812544d370958ef2cf322cadf9f6808761260e53bfda1a7cff00002da99a6937c3098bd03ba185f6a3d6018e0bbb97c6c95d555577437b82a170fda962dea50195a5ed61e92a9b6a05489c9a06f81991f52bd7f6d97268afb44cd6f26e84e7cb2a64ace5c4a3dc7b43f8107b4e476a9e487ca70e9c7e9515a9d83b94794d869f747474703ac68a5e388d71be202e9bfb4d33d68e949b9905e4c7bcbc851c3a67257973eb03b215bbf0f10f4f549f3a7ed37a973daf83f46632a20736e252adb39b89617ddc4cc4a583e6ebe262fbbe84ea960e39fca5d96c50e98101021c097bc4a2fec9f78d85e6a27c6050485016a145c7dd5833fba85955f9f99d80e26915839858283888cfd8dd401b6d585e18455c2a6fafecfbcbd1485bd1a8a50afe05bac3225c1d35aa2fcca92c33aff5bccc985a00afd52d796daba23764175af4ed05c7bc1cd662f9a803620e5af10767fb132599fabf49e30a7598ab9a99628cc2956b79f8949dfe1d12f750a3c13257b4ed13ee221b0e222cd178f1fb5291cd5bd76960e2efab0c3420ea730b41fadfda528f03a111b06a03ac5372a7401d1792f1e236be20c3684a2b0b1086d86fc2be26c0c40d15e3bc3fa3ab050f9636ba2f67c4045e10acb1f895f6c166b1a24aaaaf83b033f353a44427eeadfeca0a7d81886d1c461e130d4d8f0c259b017b6bf2265e0c230aac3788f0afb40151ce1e25c8b5fae914b23d5fb4adc92539ce3e63938aae901bf2c76c7f77161dbeb3840e08582f99b0c792ab8352e64e4422d563b46d6a896c1fea5ea85ea8712bfea38f5434bffbee8e16cd2abce141118ddd094b6262eb95d837d25628e0a29983521ce0ebfecb6db94665c4d53798ab057afde1c22b9f1a8aadda075bd7b1f3ff008a99adbcce7cf53f1302e821e368901b4145b285b3d3cc6e8d8f4cebf1158816ef5d219ba71dff00b18569364f0fa45664c555b1a9d5e189d2261c3ba1a3f7b4e0f0a216bd3e696f9f920fb4554e5a5f2cd8f4a3bdd3f296308de370189a15dbf6e604b0b4e53178aff219868f55be77f89493594ec6208fcb08d33651f8457960772fa104a5340f88d375d9ddefda7080db3bebfd4cbc863260161eb53929b30bab2b7555882b41a98227f1323f56aa53cba4c162b8c4b1df1e2243149379a2fd4b3f29d4e53e46e3bffee596a04c3bf45e2b335a6323bbfbe90c0b53db76dfcf795ac1006fef0abb82eadfde65237101c355fbe90ed469bdf4debeb073c85d20c41c8857ec3f0cb9f3c60b953ec20c959ad251917a04b02e388d51e256ea1e863548ae5dea35a9617c5e1f17f58c66d1da068f825b3630f47882687d9c79388ed532748305e17eb5de12bf008e85e844c990f6969e413b0567eb3d685f96735105d8adcc1284e28a74ce2fa7aeaff633ef3a307dff0048d0cba9669783d2ed9a13874c789e203e62c4797afd9fd438542ccf8cfd61ef424315d7e88b584c3701c8e4c732ae766c8051aaba9ef3068d721fbd638786abddcc88b9ae137db4c5e7d623a0ca4bd9d1e631b326398117c6da962eb3dd8c7d894f0dff0044ede8b81fa6574ffefaa314643accd8afd6fde66a0595d9fbc5a9cab2dae2fa75895e50552a3d6587bb9599019ceb0cd2b6bc904a85285d662f853720bcd15e59926dbecfcc2e8b6deb196de3b55cefda5c878d364a4acbe84c866ef7e96e178c90321eb2f3db5ec40ebeed2d1dbd7efac404898a6ba4d9cda01e8fef331b8c404291d47f3547eb31178d9bf5dc68f8ddfef306f063cc4a35aefda5b75f8538758175900f4665c4ea7ddffcaa280f3b73200f4ce23eee77b393e9f33adf44b693ac4d1eb3cd27abfd4d03833e67a950e7acc8f5fb1855cc8d8e3132808133099cbf1101bdde6a54eb6652f1719c0a7b43397fa7e23692184758c7a823d291176253b21417f3e636379eb02a3c96c38c6a638c60e7afee6306ab739cf99605a40ae14f899ceb25755fa4ae9fa4472dff0001f642e089b5676bbc3d398dc0de0d3ef047e3e4bc79f318a11c319bebe3b4b7c684b563b41d9075c66705aed0f1179aa4ea1fdc534d447895bcb5d3aafb625487718c45034b6f3985501851dd96405e34ea74fac0577bf463fca9db61670865caa7cbe62794a3d0a7330cf3b95fef13d4d34276ea4a213b71046d7a204597f74253a0fe5967135e3fc844ea00d7623206f373c590d3feb32f15a869b5e50d64f5f6864e5e78327ccb7e3cd12f70fcff00b2ea4aed1f9878bb1e08ed38fbc78e07477406bd03f308da73f5fccb658c88c6993ea4d6a827d117352f30a2c6fa44e565a381c51eb280700df4cfe21b62fa66e46d86e33ab57762c1d028e44a2afb84e46f440c1fb7048caf3f1c1f7f5259770274ff0012f1fc14dd5ee25986f7cc57a4ed6cdc9f46e19b5c097d3f12c2db7e15dbae60010039ef1722efd88688f70911d3c94c259f58e778c26bb3db52d5f7514f9d47bb61bcc421aaf00eed9f635016050cedc6a2c2e4199781bdb2c5b6b65c5e9a0320c62efda02d7e33f7830203277574fb4b8d96e11145acf49832e45f0cc395c2e4fdf4818098647ec659917105eba6d2be60902f05f68185565b2cc1762df74c346ca6724ce5e0946f7820d09f0510566f1a9d46e5d60e15238d8fa6193e38d0fdf22cbdf103ab67793cc35522b8c10a9b21c96800b722b5cc5edc1c28facead1e1fcc51b886fbff00dc1375f87e61d26895d3e915171e3df78637ecbf8899250ae5cc31e7a4283a66aae6e744afa252c40c5ef71ba635ac77f996a6da5e9fac4c347b97f85e2f937299b80879fcea5732be2b33cc0dec97818aebd6300c5edcee03820c839598cc16ec0632cc390e1a3ac4dc2828c0097d6b4e12e7afccc12f5a1f02d464a35536dee1ce0b8ee4e002075a383705537b0fbc2c1d5b317174bce20a35c03c2fb4ce159045a5c237f1738370dda22f236cd4155dff00a879534557d0bdca78a848106859f4c8d2de7f55c32e2e5383bc28a0bb5599a9880402cbcd4d6e0ada1909e3f2adc6b5af53e255ce7279a3b418fbc11b399f30edc54648f0acba52fc440040141f872b39fb7e298b176d253bfac45de7e92e684706baca8a529cc5857b56cf7d434eee8cf8712a5ce31b1fe403d6a8dd05c0332741f79d2672ec882fb0403ed2b9599803767af100417da52dc0e7ed06ba03e23a45c3196a6122cec0688d128b03275458fe1d4d75868f81ced79f5868b5a9d675f6f78b16f52ebf4cc1827465a32e91a7723bf740555aae25cfb4a0f275132795cafef131f8c9950f4f58fdcc0dedf8978d9dda33f98bcf091a85b4caa97d8ad4c7dc8dc3300fe1bb6b071986aafafd50c0cb6720175113761d388e99d39d5d3e2257a6d7accb4313435ce2040db15b9f58b1c28d96ba4700d2f77edc58496f99843cc393c951f5bb0f93983a162001817e52aa91d34890a5aaf5afbea51dd55dfde107f14c3734457e10012c2aee03550d58866a29008a0ae08423872abf751db20c9c7e669490717b840450a8749007630f885e27bbb842a303c8f75e09b046baf1d6016bbddf64ad8e707ba00f55b8a7dfd1fda991b2f67446ca957cdc45c7770bfd3894110c350dbce6b44c08a941acfed4755c3a3df1346ac36db16f5fac4008053445b7f89b4947ccce7472b25d1d4bc9e9077401d8accc6e6d7a55c654d9d78c42a721e3bc43622984fea18532d8d740fccd80dddb3b183dd96888ee1b979f25f2aceb7a8b4e8a59d91fdcaaeca3ae651ef05e81c67c444ed921c6bf32b55979ae95f9869baa8c4e2c28e25fb483a8661ebd01dd56b335487d22a77422d7d5da2790cbd47e971085d94797fd8e0ef8161c1f98b46f51d359ed994a42bdb6d3a7bc22e577cd65a0e87c8318c55617b5ca2175061a0ef25595a3d095ab1b3eae254c5181eae7e06107791ee03f98b057c93f338421866cbb91b9dcd6184854f7c4575544a5ddcc08530bc45e1f1f00afb4f1abd04d168c1d6f76ebc456fc9aa4506a8b3c5b39b144f09faca821a18f24464cc1c66610f53d045baefb3556fe2198639ba3a4cbc9c4406d2be9d1f1f1317cb01ea8ff0018b4def52afd3f58de8807554f279be3b933383880303eb8de8a7af78cf20d6396d874fa6c777dfeb0fa2b3faf4f98aeed2ce025d0caf01dbdea010f508d0fd842401c33a5b89c669cf794aa56f936fda145a42cfe07b4abbebeb1785149c175133ef4c570021d58287a12d1abba0bad32f32bdae5852876e2644312ce2e6bd2058691ed487e4ba43c952c0142c5a4d6279434f8a87b7bab7a00fb4cf3d59f32f6b547842956b2a1f89632ccf2aca90d81e707d196ef9914e6fa4af83c73a61d41a2bd65aa193aa2bb38facc4866aa798d1afc93ccfd8ca1680a1d656e419deb3f372dfed0a5bcabeb19ea767dae3fb829302fdf106f001d2e34a75faa1aff004a77f6619d144312b216cb4389a2f5c98ac551d65af8ce1c0a5f6304dd1dbc851077a658aa1ff2581e037a7fac4cb7305645f351fe3510a1d3cc54d74fa063da654bedba84ea755470345b6f5df30103c1e882ade0035d1f88f93586fda61df1007cd7de5a77705c7a3bea5a60c6a59c85b73bf687654ff05c652d76c918bc334e31f4a9c85b4ea9ad24ee8ce3be1972194d9f5ae654c74ed07df89b02a16f2ccbe6d8c5af4cc03bdb4d114154646e2bea44fbcbdbbb7b7ea4d2513407ce0b87ac03cf93bcc9daaa159065b9b980dd9d3a4d03abfd41865d3b0e4f1e2a04dcaa8031643a5ac606fbc339831657e939d2995e3f58624e165ea632342525c851d9e112673d0c2238b229c3981d8ba1b07f5080a5451f67b5cce0b819de998706da450788cf42baab71e916538b98952bdb87bc068ac9743d1ed016134a4d72c0e981160dc53067aaf7e91cdc4e986dc4adbdfb4bf0c0c703fbfa4734632ae5cfc32fcff1dc555c8af8bd4d84c15696fefc4103b39bdc6a655b62ac67e0cb8131577f313c342e9317f982c06bf4d4b3e00a282bd258b81cff00b092d178f68b64e9c63ef2f00d0d01a8963149d65ab949c26d80cc1ef04aff005747795e9dd35cf594fa8298331c945a5def965167a3c9ed013d4154e661edd65c9039babd232acde00d625615b23b576181b6e82f1dae214faa087989445db2f06b5de1da43ac28d6e540ba0153e247a44a725b7d5ef30e09dacc38e9318b5892ea53ceea0d45ca64a8294ab25184c0233ca98de469849838473c65b10e6b01f9965b2643f577941aab6afb9097d961cec1bbbc771007a1e0608118941fd3887a1a3bb516f7fc8a60dbd44b11a3eecfa47dc41be97379f599233abbe75eb01c74fa372c8c8e0859395e22595e7bc6f48f465ac4bbbd799d83d3c422588aeac680f8db04cdb85b9bcb0334d9da85af0cfdf5060b5ee190264e6e61695d08debb3778f52aa82eb2c7b0d8276c37172bf667d194e6123a166b7149a563c12b85df3cd2fc16738a1110317766658e354734f8b0c5384509b7adda98d80758d73c8b30ea12f56368b37b09932ccd6a70be49414b89a0b820fa54a95c2d27895dd234307d7aa2fc2e9a61a63dbb51b388751f3e21c48dbe825f0b22aaf74216f4a35da34b6e29c1f8840e2a7ae3715b725cf5fe4ef284580e763e61a3165879cc1a5dd87c1baebb8b2ebd05c6b9b301730f96c3c4b0af22eab2172d1f5626c282827428d9c51d094773f0e900e71752ae000cde2aafedaef0b02ea5ec8a6d6bd79eb52d3c3a259ce9367a27d53d66082a14e3179975cd87b90a0dcc27ccec96a2a395758a7a6636d3d8cc0a054a05b76d461e7fee02aee5a61a8ad73898b6b4748a94d905a2f5fbf582046f74b197b12c4dd1d5cc55cbadd445a3afda16dc74e7af1a88c043cdc3b407dd3238cbdd2e79b80c663b414cbd2e161779a0adee639e5a023da37339628111c9ed307efd63b06cd2c5b71db8d7f2e826cbd45484502b9fd3a4a8c330d0ed79f1c4cd7a133678e275b8797230dbb1c612e5190d82db6fccc8eba14b4fee2276e650e9eaf689cadbc5be217412c1c578e932943aa12818935440e23a1b12e2184ec64cd0f599074d6179780eb39612783ac559d7a094069064157fa4e17ea5f092f323d902cfa1d9d6329f3ce6deff00302f2b42337a766752d95c1bc731094de8881aeb886d99be36c5bd0264e4cafaccf2e953c14fcc2852b1df80ada3df532d681c2f1fbd096adb6ea1c5c62d362f989181be7883be21c1b40d0e6191097552ede65da0b0cd76f4254bab0a53fd40110372ad8da6ef4eb311de3d87d396089c60a17eeee16d6d79928256828e2d7e25c01c97aff308e5a4621d03baa5082aa39380c7329eeab01fbc7799eb535d7140fe60a6fcd2fe3a7ccbf709b2e2cb537f46664728f67e213aeeee3c65fa4034bb4df8e3bcbcb7dffc8e9b960cae3cd96d2beb2980101c773cfda1bbdc81bae5f32aabf22f678f68ae9a83a9cbf171512076d9799b20059e9ed2d4661f91d998072d17ae3f129a29f4366eddd5986565185f8fac3ed7edbf74c51937e98c9f49b840f76274bb98a2f6ca187e63f1b95360d8a0ddb0e00ed482a5d571941da7b2b67f6cb505583378e772b1ec12647a1ec7cc4fc79473f3f79cc4db471c46b04cf88ace87230e8a36ad2f1d6645dd768b9d637ebd7acb604517adfb730611b0df4d76c450a58760f68debd9013d2c8270029f7541c9474a9f58ccb96c72dc570a5abcff003aff00f79cca773b7d2edf69bd01c2ff005eb113add335e3a442a7f055ea6e285cde4a84b6836ddf7dcd9d3619ac7d22cea00faef31806f815fa7895843dc0cd7c4c1fb511945ff71a03df5d83d7700676c1b7ab4fdd46944b9bd4f5fc4f345820e5face615a1b1fdb80f72219b165bd88ee93ba7b2fa67d65cac313ebfd4b32d4670be2122b226ce9f3353ed77f7f42e54cab8ac98cb8167bbfae90cee1de3743e6e3538c61c75f76b7290dd5f57f896c565ac8de89760c29791d3b59f1121981aab98262eaf99407f02c5cad079dd09408052393c988c899d7fdfac1cb82b9be3f3016ad3479759e467d5f77e277d02a1f372bcfeb0c93afcca5ff00e2bdbfe108ff00c3b9b8f642e5f596d658e9005bda5bd42456939b4be19234d66c615f8f7863908d7b8fc4d2a0547f67c432d03e5e1c4a1a0cb69f4870c5537daccc381db0718d1fd47c63aba4b44ac07ae3a41a6c68138c8b7567b5e88752fd15cf566654ed3846ef6b2c1fa42d6ed3013443ee580a08ea06e0a6ae725e388dad740af699794607d250f6b2f523563f033ef16207704d3c9a0dd400a94e5d54ce29eefc63507720bc4f18e212bbe289053693ee998156b0aa5f36e6a089c16e6de99e25cda37cbdbb7c4b0d35d7ed3ad97b4bf114edff0096c0a8ac79bfddc26a94735fbc4f50ac8c15ed1a5686b40fa414e33b5bd3fa9d59c2cbf7d221cca416fcfc4700d58cbe3645cb2e55e7f694137e79960d008fceb99a94cbcc3e9391d88966376346bb7820964ccf279fde252c9cbd61ea0e61b07fc9c74f48d462bc6978d1de1c2cdcacadfb749760c1e4783717a2fb55fbfc462b86b56fde5a6f9816be532d5b4e76f98d46781ab0f4c1301cd03d5e91262f83e939d59dc450608b76ff00d1140d6a047ad86a66c071587ac14a1f32ae25f0fd8c743baa2916531b358c4470f596af5e7ed1253430a9cf0f30df5bc3e8840f2418f57ed126b10141defbc55ebdc717d19841182f8c766c61c679e8ca55e2bb56e1fa43050f543031ea8f7fc47b7e1c0f0f116209bce55fa545051626bc0c42c2451f07ef33b6b148b403956e3d0450dffd8b7acb76957772f147c20392c6a998635d1e536006367ccb2a99cd3e22d0d94d1eff00dc1d0d8b22e42300fe3574d6477292ba43f6e66d375aaf6ae9034b1c581c5274e430f36cdb5f9dc58b7bae50541777a8e7fef8a4bbb968ac91ddb6f2d3da3714fc999f5cf84d46d6d08ede25bcc55ab5a35fff00407fffda000c030100020003000000100c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c300362d9c10030c30c30c30c30c30c30c30c30c30c30c30c30c30c30c12d14b9c4e2f36499450c30c30c30c30c30c30c30c30c30c30c30c33dc88645ce8d76992cd503558493c20c30c30c30c30c30c30c30c30c417aa8b73548ee3c9e819172e9410b6543b440430c30c30c30c30c30c34431cf958601da5b4977ee73fb6e02f7931979cec30c30c30c30c30c30c73f05b7b0837f25dcdc305d2e9f3c7ea18e392098eb0c30c30c30c30c30c24cd2bb09c1bd4da27097047aee091f116d54ee446f0c30c30c30c30c31ef54dc483b0b741932decfe086fe2f35658cfe2bca230430c30c30c30c3664cee25302d2a0d71976373f0522498ea25a0cbc0579d830c30c30c30c59e9249b9d6f7a582f733517206fc8814529df900a0d162aa0c30c30c30c3cf7a8c37708de8360c63430bcafacfd0ea6b4bbe1ce282590c30c30c30c37a4e9033112d4c40dac971e4cf7222b86f1deed205c772ed0c30c30c30c3e5eb190cb8fdf1d88504a3412c04db73f3933c5ae027e2a90c30c30c30c309f3991da0adad7319e5446d111010e824aec16b89c9c6830c30c30c30c30ef359e1b7565a045c122f9497032d59738f238edf8a22030c30c30c30c30c19821dc325d6b409263400f90c50d55fe1604e4c97b0c30c30c30c30c30c3115a0d2357fa514510b048c885d118e1dab29add8b0c30c30c30c30c30c30c9351dd8483d3f0da6d5fc7b6a54103385fb896830c30c30c30c30c30c30d30efb62b0175f3cf6facc53b9dc3a5c1016300c30c30c30c30c30c30c30c30c30c0db72f86445563ff23a5188520830c30c30c30c30c30c30c30c30c30c30c30c3080dca2254a9d308030c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c30c3ffc4002a1101000103020407010101010100000000011100213141516171819110a1b1c1d1e1f030f1402080ffda0008010301013f10ff00e78409714f0dc7c858ea953c19dd6f8b58b5fc9a9255ed42d132d66ced97348018ea5a733e51044e6db1174dae96bf127eb5a3a04d464ffbe150f142ad62f05bbbec353a10d16ef9d171755984c6d104eb6e54be5175ef1e7963b73bc8ab4cc54836545931c362339a64459a6cf0f4a5b2a55859888d3c8d2a0c60b19d6dd32f1c72be9c6acd937241fdd2b2a8ff00a314049cb80bae9a4eb6a9ef14587627d4ac5db567997a2115b99fd3e7508272f9f09626957352d69e2b436c52c8daa34b1370e34c138f1a39737962f9fda54c99d74835dfb53124e584639daf47088ea5cff89e44e6c6394e3a12f0a440610b7eb2c7a3523ca58c5f3c23a55fa5776f7cedf14304628a6a9c40c71691201d26d3c29143e2194df954a09d7c016fe0368a408cc27eff002afbca36ab858beb5ba34c452a011962e7ae7358128217c64bcb369b423d0af55422f8673cf5e7670e7135d79725f581a14d4fecaac676db3aebc39d021277d5a825493a29bf8c0829936f088b34915866995a9b149c334a6cd242c7c0b22b56c8eb351574d439b2bc6629248b9ed53134e9b38ce7caf7bd32f52a6f978f7399a76a1924fe8bc402bd2b2a8adc0fab1d28446141caf533af81b2b358a9089fdf1276a6d4136286de8220544519a8c8c93d69c4a84df8f6a8a07f7ef4a960229497c644940e686192b2cb531662df1cb6a9606190933f752dd0f6a4cda2ee9a3e48f2fe86b187774b5e1f5e9b56933ed4aacd0395300951a7cf0a9a2c939b7a4f9d076a1e5f75c57b5394ceb6c75e8d01268abc2fb0f7da920e5cf4e5133233ef4e0216212e75984f3a1124a9c44e2ac60f37ea95021188a919a325838d0b81dca0614beb81c22a0c8f6f9ab72bdcbe6a1b1e47cd62480f7a8fd13a44cde997987c7ed7850d12a61bc1137324249c677acff27a20257819a9ea2e59c16fb886b439694fbb6f7f0221055eed2be2a2266621b8369b9167bcd041c599017119709648267262a3dcbc44343926cc709f9a143958e7f545c209b99dd1038f8a27ccef2fa11fb352c7bbc9a4831ddcdc7957a856946969c86a42998f786e6941351fbde945808944f1a707012cf5a4269f9140f724715d3ad0641c7228bfedfbacbe806d822a05689bc7866c95e83e466a2d53004db6cdf07f2b852c24df2f25b2ed31502965b36e9bfb50120d8a5b47ac7dfb4d137a30ac14104652f5f5adf45e4fdc528ac373a67dbc17491e6fd45422c2b0723e67ca94a5a449c6b521cc44c7edab4389ef4096203d6b8441e587c025704f7a759959ee34edf6c1e9207688342991b249e36a9ca620fd3e25ca272b521310812710a48a71b8fb433e5bd0edbb0ec4f075186670bfc5d24052babc4317822396fc59abb09cf86287527d5b77fa9a9d1a01dffca7d661ee5fd6a6ec4c77b3e08f4bd0a8f55eaf804b14358c6e7a9675e7f0e68a1bc3dead9c09f6a61eec5fa59a7282140b9ad8b4f5a6b1c27952b04db5fdc6a2fb83017d471c931c6b5f4e31f358c0739f635f9a922d80d66931247ec54900f45d28446dbc7c4d2e809e6fbd2ccdc3c6ae0fb661ea79cff05e04ee6fdc9298d45befd7f66a29595bc026ae038be87bd5fc499c74a6f831c88f5abdb8cdab7dd3cf5f3a9c46027a7b571ea4ef7f0022e93fbcaadd2384e704f3609e34811a8f46958787bd106e793f7140cc09b6d1f5e7486b497f75a72e113d6915ba57a9f3572f1f668d4b89ab440c162d287188b04da2a658a78befff00918a4d7c3a90fbbdff0084479093a5fd292b067193969d714cd2475bed51697c0b261c37d3a55ead9d8bf9cf7a41428316fd8a2a20b830719996953a19b096b72e939a18cd95b938b79d319f0386bdbe6a0d24726ff650f41648d9bec6bd269c6372fb14b0dee3f59a985947786a6d6207a8fefd6a9ef523f75a10ee27eed539eb6f768cc3c3d4a62ee8fb51bdc1e8d46d45916da66808b0dfd81ff6b28412c0e37e553ead31e00b8ad288c335082d438aff008f7fe2b60e026cf3c17b7da859ee08811d6fe96a600a38d5e5d7a8812ebfdcfa5000080a29f244eb18a491c45da060395598a9492767a7c5002246f3f14fcce6c7cff9408e02afd48cfad40e04dcf6f05c665bd1fb869afdd28c2d0f1678b4f6a22346d3b347f97ee928030c5d1b2ce1d48d9b5233b8ccf80a628919cd111691c67f476a921392f173db0703f8b8c36d626045874b13d2b3968cc6f1f35066298a61b5442b34445e9a7ef4ec7bd2957c26734982c5140b62ada784da3c435a40b506052589e0288a8bdea41f97f477a4b1a68162a606fe6647479de6743f924d9a8c569e0ce872a95c4c52ba95048b19a51caf4b5884f3c56349a18e1f9ffc4a654802d2966b9d0a63ff00109d94822f560a5016be321a662d7f7da9db016b3bdf8ce97a1255f5f7a97169732ed96de7499aefcdd2318e9fcc8ccbb1bab07a5f262a730875337d685a6127c4269a0163bfee14c42ebe0c4c67ac7b3480a01678f3e551183c403ba7dbc263c0bd8f03520da8df642331ed6a9132d0b0152866d4c103b5f11d7e7353962428458bfcd6409e73dbfaca7cc1376594ed170c4db6a1ca9def69b8e29baa3c22f6a0d815978ca27c78d293e3c2296694b4502f802b056a56014ab6a6001967853d01304da586cbe73c28c8c2079a023a05f4998b7f60ea13aef68f93bd3a0e7d3eedd296486298146b5dc5dcfdd688e61fd72982f2d382505ef2cf7b7ad23d844e56d8e6c97de8644e64e66d3db5e540632c0c80a5dca62f7e952058b81c59baef8674b86f4ac093a0995c1f8a9bad09bed4e5a52c9605c587abd68c2849be9044b3ce4e9461b150e937f2f4a4781095e2e0f7ed3500a4fec70fcde8bd28219a098c52c28a91f34248b63bb07ed28e18d02757e4f3c7f71d0ccda804a2082860c05eccce744386aced4103264463ba4238e11ae696c20a184b8d2383bfc9a9a531ca85b3bf2a804d892c9339d295c80306a6addc6877bd0ab4931be8e356401820c4e52f97569e642e386ef36f2ed11bd04425056b05c99e536d8a89b49278869c0d3954191042d858bf3f9ad088b69d8f072f3a6673b98c4b2c5f3f56de2b39597f72a257aea2c3ac7df29a764c76faa8ae0d19f7f2a048371069b42ed3aa31ad3a650599bc45ac41b114433066f13e5d7fe4439a974bb62b174cc88f04b89de9e101c197ce1f269d14f11f78fc549646931cb3c6a45ce6d51c5b97a928b4d3cb2b85aee079b35602fbc50f8bd37fbcfc5e891406b36f366976c5a1c9738d37b4de8786099523ce27b34d10b73f21d9a8055f17b1079546b8d803d3fea83626cde9e905bfb05bca8a66ba607949f15980e16f6378b2df40989c51a460e5133d9b46135b37b185c74f29e7d624da9c8c5d6d6edd0ac61fe6dcaa02bb6311a4ed13935d291173006581840a4260de68181d1623ff00a83fffc4002a110100020101060603010101000000000001001121311041516171f08191a1b1c1d12030e140f180ffda0008010201013f10ff00cf00b822c052f8e3de5bd672d39e75f4f988e686f2e7a46c52dc73df9c72b37035c4a234f3ff007bd6179133ec3cdcf9131d55c0d3d3ee3208f7f3d67088ae1055ef97ba2ed466a0a8b736e64269353c3b7da23974be9cb1704e87fa59f771ef00b3391dfc4de678bdfc478080e11fb67654afc6b3706f330905de21a191745dbc202149d2a2b453fe2b28ea7d7dd45cbba71f7ef28807375efc66330e92af2ec58455ba837b73b2b6d6f8e95aec41a330de2041b26915f9af5f4d2245d1d397f23a321cfbf5a88c693f7001c6838b2f0f1c3740c661929fc1c10e7f95dc4b9515be5b2b7c6cd332f8c6d1ad617599a6985540691b0f7def9a7ec27a8cdc33575ef3e32d5881712b62d6761531b6e17a6d794121953028a8636b9dab4808d65218438bf8effbf1fd84ea72f5c7f3c633de6c78c380c97bfea66bb2bc7ea6bb15d664aa3ce3252a74999d0e3048551df84cd3bebafd312b59aa2a54cbe88040ddc0a88a85b13d47ca226b1d15542ae932d03d7ea20d59ebf5195ea62235c1828c92c0634f37775fadcb22c492d0cf585930d3b122b0047c4505df0bbd3de243479eacf426a09c65c0555cad5a6f99f94f0dd17aa88213c91e1b10aafc9818de82b779f3f18d96ae09615aebe12f0d99f886fcbf3149a9e5c664bf7c5ffdff0022e8b6dc766c28372cf78cb5ac8699e3a7ea158e1d79ff00c97dace76177704622023b03857c4a1711ea4c7c1c6cb17be29ee902b65709c37e18819c626e23fbb10477b2c2e55ed11439beb4c05fcd115edf5247ab61bc996e729c5ecc75afd20aa3581cf0eddee9cf6d4a670cf945e219f29d4f8421ecd9533f1f7627c07b6c76317d752e3d7e2258dd2dc80ce02b8655c60cb2b4982385c0014ae514d2fe1298dddcd408d99541d56335aa35ae347a4b9e60f1fd0767767ca5eade7f915b0dbe81fbf894e55047555000356f9cbd61a29d2e729a6c2ce258afbdf2e7c8fa8688b5e29759ae2228df8efc213d06e0946e7e194a9e11746219f44c1abafcabab9578775fa2e3d34f39bcc2186f68774ae71cf9e906028c421b6de2d7d454061677f51f983d487bbd97bea690364be1de3c630ea1a10aa6afb454cf0f922f512a9dd1e76e6e1a1eb3df7b30d8e4cd4397c92c1b977e916bcfc4f96535745f3dbe6f61737cc36f7e3fa731e1bccef3e715480d975acdee25ab6bb1484c4405de38ec1a9b25e552797dc44aab9bf52f45ac41a150e1dd6c000dc88db2c41d426ed70ee978a9d8627fee19e1e7eba6bed29295456d5aa9d5c194269bba779fd26aeb03c3382fce3f843a42f625c32e4dae41b61b5034fead20deca9731698371034ca10fb95de3c5fd636b8b4f3e708816cbb26fd82ca8fd867f0df1d21f93ca5ec1cd6d72a35805a6189414c32cbde40e9face9ebd14d19637a6bf8b7ac1d81dd156886d343f244a18d100182066e6f8150aa5d1fc5dfbfed051663860aa8e72cbfc1c436dfe145dfe8bccad99cb741177d444cd860f3fdc4aa63bfa888259c654477c4ef22816c2cd2dc0eba77e12807179e7c7c0ccbd7a29e83779ee8a69baeb375bbce581bb2b7f4fae8ca0e6d2fabbba937c2e9e33060032d16f1dde04269635d73a1e51999805f1ac4283bb5072defc79cb7a56cb1d20a3306f483aa5d8612c56dde9a787ef56d455919335e7bbc7f934a13a97e529d55c1a718262e295a3700052aeae69dc7ccb4e247cb77494aadb37aeb5a0e34208a2c5df5e1e04a5b82d33aae074eb5314339afbe6ef8a06c53d374de0ce7d77f5dd315c9bf5a2b3df1f0b45681477d62d4469735e982280e7dd7ac39d6f917fcf582ea0d3fb9620703aff906a249698b02eb869e4e26545f7d652a23976ccf7cb37c16545a410b0ef3e18806565aec95456c04c2e7112aaf00ff00b30f7737b7dc98528e47cb6c56c2f36ffd48daa60d599cf3ef98e6be2acefe61af283474e5e7035afbf2cf58ba888e08ac7300cebcfbe10565756eb4bd6966aa3ffa83ffc4002b10010002020202020202030101000301000111210031415161718191a1b1c1f040d1e1f150103060a0ffda0008010100013f10ff00fcd9898adb8266111247380c40854f3f9c6004549aeb9f8f3971ff00f0e0ad4b3e27151303cbac736f48abf9de222e84194ea7e4fbc717c0d624a1afb7a378e2f06510135b0df32454f3863450509342110439d6ee24a01451637148a8531814a30e30a30adef4f78e2e9844844ec79c2511eae32724298dcfff00c0ec8bf8c4e03f3ef04492dcf75af7ac0637d9122b4369ea55c5002d872092c90f171dfb164a840042fa41b05e6eb278e45b049e7b91851ef2a0949200adc130ea138eb0416b0714e343f2c512c95c27d11a48bdde26a42c5249b20481a2751940a86403828a9085309bbc11430a7d8d8683be312944403022a5c597264128a657c3bfc6258aed07924a80fb2310c24e5d0e0644244d73884489d57ff67d64954477feb061cbd27ef1f830dbd1b5880feb8f8c1078a7a28bf3802ce855903703a06d92eb784b41310c0e82693dcb372d61dbb3614e812133b8a7db8588ecc48450c4bc916556a4c88ab94e84a6aa263507eb131521ab4d2b7a3d62d6a00562f24dc35cee8320ff002a20da034adc44e0a538b2251013371b03c6bce1d117dc1a0d457477e300081a73d02bafcfce5e671a6113269eaa63bcba245d26c180d24df4ce10b01f4a8493898c6d6618c53220b224e9e0a832f77fd82942c22226b9de038408a927308d31b8d79c3db681880dc6e297f795111735ff00e28a27f3ff00d340819e31e4a3e0ce0682d603bc3895810135b7df9ef220804ab0d44b9ddc381d340b62e05b1cb8bc674c98234245b9268f2c9c5760555c5c50f8a18c5868532dc5706d44d178554ed534354b713df8d64149119841a079e263075a2c5c5ecd25d171bde0c8957b833af297e726a062400911be39d7bc4651e408a8d1d8ec8d83e708c0a5b11777c846d8712c81d08b0aaf9feeb1d005a95b1b7cf5fc60224b469ed2711ebf8c1f760828f01c27d564200a22187d1f9f7947a009d82965399ab8de90c650a988c4f524ddbfbc4f8d50a1b241b22831d04a7786c9b8f708c986da3019ec83d44c8e336a5bd4495649b2b8c62089d5e4f4b808235cff00f3b6c1bc2404b122d60ad2944c79c77ada2d3c86b6644fe95f63893874b7e326b00b44c44c84ad8539c4ea8829c097c71b8c9aa5210951d2aa468ac4846884c1b9b471872f8498092446610f083e0c69b9a111089b2f7e3f58f59551992cd4d0cdb47780620021101c5562a9445fe320310b00c5953bd7c61f20063fbd76e00837ac688fc9e232ad009bb069f3ff007ef12088c4062049b3ccef01883557620d1d577ac6768182964213c1af15ace000340995a96a68ad465a00192142a252f5de13bb2af546b07cd8f641a3ebc0c629165b420e3cdcef1359ca30e1c6ec7946f0e12c618869263523caf551961c2550164ddcd0af6f3bc3098051a0d3a42de4bc96c6c110581842e77d4ece7ffc524cdc9fecbbcb894490d8a54832be4dc797266c86582bb9e9004cee6358f04124222c002a22e3b492d74daa901268b48b88d5d64d3ef09091dcff0078c6682484fbc84847ff00176834b44e25181705bffb8d0b26e06a63fbbc300ae38004a347d6f7854690c2b722d03f76f139b143ec36a22637135f84d30aad4cb680be50cd358d819c0c2220d0c9304b1f9c8a1d14b3a841c9b5a8f18e93304243044424db3b30b2aa8652c9c86aeeca6ab102c03092083ecc4b71ce2d5a0a52a39a6e17c5fce0ab004b411ca63f578a60a5d8cced7b9bfec62ac2012bd0e08ef89fde001b1055d3cf7c6172da25413b0c30f89e2727170446497e0ebbafbcb708108527ff005820ce50acf1cb8f064254e2ba0286ad3133c599b8fb40854129527f1664550015d700c53ef0108874ca0910363dcb78949564e2b9c0b72248140ff73bc3c5515b27bfe58aaba510accd5c666f0060492ca543ad4ef519756488f9441f930858410005220d1749dfd629d0985da4b27c5d566bf5906904a6a4452b6643fe0a000d42a8cda33f0090ad688d50d3004d48d55c4f0650a10ec192cbe5ad601d3b5d059b9baecfe7221004e12c5f1b7c25d6448205220213342b964a33118ab5f0810aa5964a6545f6619d58e010b1e64178af7876ce2d1128093a17b3d65d6780892feeea7005083a9c7456a9f3ff00c030b6363839f07bdb815b8c92f341efebdb80125b61f4e7c54fc48a362a4104332848dd72cf00c0199c082c9d08f0bcb89a924a9c0b519689e158fb906e2219dc83046957bbc912802da26d3588788dd7181226913050dc110fbac22b2b60c4b4889d87ac271254610816180a997efe70920a8262098aedd7f7884f80f8798f53819ce08e124b0d68c43ccf95010a787d388b1ebe722f6f2928c53937bd7ac1ec3484b99ad92f867c5e460643b05a86e79631932ca78b4175e27fd984701cc4ee03d8aa6ef1b08acb82a04b4d84d13ef017de21fbafce4e28c660843353e5b8c31aec6c2eeb459d1c79c405892ceaaef5b89f8e9c8b902ca6442fd713d35e7245b01233202a27ab8f1a64bc86eaa42012df45fc79c1c3c115888549d82583ce0e2122421451c164c5b9bcb3322c61dcf27af8e55ca6d296200692d1d4e0af52f6ed698dc52e2c0b403b29fcbf6cde310d692980e1795e8eb214d92345d49c8c8781be31a66246d67636d9deabc36393ea90efcae61ef780511558f71a8af7df1898104c00723a8d73ce4e01122941b110e2457de36083004d765c5ea6323c348449150cd2089dcbc32e02368228498952df8f9c8e84534c4190982d1ac8c31b008586a578920826cdcd71263fdd9490ca55b2623f4a2f6920861d4344c8cf1de6a487691f611e3592d47bfecc8c3678e3fd7f9818ea212ee2e347fcc72685bc8a86240a2e9678c9074ceb0db15c2c277e5981296881161731b662dd36aca6d31b16034281444fbc618371f261e7b822e62f23f42562a5a0972d87ac652b441072a267bdfcf325c60dec017e17f9cbd4b02ea51f5718ace21149983b77647e304ba12ca827ebfe1eb1b365b13d0f1eb00e18c0b2120601dc46e227bc843c6552ec61961a28798672de0a6c6c9823a7ed78d61530025b676cf3477660594363310fadc9b70eb85c188817e79c36706011a5477f1d5e05208e96e398dc153d4e2064912d634f8fe327a2a641ca88b9f2ce3015bb68a5a419f1bc98200f9390829313bf185a48981314799d3c78d37a0d10258422275ea7e34cd38900689750d787446aab4cef0eab24303b1b475dd3582d51e56a3a0168afa830a14986ca225b993eeb00604a4b035c9a8a1e19baca7602a1643305c1dbf388089c9d0771d6082b33110c1134b2e81f138e6c5b01b5fc79de4e3009217673fc3843023a531713c78715c0858640aea1e79366f12466600991cc1b3a1df18416223615c414959184449f8921f0e0900032abd1dea67b9ebd2826a19885176591bbf275842b00a192b5c3c5f5780420b849c8e9a7c1907d0961269406a3d41f8c24e4d8a06542d85bb136cf116079680a87ce6b73912e02a4e88874c212dfc2c66e25040861f8181751819aa35214c71cc37fad66fecfc7f946e5142263cd653b93a2a34ba82deb473889994d6135e0e6042c9421a4aaa611b85813b617de8359c560294311ab2f0338c859140ee080ee4f7c78c912a400d1214ab0bae8ef0e59431924a4f5247171e313f9ad249a33aebebf8c8800295665408fb33aac649b20f42b01dca1de0e73021c4d5102b98c2c80e18e3e63843f0e002550f7f3c27f1912520ab27d71c4e1144435d18541846052471e0c6d8ad6365c58e1423ce1815417bd4d1debd626518202526189b4d3f1be329b50db1c4fe3393d5fe0694b649a9c0aa06520e35fed93992009dd94522382bef2859341b5a96fde04e315b354fd5ccddcb824a2400101477b221105e36ed41aa441e1213e6a9ac16f60903534bff2786ef2108580891c87eebd70f793e9bdaf04ceee2a1c154c70347412a221dc600d7162144b535713c5dd61b60914de74436b71f8c48d4151908f1e5135eb129a82b5846be911716f9c2507903b35439f8f7825b95d2d311bbfaaf260020a2c0d497e3338098246fdca35f18ffb97a1c37bad9cf57ff30901a39996666dc511fce404808e7a187c3496eae493153402e889b280374e8f7936041a0d17315a5780be91b01d67424000a352537b358350a25cec83df17791cc431b205c6a619ea778c0163040c884a1a3101ac2f104d808592b46b6f04b878f1240308922fb212fde453c941b337b4cf74636bdca676c853512812b9c93f2fd0c0c0b7474cb1b8725b271666d65cf7f74e2449fe4ad057846d78f784909e04a0c9e9412f8ce46bf8408c07094266a831868d8306d70980889d60f02824c2526d1b1bd42feb1915531147137b526390eacca8364b20aa5bf6aaac23b5048b9f91a7b5b724c088681d936ee5aa23db039dca3909879f8cf69103a2ba5af0ff0024b7642d11150a67fd62d6a766565d16eff193938942caf0a351a5fea11b00120edee7fbef2e86b566102b0b6ccb42666461c18b04807d4334a212b072ae5d717c4de317a0a8aa3eff00f7184468b1df472fa2bceb4972d3a878c0d21b30d54eb6b9ac3d6992420903a05e15f395877c5022d577c7515de3038c764c20f164b0b17c46281e120d21d8479871c3cec55ff05eaf2198dcabcee3f5afcf794823866df8fe3130194c140ab3d41ade094f5ec89b8372e622feb110c24c4659d0245d29715ac9e8f970d21dd93273bc1068127a7cef71eefc90cc3528112cb161313ee2cc286a4482cf86bf3810286fec6ebcf9c28370c2c87bbfefce440c12c67c5377fdee19b6157bd7fb7ac180467cf755e8f9c006dcfc70021882628b36bcb26e440b02437e881bed84a04bba7fabf9f2627bc881970054f447bc7b4052288e5f4df5818406ad64d09ad84e508d96e12a968e89d72cf03ec7ed20adf30f11495462cb9a2a0200dbf239e7184264cc8a028dc5b76b26adc91e527d185148481ccbe46142c501325c474bd50b91c112aa18feeffc850216ef06caa891c5f0921b6a0f59bd805d091279895db80281f44c03a89279afbc085b9848506c152447c6964a55716cab0a1c12917623826385411812a02906e2c2082e5e1461e09a8ac2c5e8914a0d145cf7af266ce3398b90d5ccc7ac0a2080bc8073c1de99bf386502360465b2120134c5994210157242e06b562c14da68d9a9abbe937deaccaa59420900bed29e3fde4908e609041dfdf9f8bc1b652a798f1b1fbd38ff005c49c8477c4f78de9941d85fe24feef12732742ffbe8f8c854941253c24d059e7f4d06954a8f06c84898966d819fa44096d3715a8e2639c0a3c200b84f2087d4631500b628b6486611f4546b1e0c5984328dc68d49ce343b602d3b88a706ff0078b9155c6c6bf8f5f78502b3346f8d66b7647781bd9612c141bf5eceaf26141408799f6bbd62d0cc209a984826becef8c62c1908c0a46e109f57b3133a332de40a433de259d69206b6192a78864ef88e6b25084414087152ff00efac4654acb10d04fcfe30cc34085884cc86a672a2b6ee8275dccff78c5184c4b4125fde69229b4a3c7385e943da398de14292248af8adee722b61992e868e47cdd4fc24d2142212cc325f04c4dce42cda0e28a5fa0fabd65f0994802df0df8f159f941236e06bfefd64c712a461175353df8fc609dab0a532317147847de4901b4d214daa15d433e712db70adfa0060452fdda41589a32c81bd9f178c2095ca450a9b665c4489cd46296ad4773dbdb1c6270da83408fc89f2a622289630ff008ee0513b89a3eb6f318f454bb160484eca14b09060d41c9218c8a12140f4190c6b6a002263535ae3206a409dc6cd6b43d447793309904572f6efbdde45a1a4e603815b1dae2cee9c4aa153b04ef200aa4100a4459ade5b7d5f2481dd37cc07cb0e12163582d273e6726d798a00b6995b45efad2de8a00c4b2c499aad6ae359acc6a2a2c09d6c9e5fc882730963d3dd751c64b209b46e6f56cbe2fef23c08f9a4aaf1aa29849de3013482bb33cf35d4f51881291b022d57457eb262e949048ccc7dcf6561cfeba43e440bf69a8c2a12aa600a1d10773eb2f656e14df1f0d7d612e812c4cea28705b190309bb3c5a92967784345421659a99f8c206d10a733b938bfbc6f4bb46a21a9adbf59063a91d6f132df1ef2142da44ec6a7100d5a4417c0325a305403bad21f8c35066511b535e3e26f20e104474431bb98ad376060c32589b282c4f327e03a710b1c281a5edf33d395393683700b73f04e30108828c588bd22614152a10ee28f1fcd7a6da8364eef7e30704f223cd7eff39654b259416bf26198d929ac089607f66b208861b3e52398034e9c42a5899359fc5bfe72b577968046d27deebe708530ba27cce9f9e32194957ecebafce48a3956283471c5777ce00aa69c04cc3e9f51d6250b64ee91f923fee0822101024a34294c57385a29330b314e24bd91ceb1a070e66290d2d2cb77827b1e682506bf0707ae437a884a813fb63e65c529afdbfc62249d6251084865ca9212928ebef368012483496642dd8d13332700e22544953856bc47ac5a94b16611e8f36deb18d4462c42ea2d7c7388ae98acfb0ae3bac4f1362091049914d56b78cc91b0583938eb0e5d8ba1c2d483704a7899d718d131340ebdde384c5a08880a0599434dbffc2b10080c5d67bc54c24e3ff064d52342246a24a79c30513b042c48417d631740850c117ea1be77ba905854441e65369b3a22b578ead2bcee2b98742d3705103a76453d87f0bf2e124a0083ca78fdf578c885dfc0eb1c3045e1084f8c59c9ca0b411e5e71821324a00ba60ee73b2342f0ca5425b5c771f7811a2481a02491ad13f8c6aa30c097dd7fac006860d7d6b0b034d10e7cfe5c87c86b5fa3cd387ad9852a3a6ec0298dc36f6c98f6d78fe2f500ac555ddaec8ffb95e55b1e902bd12e2682ac3251a2c8139257448352a74b8a9cd868afee4ebc64cb92607bec4ef27e51c3a16c716639d6a5733287d99bb1d78b0b4036e04953fb307b1e07137b143fef283bbfa6f02cd4e8f0cc0003ab7fb65e83180233666395eb02000432186865f1ce390123614417e09f4c846a30ee47737be79c3a202fce84d58dad42178741b0390243694e445e2b024158b40cb2e9a05875808805ae26ff0097e31f3fe2cf45ef7c15aea5de6b7860bb1d9041a42297ac2b8f079214a4084020d3eb23b345a0d53ca11df3de20e8db501248c2ebb18c5543316444254a4404132d8c1624914a2387e26acc1031751e69c6b8bfbc68912097a93e9c901543889932924b8b8fbc002029337fce088383202cbb90f33fbc49a0560bcbb8fc6034060270fa639eb3fd633588f657fbbf8cd1656e11409dbb989069eb11784baa1cd3840bda0a4848f1e536b95e7f1f464bf9b99c4c8bca02b7e1f6e15ec95e8f6e13ac09353fe7927ce41360dce4157237d0eb7900a03010af1330c38bb3ce8851af1a6b5ce4c398c135129bc334bae3ac374387b7c194b084ea8dbc316f3578970844c9a811f718d60e94705e1c5c7fdde03152d5bedd2811ff0032155ad1c151f87030367159073ef0cb683f963a808449ddff00b66f8a5bb747f8c5685044b53fe9c21642a8e93c63e4a41c8f5135896c9ca5be37952213c5871f394866a8afce210c2c0ef7fcff0075895508f6746f786c221d28d528e6fa4927a91e4b984ac82605248f89c49112151372f351b2ab3639a0277051e747264c4874e4a0ef895a93bc6948693da652e8851442606b4668496515623ce98eaa8177e7fc471015e720fb42b1a50ed7ae49704e0d3ac436cd889e1278ad3363312246f1643c2d573293811263aa2874a11559245451428c261ddb4abe032045aa09cb63a4e2ab93236928093c033bd337d5ecdec6a7585adb443cb3826b140204ac8e137ddce46fba981b33e93ea2f06ae2626ca4cee17e3372cb6e8957f3e702a8a55e9415e395f2c387201e856ff380f2e5ced1c74a7e712d212989053d5aff0098dca22132f144bc71a2de71fbc2642c023bb3457b322a14e29294f1331a81c61d71eb24a2bdb33f27580493663470848690b6bdf0335bcb3349b13b41c1332d4ef88c0309b514b6f41e20afc448026a16c6de5bf0f86626495f2727d98620b844dcd5f8c6719166f901fce4166d09f424f366505825dfa1889281c1f87ac9f444717ff09c245257e40dff00ac94065915d23ecfb6254060430450e4a1ff0099b0a83e5b8d4824667c613c589e09c71a29eb04b16c784bf970cf0ce4331cbfb58662e4353c7e325524812c630e083791710febbdce1d88135a9ff4fe31008b300b7e38de07f994819190e275ef01871493ae7d727f5c21c03a88d7973391c4450d8ad1e93f3c6000910ca43d9d2a32555230c123245f0ebbc971352b3daf05fc5759215a56a4480ca00bc3e1841405226e7aef8ea7250466423cb1b6b917230f8e6c8d4d4f84bd7e217099dca163b48982d983b713db531788aa34ad0440798c93c50166c608e6c86799ff0012d40cd0cb5903120486801bee528b507091b0a919604ad956f13e280688280842449658e79c052542ad5f96a899f703802eb1c15a898a63944df1105d0111102043e65d10544de298281a09a908248d4ffbc52b95c10aa79f8aecca11092c2e59fce0c09827b3a11a0dee5bd6e58064bb4bfd18463f34edfc0fde354148a4b8e16cc8701f632b69f54fe67066c267a5d3f1fc6268ada88bd98aefc460684c342a20e886f976f189c2c4a0385831ab5ee6f27a6666920827c89f861e210433f3c2303f8c65a84202255e8001f11929f2843b380df275f3933942c1d84e7cd616a345058bfbe7fde472cd5051324782560159be5c80999e4b995fb1f37ce2ecd0a7277da5be3d39506bfd18c8d1f7bf390819933d83e4302aea277013af7dff004c419527a1ff00460c7609a80693afe86f108b0d0b013273327c846408aa90240a07fb64168d4ac44d6369da438107ef266b468dd339c020a7278ae30db2150348963331182413324252df3ff326ba555eb0461574758e0e16e5293ffc62054828a56e23e3664852104d581ad6b9fec6140868c207911ba8f9f338e2d966282aff002e18a8cd2063ccf69fd8c47004608849fdd5e338041460562362c7bc55a1a863976609f93032052965482e0ee7aaf580444c93dc0e5e62fc57ce05dc48d6e26bf63cfbc21d2af2e6cad137345a8712bf404a1412918b658830e4385fe1218e5c879364fca096a4a0b255e09d88e11300136b04c15469c2b05f771160b81913ca1f1885645e491264ecd11c178574d9276373bfe301972c10762ac2daef6ef001c48420250b212d991a63a87270826148b214ba86b4cc9900e1939ac6fb8dbbbaac6dd1903cf27e71104804ab337c189004f5e0e3e300c4073401f707db14943110c0d878a0b32feac7923245c7de55d01dcff6fac44b41ae412b9a75c283102146f8e8dcaf38990490890afc202b7880d43e3fd2e2cbc4ad39a5a2a0bff8611f78ed64105b13fdbfb31a1073342a63deb122892975fc32938cb3046770faf5885acb321051d88f7828f29148d0bd9f89f7892e05085a5899a77f38830429ae2526b4225c16102af8b8fcff0078c052481a560a20f4718013cec779a7e40c28cc88e9167e431ac78c27712d7a87a3270b2d9491a1df7f9c0c60e5b80125f229f181a8a65e2da656297da77ac504509e2ee58cb05b4cb1840b86499982e7c619a4256403127b7ef791b85241e089f53ac894d301ddc6b8e37d38d3924b044f15f9c85d5ea2d3f88e7d64ed4467e137e2630611a44483b6ebba497f7802bed965806e5b6f8298bde53dd8229ca369421c1184d0360f40da1131cdf6560d0f0d6002c81137e35edc2ad905361131e09feef26811c1426db4eb5df98356141590ee224505c5dc7cb815fc70852b60c2e67ca4055c60214225a45472dacce25d6d2a84a7e27fc2913e8f1de31011a848b7c080626627516fcc1b980768d924b55f890e0c61b693ceece6a31fe8290e94880eee3ac42524bc1b4f9e691c42bf11307eaffbac61dc98d4b879af3c5f931106e42045b14ee78ac553154489209436c0fced778ec04f905c4bd5c77388c0b1be046579bf8cb23f8c2350804742cf1734c0051ca880827c404629c99814d007802f8c28a06348414eb847c698be2caa94af875e1fb04649844533378cf655b76efef0424ada939c36e13e461ce60a0824c13700c3a1beb592936a8f0ffce3ac955b40899e3c7d7eb0a48c9d4c375dc5d13e301030328709e27bd18895b83aab8888bc0c48414d904955c39c9a68d3fd6068f11dd7713ee1067b2c9fbc6314e322a306241a3f2e238087a8327ebf2c1124c61f28f2d4367e27f193ec1be4e539c790174f64a8fd384387674182b97c3f287d063404017f4e0050a556ff00baceb6c696cc4b5e67ce2c091ee711a8bea718152615a7e73c23c328bab3006a9639c10d282e8777e7234e28acd751bc7280d0585f6eb1f82415b6506088877d562df8df0b623532bc2c7c6051632daa75ddd4faedc9bac0c04c301bd0f33ef909114ccc032ab334c72c51b326696c8162859496bfb3192d17813259e13c32b2af89308f32c8d23455ccf2b75901323e82d02e8ea27bc969163272a860490ec0c79c62591b104015a309529cf5b63f9ff01006d60c1ad424c8b189e606f7864da5e9003895f23aa5a700a168094d9c081ea23001c83d45a7e63c6584756aea7c0dc4d7de6c6920537287c6fd622c1b237020ff00bb322e83b532b53f315c0644f512a9069fcc45f78c149248934e8eb9f790222426c29f7a00f9c769f0e0657ef039fcd7d05fe305d8b70508828b4877f18870319145313372cd9c64c95f179899f85f1971f29c228e1e724fe75f39a800a456a67ae0e273b9222399027f9b9ca69287be7292a5464194931d0647485886d74aed9e63fde42aa48cfa385d7ea82af22a180f0e3bf07f7ac9124a8776d67130b1426539e34be5fbc7ab4b8ea75eaf5884920518d9a7938f580487008b0846a5e121bf788a6e712b42e38c040b497c1184b6a8395ffbb1fecbe02357c5f1f35ef228828bd0e7e53eb262a92425a1f32f518b68340533403e830a1d31ae363f33f18747499351478b5658db1a3bb2b0c9ba285136ef1841360d09d9e9ce2642100e745f2dcb7e0c1683f009211f26017a2b1468079473901702d9c820f6dee78fe70c6b40001d771f8facd726cca456fdfaff0059d9828a95177b89f1f9c0245527603897d84cd8185b73130bb77ef1c273e8568b9be367f672203d9002d866a3ecb8aa31c1200780715116f8a2b2400c24d834bff91ac00d344d521f863c630aaea8288496a44bc50e326aab7712c9e89e39b70796309b4756fc7f8078347ef088ca6046640b551c2c78c58b762116417b29106e3e125485624941b49c578758649846fa2dc51c3a4ba37932916492ed24ada7366f09904a10e41753192b124102012b81409b8c329615a352ff00670e45986c01f0f58c156049b058ea4eabf4e5201e4262ee2ca63e1f39331855bc2b6b7b6f20604a3db29f43842b52d807da469e3f097cca61cc96297e23bbd9595b4d3000ca0ec7078c1a38fa21fc4c7c6312253de01c564f760fcfe3eb205115102d615c1ac75c3803d06ff18395e688c4584a0479c45f20c0a2178fd3d7ce11034b826c799fec6210ac35620e9a4bf3cc642c711510374441ab70d43834269086215df1ef211097209b2f2461854828732ca1909a106e61181119b948e40841147abdfbfe1c93a8b1bce839f5388b064242d0757f8e50386ba62ff3389042a1c514bf4b8fe812c960103ff07ac334bdb860c5ba691cc503f23eb1a143ea109e2664ca19b377a0fe3087410d0f1f3922322444ff00c32615944b0a26f4b0f15eb14bb90b1df1b90a02d0f3518f7ef0ff006c031f28844c6b9d9fd9c1a1ba560079786702310d13a35e5c0d1008ec553b63e99de0025ac5b1d182e27aee03ef455225e5e4e10ec81afe7ddc6213ae5801e7afe61fd18cb086484511ae22fef2c902c1326a50e4f971ec08048a342d4ebe7eb0293304452c4fcbcffbc025132868109e55e7f683cf28a24eb30b31e91c5270449405223d8f9bc82411327ffbe30254c2cc57f670938845e8b6a4650626538bcaeca053046a2008d9b26a4183708516a6943b43818688c882cc195c3a0fcce45db3262bb4a7be9f6e02cec413377d758004bb1360ece789e7ac4308504a487be3fbbc102634d83546a7c7cf8cad2d59cc42781697bd640a34b0056f83e3ef2a97105c22e466b0e5d82bcc1862d2cc498bdf1e37928a41865b8e729b482343dfce4026432ac1d48e355a1b5704bc4518a4a3ad2de11887c991dac4b49167b8ff003920553bc80c84a496568b89493008771751033f4fcce48361826ec7ebce2010752444577f25eb0a592b325344c5fdb8dac0296120ddcab8d112978082fb831fda649128823ef14781452760fdbf181a2201f37e3030b1091d1e07fbbc71252540d91cf16d5d33a8a7c5b3ef0ca577d12c9f66113300bc898e51548e959f8638c124424ce23f50b75c9f68f8c950acd51515f3b6fd650ee187d9fc64a862373e2b27ea1db7a7ef8c2a5a5c46aeafa7227b7fb26525303f3c4a2e850ef97a70ce0449ca994c3424fa9b8ab0c42491141807e13c1bca20499a8093e1a24f35ac2e8041b4a9996e69bdfce264598410240355bb7ef58c42d4474a33e6653f788ecf30c6d438386f7c7c1898ea541414c41f73abfd3c80eea982574540fca5e6a11586135271a70420446dd0c7d5a5c3ac96234b17038139f3ce25cd125f7d9dd0e22c8f49d147e8e3ce0506ec1d3b4f619c89317eff00fde01fe5ebfe7e72bc2d46b1408850a65117a4c15c0d1603217b5159eca738cf029011c503a892221649de0a96ad58b7cb8a299c24250344c86df4e75180558b1a6ed0eff9d60c4239ec880f3fd385281266e20ba9f1d6494ef4970196b8fd31c487820047ede2f9eec3b0f69054e211be738778ba30dcca8e458bd6439791a19b344f58825222a53ceecfd6368e64966bf7945ac289a462588e1c00900497b3bf592a08225b247ed3eb2ba0530614b9e6ef5580d208cab1a380321523447c8f86471810b0f07dc77fef254d2bab6741194e3679c5e4e425d66362f0c71849821542a7bb3ef19b22e0a71ea51620f7030aa5662082083a080f9778c7d5839217233546bf3faca8c9ad128247368dc4e15b1087afedf19258164df389cc5a2d02f1d6b8e7260d569202146a7cfcf8c725868d0413fa9e2723a951784380f1e1a0ff005de29100197c47f063ac0881b80ddb2231534bb259644bbd31f396a10f1f45af8c42ab6d7fac802c270c7477834044566691ebbff9895e7f82f906f21f58e0031f128c9be2a724eae5cdc4954907987204911041263737225355890112021d1bef4b3e7aa708a025714df6d5ff00e628a235682c9f705a371cd251ea051ff29f87ce19e690d05efdd5f01473856501404009e9138a40cf0dcefcfaae7ac61d36004dab7731e8bc4492ca56144df2117ebbe49502294357e8d9cff116288446d6383dcea31924d384e1893eff0031bc522a40a2604f9fd39c2280375caf3ffef7136a67e7ff00704c4e57a012126d39a888c88e61d292594888895ca42f4bb5651660dc925b5567b30e8c4a230068da85c213071955ba9f0b02ed54b30f589026038504287475c38810105058017115eb5ef20605b365ab353c5fc19276607204c4c79dedd5de19b740881018480b2f1e0d9daee0a7ebed9004c9a493ac764e5ec90cbc191391b09388d8998224848b9c924184c2c2ee9b66a38fc622ae290822366d377f19cfbff6aa968a0518e230218fce1a4fcd3f39455f321463dee72c70ab2c9b620d6efe0cba6c0e1258d5df370e2e4b15a02fe4d2701ee7044b22eb753905be74a3a715aaf58f4044fce038500ac5ca0a1d73e727ea84e8bdb32fc98c7a102bfe3108c20132ae9c5f8a8b717d06901644f6011defc4ac3328085da89b9f37713380ca32ecd1fab2031176b29e1b3c9289d462cf066d05150948f7fc462162b8f20f81c2f45d877249c6179089bd197a5b87ba57a19f8c4990aeabe16f548f3f8cbc58796d1ccf8e3f3581a2d3f59084195e72b9a698f4ff001889a7d2115bbbb9ea07e3371243fb31f2077793136a40ff008c5d80c80861f26346c6423c8115c7faca7e41034fc625827cdcef07aa01211070758fe5201404af09bf3dd61464724cdad6bbfef66095b890a5f29e04cec9aac8752df498fbd3fdef196ce46090915a4bbd42373828042c1a31f7c23afc59d472026ed7dff6312908000404dc28345f9d880bf3401509e0a41e23076d93b02393c2ddf718e55b59ff00024080438511f71c4753904338080c2462d0a16177b078b198111010b3264a0ba71c91f16b0823810189259f6520515cccde62044c2661d462af8850def703a60e6098f19284a4167a36c4c382854a642f2b13707345eb9894468809209ad04b1b9e717ea2065be89c5be991ec07a7305fcbce40e508b1fef1de10f051086aa3cc06a5f8310726630ae49276cccc6be30a06012c449075367f6f1e35c2276713b978dcf789a460cdd369ad3f278e40322cc10426752ac881be95ccea4aeb9c24c0540acb2d0423e4c5a0c924021b6662fa9a90e31e822c016c7a11d3a274c6233dfd4b53f4527e33b6293bf61b3e4c4215a1ff00991812c4af37287c62d712a7f6f5e70377321fb147e5f196ce4c0504544cc8465babe30a31d011b3eaf2f2dea010c24125a1d9cdc7ecc0f92fdb19b52825fe70135641b6ee4e088ea604894ae3aac038bb3bb1bf031a93892fb984838fc636edb80f1be1836c16041a965316e04a927016807874c78c98a5b5c97e5e778ae8456ec77f79fa2270442cd5f2aac074c13282a5414ebaf3d64646021f7c682324d1650b5b3bfe70982a30d09238e32b27437fd1c62232a39496be8c341080c4c17fbe71c02cb058a13ea3f0c26905707cd799d60a90aa140e862747dce52386744c6e93c7f6b243cd06852412f64e15282866e09317ae235f538958c16ec00c753d24f9bc532a250c9a02a8b1e4c9a30ea2042a63749f4a758a88b737e8d7f82035081c4fbd12080488dca30454fac48ab4d14c575695b73b23201e01d950af2c0242dad6461ca22d4a86c5c94ea9bc885bb356dc77cfc7c604838d80b752109e779398ee84886cd71e13c4e32a01d6f0490410d114def2752e922d95405660aa0aeb1aa83342151420212e3add6116c1126912c49fa9c1360d70604a2ee9e84f2645775b0cfe0d775954f92c0bd4f3a9fdf188361120a02873ad15d7e1651189491d444044298316b8046090d401427de41972919253a98041166f9e70fa208a0a4b001f0d613d8a03a898f65eb8c3049b3c6a615e24df7138803725239682458809dce58fc178e2b1a96639f84463e2a9b71d4c0f1ce560abd715cc4a20708205aaef77007e3206344e54d9c18818c99c805642adaf110f07e7225610e8c8dbb8e4792f580f110c80c175202ecb53223c89615daf0c7d64821826857d389df5436540a5ef224c4b94d337f9e6b8c0258af7a9d9df18127789658add46ee27281462810faf78733520026ef5fd22cc23d3616a51b5a889aea70670486944b73b683e7250ad5672e5d933db106113454281a9a2fbc1c9da199077bd648191103907c2493bf3925ba05d03983f1c4ece39d92d44c67e706278c3507fc64d1f9419426fb70d77f2c7283006aede81feb25e3203564e14d3d6111fd110f549cf1a958370852a81dc46a31392a274203883ae27fee1ca66c4e8f09d4bbef0bc8215bd1ac62d88289b64f05364226248f55e30c2269351bd81a1304a0e1c9b95dca5d4f0490d10184d583014073f370f831c8c6fc447f8366b78a00840868cc3e1e7bcb3a269272998990cf675116c8f600c550731b00e98e8c4a2f9ab60e5b30bc55c4563012d900ca0b9e58375c6496c4441c844104af61b989cfb22001dbd7be3297698c1208ee2799d47ce06daa3292512ce67874d60a2a65e1d1132741891f1879d44da94308511675e3278cd404e90cb0c2cb37adeb5b566242311dc56ba3e11662cf25a11b1a6a14775a9b58828946ee6bf1f18846a11bac3136c54f8bc90d7248337a89d7113793a2e51b313448993c678c112475cc4cff6b01a482a255884bbe16712932332cd9feb0606c1f80a36b0fde2a5022c11078d9ff9bc8a044aa4f82aa6a5571089c92c88abb89d5e409449d075fcf5bc1242800a768d4c05a09a9c88f5c240802c1ba35193720504828362ce98625c1102b009039f3247e2b14e1ec80ec843dddbe373c49163107544c60c0195a504ec81b2e238c7910561370a22b9c16120c8a611a1bd4bf7919803e99e43cfde0cd10815926e61fdef1788ece2907befc654e21b07991d5fbcd79ec178fcf9c1f4b04ceaaee1de4e1e9454bb435a77e302c4876000b08451cb9000e4c12011ef47962b2a20de82a9be8db3cefa94174904927922dec71544202978b4076b011f38c11920841d2452ac998c083a0492984bb898961fc858598146211a5cff00180576984422e7441b9de38f417ab096777f3acb3b0f07cd7a328ca494ef92f11479e79cdd540343ee38eb1a3b48cf6b1f2def57ef2580ae96abf49f8c874610411032bccbbee7c32a42789898fe095394322bd0440aa0eb437e49c244443315afefe7fc39951039ef0bdcf4790e80541643995f4f10b4523be9324a38f861c9eca0f69608dc46e59dde128a502b81b266c6b99bac945aa6866478e7c6a29a9c28ac83a4c8c4c3f6271f383c00865aad33a2f784c443527d625cf90ab8c6a399d2da8209ee06ae31d01351b4210e252b51ac64ab12b3ddf094f9b2dc2c266625345d4cb0f35bc46443e611500ead57b9700c12b5938993e5c44770a9872b8ba2226ec4488f0e40b84cb24503904b60c945e5a449bf7ef28a54e2048b151bb3eba460e0d13360b1c4a71935943a4a1df98d3eb51851538142a7fb6fce142a010c4066c7e7f1dac14c08aa0b8809e7d636428d843679a2466cae3378700dcd1ec018788eb22f50243febc63f9463506429ea44e7069d2aa80b1f22d1dd79b51666224a7c9ccccf9c432064e277fce2bd865064ec22766a4c6cacc0259248d09fb60726814318aeb897fa647d333332896b42eb88f39e345933095f52fc61f6eb24bc41f2993124890a553cc61a6161f10cc11eb226612a9150a6f961b5da3b9262613a9f8beb17bd999aa4a433d7388cd68c535564eeaeb5c80b6fde2b3c2347453a1857551eb24b7bb024da27f07c673846c894228d4d9753eb2222e7b1283e62b470ce48433adc476ef9bf8d61bf3f122c1f9c4689d37220938a21f7de09c95241713eeafce481cc240ab5dea2e6f9f222683164908ee091a4f3d380481678268680f24445b0e44d91a2161094b12ee1bf0c8400291ad8f26d8fe98bda3d41701343b751cad64d22514de51c4f0d6b101714900da70683cf1930f1c1d1fe1933582ac0c86e1157f3fac6074ec0cc806504c90b2289c694337812c2489243114fbe680c8c4a69d4cc4e98df3a9c2e24c9a0c2521dccdfc4e1a0cbeed099822e3735f5ac1a3e4fe91df02f513f8c1a932968817c8cbc6fa701460014aeb3a6d9444530792e4d1001f10b3a9cbd490041f92f40d0886f8172851d88cf98fa64e17a41b30919ae7e27bc3171a101888b286d3e2fd960b8215b4929a97c670e066870fbedf9ecc62c0f128b01848a67245a5189a8ee7de043098c9156215408248977060936fa218a05fabf09bd5f825818e92e88fbc53317088392927c3bbf48b7cec2a45dee0a7aeb1808185c0880cd51db9c0e8b651282227bcffdb5d85d5a8125e4aaf5ce40fb04907096e11e6a4d4600a0217495fbde19b8219a014f8b7e7ef0b27032015720c16a14f84199ef788b0c88a52a688e2259639c856a9378bb975c44e18aac76c8300191239252bc5a319936831090fa80e115103cc4e84ebbd5758c1bac4a470f5fdfd65c543ac443c39264124f928eff00f71a908157debf88cdc4b67180a4636b71044ef5ce59509988a437e30ac0ede43be6e57f1ce35a3d350aaeb4fd623c2b4bc9fa9bc58623c5b1fd388d603c8c948a0149ddd7f643d9d905227bc5c1428aa0c24742e029a5621980dce49f8730b04d96dcb36df506001a59522b322d938e51a980c97ec89911abc82a6f6e32052493c0537b263e73b9cdd81917769f430ab10508840474ed49b41e72a5333aff00155075d2efde134b69148d8813029df3238c30142da8081a02ad002b1bbd290892290577335e7212c4981603b24b8aafac6d3713c489b4484054c1cee31a9b110043213733e2fde112870f24863a9478464e3119dd14bc1da77e58355114196fbdc71fc0570684596c3a72ef112a74a01c79939de586150001858a227e632190a92c8693f735930087192b07c5fa64c65d948961089d4156ec8c0501467d6bfdef04564110fb1ef9838bc21a85011f89ddee21bac971088a044a20c2dcc62d128805967dfdf1738ba4a6a2c90c7c609dc0743cb421b9826a71434900a661a940d3b74e5aedc91411f543da6422380490485787f19798b1100e56a0055d4cbe9793bdc31f68fb668001050b20ea491fda098a129c53fde2e58ae1131aef97671934f2414a3b16b049c7ac426849ad0983445015f332284125492bfa3de1408e72923b72e4cf39ce1ad86b9bc4d6c52cd898239e3181146946039878ddcccbcdc3d0082bdbfce08130a443008f980f8711b2662058497a8bf33be0822498c20c9cb84eca84c6c109afe7179cc1a814fe03e31f126b011641a569c1918819747635a17e0fc9169c9582683ddb1eb1ca078b2612f9fef8c680582fa8e4234c30541047fe92e0aab9598664497fe639df0b538951091331073e3000622694ab35a058807ac54a183049b1541244ba82f004cb880024407a3957c687279be016f9493b2e0f60885bb5c1d960094ece671f46042d0a1d127aac52d0071fe2f9c07ac40a2629393c18c4e242c0889e6d304b2865ce8602c954d32537bafac680cc421760931d7cafef26cc09c0124a54dad475de4c78205611d74dff00387dcc6a05901a19f2b39ac351b1a4f3d58727f0e310a82e6a6aa06e396426d61b12329b2729b37e5cd55053a0411ea088bacb0c98589806d8e9d9af2800248ad547b1e667ce3ec12090d9b4d124bce2b08432898004d40f31b6ee6686844d48226e6e6e90e2b055aa05055ae76a548dc4ce2d8890221d710a1e3ac995622a36c3070e588ee0265de89abde122310444361088c2f21866039c146c9909a9221c4e902eb0439a987b9839d64af58488e41330e91eceab20de10d8d4d163decc5a4ea71e99025e5c8253241059b5530a235fa8e0e03c845a9caeff001935d7552c104a056323acb602063729443433bc0f041581c2d21d49583e04824c8548478322d04096289628b277879cda5c4092cbb993bc87a2495811e387e04e03e2924c033b24995ce134132514a54b4ebfde2db11a08589d4e2b49b4088943cfc7fdc7ab14032c4fd4f5bf9c4ad31c1835086f26b402d163442d26295aa9c45e08a049c0cf21b475ce276c0034e19c24bbddf192215fb18820135304b18a87d413607871bfde4f1e2a3a3073be37ff001a95695219d79e3ac46027c32644d12a3613197e28a92184a76ea3049a484908105a1bdee3bc89f90d18a0a11486d227cde17a8114011071015aa75c2c0eb10c9d4f3cac4f8fc38d30807e309bb6cf8463a7d90c249b2436c94c5f5804286750cc93b9e7fc78d4aec9c3ae6b42587f26dbe0d6585642e112bc2707fd606a48300ad0e39dd7f65f4e488b373aab9bfaabc6b84124013b986346967f25664c89008cd2397e3ef240d324649bb22924640d668ca494c450304d6f1ec4c48a89860416f0379304949106ae570df930a9130b25c91bee1ffcc854a01d076408ebce00dc686c94577b79fcd63460f78b92caa2be1a80d6106a4506143750304f24556b25cc4d0a1621b8b88bfdce0105600905247d4e8beb78197e54b08edaadf8eab221100dc8915e26b88fce1de902b64449d170f3f18880b17826ff00be304e0d57caf6a96bd83592c00aa341d46de78c7b55834682751111da4e5584c60b2c721c460340011a2e0a77ac02924d2a48fb3ce5a1a56b9081bbe383deb0654d4a2082894a31b05c07f21452097a3313713e728d3806c0d49c4f1f19aeae16a92965eecc71c588da5bb8db6fde0088594f31914f363111f51906a710db19939c322880855cc39f4827e7012399374305fd1797ea8652da148978ea6a304cf3b0889aeeb539634a9813b08d3f5de20a938668b97f2ff630b098314341b42cbdc91ccb10228028052dfcc0c7d6395e72969767189c5ca2d81eb8efe02708b908a90566a1eecf59b07a332d6d1cd15e7de3997a688ca4ce782bc3518b854149ee6a792fcc73819c1261880c2c544bea60f75f212ac20b0713fae31f1d1424095375be758bd964092b0be40ea093ce3c90006b61f8203ccb8ec55d1fe449b41c4b9b647afcc395126d4a55f3cc4a3555d607fd40c2296418276d61b056098802040b0686e18e41d4baa41952909a7c6eaf0c8e6cc441ae186bafbc62d611b209e500a674e09f02b02e3950d9e5f538a4844f808c4b15d56ff19114327601188b5d97ff00b896e33da6fdeaf17089545f144dde4a708046570854578ebacbab02c7489227c3dbf9c66d2288a62a3be5dcf15066f81dde8035d0c11be0c406c836ae1ec2e7ae6b78715516d95a8e68e38ef1e8cba1000dba0fabc2c219032b7af656f9c8b0211a7899de00708c58aab003737bc397a6b45d8f3a9ed622a0c6354be08026ae23096812b4a3c71c3cff001923ec68e287dc0de2c0033cb247c68af8c09ce549cc4fbf380c9d00c239161354ff00dc3c7ee0022660e22fff0071211a2c685e375af797141104c2c4a753f117de120ebd2ca7af9c734e44078fe9fbc0b364f7456f88e0ad6323da3cc1d8d4dafbfac91d91b8436a50c1eeb0872b0a7f8b5f46744c83c91a7b398d4de22278802c6eba989c7b05b8d6c4cb16565d40111ccf33b8ebbde418a2a7bbaf9c640c536091261f9be71e5a1aaa75bf9f590198128ac83ebf7ce11de04a524a4ea43e2b065c124071125d3f99be8c0960a2b815b45f8f385596cd635059e1dcde08ac20b1626d017ea6bce01253b5140ca2a623ccd639d3cda02c4f4264886419d60f791415497042b7cfac92aa654cc9b5f73cff0092a15f0df55b3ce4ed547854308a07992afe72184ee01016b733248586ef24782420510440a80452378bad3684b921a2a6dbd564d3000fc2772d4a7a92ef2c648944a9caf1a4e56f16cbe4a8c30f096d6ebb8700a441352a4b03cc4c9c79de140080d5ab1ee2affa62244550299a3899bdc31d251d04688da663ad10f58412ce4d99335dc37e72025411501dc452d7201aa9c949a60c59df773054fd60ab4279725a4f8988f8c005980a7937137d4f785242071c44c9ea10ef1b112954d5b1cf3f5922689b760e3fbaac06ba05a556e2a5ee72f78285722275335d827b54248508647fd209e3010f80049e6f5b8c96e3d0f19aba8bf17e300c50483510ea308190764162e0dbf13fc1404e558894a93a7f87111024c88a788fe706f8256e8604fcae18048dd8ca7f3787ace20e22ebef000a25bc904d49fdfc640e08b0ab976f269ac165408d75fbdfbfe0064248544eaba6defeb00035adf73f89c8e45537ab3c7cc7c60a2186809bbb1c9c0aec582904868f330615862646b2f4731a79baef19003aaddbb471af58c080f627bac9e0049128aed8b0bbeb7de1b032d034860af23f384ed59b0002d21e7e30ba4104e87f53bedf1b808ca60a9130cfc7b7b831002cd31e48d6a6adc942728111308978dfa316475288eb0866218660beecc5c42540978f3306d757942cadb17d0c133a97db2d5c8900254bb603abaa701614d1fe5c7a3fe0875d4f1f18c1734d875e838642131470939334d10698368abd94042449a92562658dbbac7a27c72d31e4811feb8b738c42a0995ee12e0485d5e299bd2d0008163abab60c7ae5082c33c343d1997ef0724902cd6746dc47e0c02572d18360a4c0272c545a3c55b7241264d21aabf38a12ae8884e3bf5bc7b08364bef9c62d9011729bae6377de21cb481202b0c167e678eb00944f249f709125da8b88ee000440f625f05fc2272a2c19692c0fae35bc2546c988c7d5333c7ef0961ef18b0a6c3858abef1905c505608ba629e1aef29622059e75e1f3c986c71cc77a2bee81e7eb027e1372c981a6042b151620e47663ba42d50e35840ed47688fc34bd9823337a12c889f1a88c5c4b79149621e3f5eb2a90d2713312d1b15a82f0e87180c9d501bafbd635e08ba83091ff009acbca07644c003fce2489ca899797fbbffb92130b2edcb1711ea7586c28896c0a4ff1fd14f338656828e5597b50e5c2900d92ab21ec368542cec81523978459ceeb47bca0481bd190f479a8e09078eb25d1650c5ea48f1a8c0861682ee46ec6a235c79ca5fd3daacae74ad89d6b04968450988922274cef8dca48c29916724bf9556bcc64e6860582bb16e221d1b8c0924e0284e4a99ebc613aa086722301764f1326930b062612a15407909cd03f1b25369b59189f61ca0a3371c81057b24cd8e936e394748da6e5f9ff003251559002a894c0ab12f95715342208263a9dc61ec51ae5480dbc091c3c41015a93134cca5b5318a1e3131209480959b6e6b1ab20a968929237d87be0012e219208d54ceb746162a0384dc64105bf75d958196a04ad50c32930999d37183c6130baace818b072b54a0a7046e1432223a31115e44054aa8590eed73ff958c54e2cd0d4d712c7b8c9bd0a61561a2eca593625c8453b59382486e0a9d58d44212f7090c45b943f056f0dd544042473a41a722b3cc6ef0641289e84a6789e3267f9a3694f1a99f2c6e3207690a04840b408b7bd712b828284050ac35042ff00392aaa2683017c0678b88bc628382c8df481e12749389f159669605331ba68ad2645427ad91b424aca4a92c515ac6153085a941dc1b6ad7c66d853bbe027dfd650be4ecca4bd68a9a9ef24a085ab1250f10a273b9c7c97d4c25b8998168462b2700f80a9129e539f67391aa90d29040c6e81f6ade2c5493d0c4cf0cdf12ef1ae665b62b52979a385939c39f36cfbe0593bb2d6962a53b8328ad47e5fbc8214b261094edcc7e7ef0f1802b605929fb3d636520af1040f3e5ee324b81151709b5d546321046592311765cfe7288043641024e142aaafa136a741893132ef96afedc644430da4d9819486922635827994d512822817c2fcdcd19b892b9407e526f12f9011262972b187efa6cc755148a813be6a4d4b78c8d425024b1f1cc84f19cb09ccbcf573fe70a76dfe7165576b2e4e89e60f78ada4be71f29a8e82195ea9d8adc138b20402d925053645ac8a625a3abf8a2cb041887b48a79c041704d08d50a8f6cf8ca570c8320b8810af2ff0040a834898222ab78adde1b1acb6369adc996c83eb0c04c4a6e2c7e8d6ff00591bbc92689111de93ef0852acc0440493a29cf3a9c53e61a8c9cd5676f1ee37292f5cd98ef4682e870b7854410900d82b6b8ee1bf231425d279fe1de0fd3fb069ec4a6fc43971c52313c04e01197303a270ce0bd9cb5b1764ad362eb26b5c3a22722890443f2e4b088ee84c247923c96a322f40126c956c6023a43dc13d480ed229b0a97803a7183a10930556f72e6061e0c131b9b2d79780719014c086508b4b5edef165143293083827f0bbc222544a3bbd499dfac68d7506cae5d5095ef8c97703c2928048d905ac405311952841c0021dbee11b805470913b26f8d2cc832928679be1e632cd510731efb3fbc60bac211a3d73e7ac5106c0962900c557731f18a5015b2f5ab3028b0a2d54b260e7ee8307540d4138b048a42f52101addbad621b9b85a56a82ed3e9ac1d608ac1560984cfb6bcac054a200e155a784b69f39d8cd41d454b905818d1b404a0797e35184e4a9630beb53ac9fc78c56a04241e624ffe121243ec1c91659c48900325445711cce3134865bc88d782c75c46724bcda87bea639c4d18630235375c8fafbc41b28ea00f21ad881f6be5a57e46e14892e8d39c76351c0888e51bda62171e1350056e48f0ff00ac2f7200333454a2cbbad6444a40b08dca18bd3538b19564bc2594f1324d4ef130a206c340c917d0d64c3e0324be771313ea778613d05044b49608470f35aca4bf80df1e3d6bf78c2251644b3b288a6c26e8ac5c24944c04108836164d8b06208f60c57db71d1a30148c23079380b3c002e113d21a8b411412bad93d62d840401e82a27209e500a2120ecd6526104286d8a9d2de5c508552bcb8f2c133f18f1b0199276b621ce3139a911eccdaea1b4c8c82883b1dae3f19392580d8dc746bac05e488c9ca26fdf43e7077156d0bf864d236dee26c48f663e323034ae737624a17555ad4528257733b415bbe1ce7c90013736845b78d37400400c278052605c2ed22831f1284052961f962b24092f360a816ecf8c08f1022103b2104faff00daa4a3ad23fbde31c03512de3ea8ceef7ffca1d78c9c1b76bff98d664f09bb74f29262dc1d36206a4d9f95c1d5626208117892d09664978ad930b6381337248ea22f78b5f6e4404dc196e227fc6142502493be4d4f08d615b0c1080291515740aea71c430d37712b0e0030b814d3015c22e88458bf2e151c92d3a4df05c1e2715a46daa0223a2bd3aef1aee6c01b2d6ac88ea9e5c0d00b0766a65eb8fe3231a88dd0c9b0376ece6157182910859151755d2f0850b1080e27f8d5fd4e234a148d95d78feef788049418f823ef5f3824881b408f2fc3f5f796035a2297235fa7359633c828117605922a09ade3bd7552052da8e908aef082dad4ca9d6e128e980d7194a289b76df06501a085f2d4a22059032f041114976313eaeab29234742d963b8bf9d617a944b66d84032a9bdc62d0de9629f4afbc90932573a96817abf791680449659337646fafd7ff00405191707c89e70106dc34fe3af191a1c4d943a63675feb1f87c8164eb84bf3f585e24ca0115ec0ea2dc2057c570390a225d43aac1cc94102a29492440c515b8c686dcd011490d403c565c148624104b45a39db2f7fc880a9b08614c444fa6d7ef766ed513bc8d49247108f53a860293650b00f957c08ab5a32afc19221a5219e65016160158d09499b04a0bc3653b1e5bf17805c60d9120a8e4f5d9e259e05510100ab4156b95bd43c9015ba8584e7a7134b02233331a8c3db7f6c141509cab2907480b82e4f0b5744c6d7d03bd64b8903580480827b9b8c0cec48551682e6e76d4634d0090959d96579f55932aee413dcb9af8bb7ad644241e08cdb2efff00ae01028c25544bcc6feb2340036f37df8ce5eb100919d69bc3ef029a9d4900eee1fbc9e860c892ca698aea5f04e074562ab94248c8db55295819ef75742256ec584668c6e46045354ca743c18c33a48b485ce2765cf3181dd45ee6da129b386223286c82c60676d8b0b92288c695a4b60cec29fe56e5cfd228a3e63b0e7ef0869414088f51f3f3920ad1b0343ed2e35b8267595096b12e7d418ea9112ace239ac58473b8ac4c0899288ac4a9555dddff00f7d0a7fbeb10041fe6a2fbc4d421c84ff6f10a2a4ce034cb4f9aaac8aa152ce91f513f2e38a582260493244ac485ed9d4cc24a42d076a29bbd14fb314652bc4de0e100817432ebaf1de2cedd107ff99639ff00fcff00ff00ffd9	1	10	0.1	1	5	10
\.


--
-- Data for Name: internet_provider_brazilian_cities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.internet_provider_brazilian_cities (id, internet_provider_id, city_id) FROM stdin;
1	1	1
\.


--
-- Data for Name: internet_provider_due_dates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.internet_provider_due_dates (internet_provider_due_dates_id, internet_provider_due_date) FROM stdin;
\.


--
-- Data for Name: internet_provider_emails; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.internet_provider_emails (id, internet_provider_id, email_id) FROM stdin;
1	1	1
\.


--
-- Data for Name: internet_provider_gupshup_integration; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.internet_provider_gupshup_integration (id, api_token, channel, source_address, src_name) FROM stdin;
\.


--
-- Data for Name: internet_provider_internet_plan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.internet_provider_internet_plan (id, internet_provider_id, internet_plan_id) FROM stdin;
\.


--
-- Data for Name: internet_provider_phone; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.internet_provider_phone (id, internet_provider_id, phone_id) FROM stdin;
1	1	1
\.


--
-- Data for Name: internet_subscription; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.internet_subscription (internet_subscription_id, internet_plan_id, version, internet_customer_id, begin_subscription_date, end_subscription_date, internet_subscription_agreement_service_file) FROM stdin;
\.


--
-- Data for Name: internet_subscription_address; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.internet_subscription_address (internet_subscription_address_id, internet_address_id, internet_subscription_id, begin_subscription_address_date, end_subscription_address_date) FROM stdin;
\.


--
-- Data for Name: internet_subscription_due_date; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.internet_subscription_due_date (internet_subscription_due_date_id, internet_provider_due_dates_id, internet_subscription_id, begin_internet_subscription_due_date_date, end_internet_subscription_due_date_date) FROM stdin;
\.


--
-- Data for Name: internet_subscription_internet_plan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.internet_subscription_internet_plan (internet_subscription_internet_plan_id, internet_subscription_id, internet_plan_id, internet_subscription_internet_plan_begin_date, internet_subscription_internet_plan_end_date, version) FROM stdin;
\.


--
-- Data for Name: internet_subscription_login; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.internet_subscription_login (username, password, enabled, internet_subscription_id) FROM stdin;
\.


--
-- Data for Name: legal_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.legal_entity (legal_entity_id, legal_entity_company_name, legal_entity_trading_name, legal_entity_cnpj) FROM stdin;
1	ACME CO	ACME INTERNET PROVIDER	00.000.000.0000-01
\.


--
-- Data for Name: legal_entity_internet_customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.legal_entity_internet_customer (internet_customer_id, legal_entity_id) FROM stdin;
\.


--
-- Data for Name: model_vendor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.model_vendor (model_vendor_id, model_vendor_name, vendor_id) FROM stdin;
\.


--
-- Data for Name: natural_pearson; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.natural_pearson (natural_pearson_id, natural_pearson_name, natural_pearson_birthday, natural_pearson_cpf, natural_pearson_rg, natural_pearson_cpf_file, natural_pearson_rg_file) FROM stdin;
\.


--
-- Data for Name: natural_person_internet_customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.natural_person_internet_customer (internet_customer_id, natural_pearson_id) FROM stdin;
\.


--
-- Data for Name: payment_method; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payment_method (payment_method_id, payment_method_description, payment_method_type) FROM stdin;
\.


--
-- Data for Name: payment_method_credit_card; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payment_method_credit_card (payment_method_id, payment_method_credit_card_flag) FROM stdin;
\.


--
-- Data for Name: payment_method_debit_card; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payment_method_debit_card (payment_method_id, payment_method_debit_card_flag) FROM stdin;
\.


--
-- Data for Name: phone; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.phone (phone_id, phone_code_area, phone_phone_number) FROM stdin;
1	82	35514500
\.


--
-- Data for Name: phone_contact; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.phone_contact (phone_id, phone_contact_details_contact_channel_type, contact_id) FROM stdin;
\.


--
-- Data for Name: phone_contact_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.phone_contact_details (phone_contact_details_id, phone_contact_details_detail_by_support, contact_id) FROM stdin;
\.


--
-- Data for Name: phone_contact_details_contact_reason; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.phone_contact_details_contact_reason (id, phone_contact_details_id, contact_reason_id) FROM stdin;
\.


--
-- Data for Name: position; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."position" (position_id, position_name, position_cbo_code) FROM stdin;
\.


--
-- Data for Name: promotional_campaign; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.promotional_campaign (promotional_campaign_id, promotional_campaign_name, begin_promotional_campaign_date, end_promotional_campaign_date, promotional_campaign_code) FROM stdin;
\.


--
-- Data for Name: promotional_campaign_material_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.promotional_campaign_material_item (promotional_campaign_material_item_id, promotional_campaign_material_item_name, promotional_campaign_id, promotional_campaign_material_item_is_discount, promotional_campaign_material_item_percent_of_discount) FROM stdin;
\.


--
-- Data for Name: promotional_campaign_service_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.promotional_campaign_service_item (promotional_campaign_service_item_id, promotional_campaign_service_item_name, promotional_campaign_id, promotional_campaign_service_item_is_discount, promotional_campaign_service_item_percent_of_discount, promotional_campaign_service_item_is_days_of_use_without_paymen, promotional_campaign_service_item_number_of_days_of_use_without, promotional_campaign_service_item_is_instalation_kit_released_w, promotional_campaign_service_item_is_discount_on_instalation_ki, promotional_campaign_service_item_percent_of_discount_on_instal) FROM stdin;
\.


--
-- Data for Name: promotional_campaign_service_item_internet_plan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.promotional_campaign_service_item_internet_plan (id, promotional_campaign_service_item_id, internet_plan_id) FROM stdin;
\.


--
-- Data for Name: public_place; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.public_place (public_place_id, public_place_type, public_place_name, brazilian_neighborhood_id, public_place_cep, public_place_type_google_maps, public_place_name_google_maps, public_place_name_specific_to_google_maps) FROM stdin;
1	PRACA	CLEMENTINO DO MONTE	1	57200000	\N	\N	f
\.


--
-- Data for Name: receivables_portfolio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.receivables_portfolio (receivables_portfolio_id, receivables_portfolio_beneficiary_code, receivables_portfolio_beneficiary_verifying_digit, receivables_portfolio_agreement_code, receivables_portfolio_code, receivables_portfolio_our_number_code, branch_bank_id, receivables_portfolio_instructions_01, receivables_portfolio_instructions_02, receivables_portfolio_instructions_03) FROM stdin;
\.


--
-- Data for Name: salesman; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.salesman (salesman_id, natural_pearson_id, salesman_activation_date) FROM stdin;
\.


--
-- Data for Name: salesman_period_active; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.salesman_period_active (salesman_period_active_id, salesman_id, salesman_period_active_begin_date, salesman_period_active_end_date) FROM stdin;
\.


--
-- Data for Name: social_media_contact; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.social_media_contact (social_media_contact_contact_channel_type, contact_id, social_media_profile_id) FROM stdin;
\.


--
-- Data for Name: social_media_contact_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.social_media_contact_details (social_media_contact_details_id, social_media_contact_details_detail_by_support, contact_id) FROM stdin;
\.


--
-- Data for Name: social_media_contact_details_contact_reason; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.social_media_contact_details_contact_reason (id, social_media_contact_details_id, contact_reason_id) FROM stdin;
\.


--
-- Data for Name: social_media_platform; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.social_media_platform (social_media_platform_id, social_media_platform_name, social_media_prefix) FROM stdin;
\.


--
-- Data for Name: social_media_profile; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.social_media_profile (social_media_profile_id, social_media_profile_platform_id, social_media_profile) FROM stdin;
\.


--
-- Data for Name: technician; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.technician (technician_id, employee_id) FROM stdin;
\.


--
-- Data for Name: technician_period_active; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.technician_period_active (technician_period_active_id, technician_id, technician_period_active_begin_date, technician_period_active_end_date) FROM stdin;
\.


--
-- Data for Name: telecommunications_equipment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.telecommunications_equipment (telecommunications_equipment_id, version, telecommunications_equipment_type, internet_connection_type_id, model_vendor_id) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (username, password, enabled) FROM stdin;
DIEGO	\\xc30d04070302cfed2819e2fb2a2160d237016d32d24088f6dd16ddd47747f8610215ae86828a43cbb283a09fb2df5841c0e7b89bbd3efb270d41e8d977a31c6d9827be3fe033debe	t
ICARO	\\xc30d04070302851dbfe82ac021f07ad2380167d6cdf7a6079bb78bc6cc6dd5554113f288c37ba28a454f8b333edca39c125fa981b62bc0004e246e29f1cbbb3d4ee1fb8433130d48e8	t
\.


--
-- Data for Name: vendor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vendor (vendor_id, vendor_name) FROM stdin;
\.


--
-- Data for Name: work_order; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.work_order (work_order_id, work_order_begin_date, work_order_end_date) FROM stdin;
\.


--
-- Data for Name: work_order_customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.work_order_customer (work_order_id, internet_subscription_id, contact_id) FROM stdin;
\.


--
-- Data for Name: work_order_infrastructure; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.work_order_infrastructure (work_order_id) FROM stdin;
\.


--
-- Data for Name: work_order_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.work_order_item (work_order_item_id, work_order_service_id, work_order_id, work_order_service_technician_result_id) FROM stdin;
\.


--
-- Data for Name: work_order_item_customer_move_another_location; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.work_order_item_customer_move_another_location (work_order_item_id, address_id) FROM stdin;
\.


--
-- Data for Name: work_order_item_customer_plan_migration; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.work_order_item_customer_plan_migration (work_order_item_id, internet_plan_id) FROM stdin;
\.


--
-- Data for Name: work_order_service; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.work_order_service (work_order_service_id, work_order_service_name, work_order_service_type, internet_connection_type_id) FROM stdin;
\.


--
-- Data for Name: work_order_service_technician_result; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.work_order_service_technician_result (work_order_service_technician_result_id, work_order_service_technician_result_name, work_order_service_type, internet_connection_type_id) FROM stdin;
\.


--
-- Data for Name: work_order_service_technician_result_photo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.work_order_service_technician_result_photo (work_order_service_technician_result_photo_id, work_order_service_technician_result_id, work_order_service_technician_result_photo_file, work_order_service_technician_result_photo_upload) FROM stdin;
\.


--
-- Data for Name: work_order_states; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.work_order_states (work_order_state_id, work_order_id, work_order_state, work_order_state_note, work_order_state_begin_date, work_order_state_end_date) FROM stdin;
\.


--
-- Name: address_address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.address_address_id_seq', 1, true);


--
-- Name: branch_bank_branch_bank_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.branch_bank_branch_bank_id_seq', 1, false);


--
-- Name: brazilian_city_city_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.brazilian_city_city_id_seq', 1, true);


--
-- Name: brazilian_city_holiday_brazilian_city_holiday_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.brazilian_city_holiday_brazilian_city_holiday_id_seq', 1, false);


--
-- Name: brazilian_neighborhood_neighborhood_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.brazilian_neighborhood_neighborhood_id_seq', 1, true);


--
-- Name: brazilian_state_holiday_brazilian_state_holiday_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.brazilian_state_holiday_brazilian_state_holiday_id_seq', 1, false);


--
-- Name: brazilian_states_state_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.brazilian_states_state_id_seq', 27, true);


--
-- Name: concentrator_concentrator_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.concentrator_concentrator_id_seq', 1, false);


--
-- Name: concentrator_types_concentrator_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.concentrator_types_concentrator_type_id_seq', 1, false);


--
-- Name: contact_contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contact_contact_id_seq', 1, false);


--
-- Name: contact_reason_contact_reason_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contact_reason_contact_reason_id_seq', 1, false);


--
-- Name: country_country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.country_country_id_seq', 1, true);


--
-- Name: country_holiday_country_holiday_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.country_holiday_country_holiday_id_seq', 1, false);


--
-- Name: email_contact_details_contact_reason_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.email_contact_details_contact_reason_id_seq', 1, false);


--
-- Name: email_contact_details_email_contact_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.email_contact_details_email_contact_details_id_seq', 1, false);


--
-- Name: email_email_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.email_email_id_seq', 1, true);


--
-- Name: employee_employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employee_employee_id_seq', 1, false);


--
-- Name: employee_position_employee_position_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employee_position_employee_position_id_seq', 1, false);


--
-- Name: face_to_face_contact_contact_reason_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.face_to_face_contact_contact_reason_id_seq', 1, false);


--
-- Name: financial_instituition_financial_instituition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.financial_instituition_financial_instituition_id_seq', 1, false);


--
-- Name: gupshup_whatsapp_communication_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gupshup_whatsapp_communication_id_seq', 1, false);


--
-- Name: internet_billing_address_internet_billing_address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.internet_billing_address_internet_billing_address_id_seq', 1, false);


--
-- Name: internet_connection_type_internet_connection_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.internet_connection_type_internet_connection_type_id_seq', 1, false);


--
-- Name: internet_customer_contact_internet_customer_contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.internet_customer_contact_internet_customer_contact_id_seq', 1, false);


--
-- Name: internet_customer_contact_pho_internet_customer_contact_pho_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.internet_customer_contact_pho_internet_customer_contact_pho_seq', 1, false);


--
-- Name: internet_customer_internet_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.internet_customer_internet_customer_id_seq', 1, false);


--
-- Name: internet_customer_payment_pay_internet_customer_payment_pay_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.internet_customer_payment_pay_internet_customer_payment_pay_seq', 1, false);


--
-- Name: internet_customer_payment_sli_internet_customer_payment_sli_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.internet_customer_payment_sli_internet_customer_payment_sli_seq', 1, false);


--
-- Name: internet_plan_internet_plan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.internet_plan_internet_plan_id_seq', 1, false);


--
-- Name: internet_plan_price_internet_plan_price_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.internet_plan_price_internet_plan_price_id_seq', 1, false);


--
-- Name: internet_plan_public_place_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.internet_plan_public_place_id_seq', 1, false);


--
-- Name: internet_provider_brazilian_cities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.internet_provider_brazilian_cities_id_seq', 1, true);


--
-- Name: internet_provider_due_dates_internet_provider_due_dates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.internet_provider_due_dates_internet_provider_due_dates_id_seq', 1, false);


--
-- Name: internet_provider_emails_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.internet_provider_emails_id_seq', 1, true);


--
-- Name: internet_provider_gupshup_integration_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.internet_provider_gupshup_integration_id_seq', 1, false);


--
-- Name: internet_provider_internet_plan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.internet_provider_internet_plan_id_seq', 1, false);


--
-- Name: internet_provider_internet_provider_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.internet_provider_internet_provider_id_seq', 1, true);


--
-- Name: internet_provider_phone_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.internet_provider_phone_id_seq', 1, true);


--
-- Name: internet_subscription_address_internet_subscription_address_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.internet_subscription_address_internet_subscription_address_seq', 1, false);


--
-- Name: internet_subscription_due_dat_internet_subscription_due_dat_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.internet_subscription_due_dat_internet_subscription_due_dat_seq', 1, false);


--
-- Name: internet_subscription_interne_internet_subscription_interne_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.internet_subscription_interne_internet_subscription_interne_seq', 1, false);


--
-- Name: internet_subscription_internet_subscription_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.internet_subscription_internet_subscription_id_seq', 1, false);


--
-- Name: legal_entity_legal_entity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.legal_entity_legal_entity_id_seq', 1, true);


--
-- Name: model_vendor_model_vendor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.model_vendor_model_vendor_id_seq', 1, false);


--
-- Name: natural_pearson_natural_pearson_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.natural_pearson_natural_pearson_id_seq', 1, false);


--
-- Name: payment_method_payment_method_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payment_method_payment_method_id_seq', 1, false);


--
-- Name: phone_contact_details_contact_reason_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.phone_contact_details_contact_reason_id_seq', 1, false);


--
-- Name: phone_contact_details_phone_contact_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.phone_contact_details_phone_contact_details_id_seq', 1, false);


--
-- Name: phone_phone_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.phone_phone_id_seq', 1, true);


--
-- Name: position_position_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.position_position_id_seq', 1, false);


--
-- Name: promotional_campaign_material_promotional_campaign_material_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.promotional_campaign_material_promotional_campaign_material_seq', 1, false);


--
-- Name: promotional_campaign_promotional_campaign_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.promotional_campaign_promotional_campaign_id_seq', 1, false);


--
-- Name: promotional_campaign_service__promotional_campaign_service__seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.promotional_campaign_service__promotional_campaign_service__seq', 1, false);


--
-- Name: promotional_campaign_service_item_internet_plan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.promotional_campaign_service_item_internet_plan_id_seq', 1, false);


--
-- Name: public_place_public_place_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.public_place_public_place_id_seq', 1, true);


--
-- Name: receivables_portfolio_receivables_portfolio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.receivables_portfolio_receivables_portfolio_id_seq', 1, false);


--
-- Name: salesman_period_active_salesman_period_active_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.salesman_period_active_salesman_period_active_id_seq', 1, false);


--
-- Name: salesman_salesman_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.salesman_salesman_id_seq', 1, false);


--
-- Name: social_media_contact_details_contact_reason_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.social_media_contact_details_contact_reason_id_seq', 1, false);


--
-- Name: social_media_contact_details_social_media_contact_details_i_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.social_media_contact_details_social_media_contact_details_i_seq', 1, false);


--
-- Name: social_media_platform_social_media_platform_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.social_media_platform_social_media_platform_id_seq', 1, false);


--
-- Name: social_media_profile_social_media_profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.social_media_profile_social_media_profile_id_seq', 1, false);


--
-- Name: technician_period_active_technician_period_active_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.technician_period_active_technician_period_active_id_seq', 1, false);


--
-- Name: technician_technician_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.technician_technician_id_seq', 1, false);


--
-- Name: telecommunications_equipment_telecommunications_equipment_i_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.telecommunications_equipment_telecommunications_equipment_i_seq', 1, false);


--
-- Name: vendor_vendor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vendor_vendor_id_seq', 1, false);


--
-- Name: work_order_item_work_order_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.work_order_item_work_order_item_id_seq', 1, false);


--
-- Name: work_order_service_technician_work_order_service_technicia_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.work_order_service_technician_work_order_service_technicia_seq1', 1, false);


--
-- Name: work_order_service_technician_work_order_service_technician_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.work_order_service_technician_work_order_service_technician_seq', 1, false);


--
-- Name: work_order_service_work_order_service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.work_order_service_work_order_service_id_seq', 1, false);


--
-- Name: work_order_states_work_order_state_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.work_order_states_work_order_state_id_seq', 1, false);


--
-- Name: work_order_work_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.work_order_work_order_id_seq', 1, false);


--
-- Name: address address_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (address_id);


--
-- Name: internet_provider_gupshup_integration api_token_unique_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_provider_gupshup_integration
    ADD CONSTRAINT api_token_unique_key UNIQUE (api_token);


--
-- Name: branch_bank branch_bank_id_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.branch_bank
    ADD CONSTRAINT branch_bank_id_pkey PRIMARY KEY (branch_bank_id);


--
-- Name: brazilian_city brazilian_city_city_ibge_cod_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brazilian_city
    ADD CONSTRAINT brazilian_city_city_ibge_cod_key UNIQUE (city_ibge_cod);


--
-- Name: brazilian_city brazilian_city_city_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brazilian_city
    ADD CONSTRAINT brazilian_city_city_name_key UNIQUE (city_name);


--
-- Name: brazilian_city_holiday brazilian_city_holiday_id_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brazilian_city_holiday
    ADD CONSTRAINT brazilian_city_holiday_id_pkey PRIMARY KEY (brazilian_city_holiday_id);


--
-- Name: brazilian_city brazilian_city_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brazilian_city
    ADD CONSTRAINT brazilian_city_pkey PRIMARY KEY (city_id);


--
-- Name: brazilian_city_neighborhood brazilian_neighborhood_neighborhood_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brazilian_city_neighborhood
    ADD CONSTRAINT brazilian_neighborhood_neighborhood_name_key UNIQUE (neighborhood_name);


--
-- Name: brazilian_city_neighborhood brazilian_neighborhood_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brazilian_city_neighborhood
    ADD CONSTRAINT brazilian_neighborhood_pkey PRIMARY KEY (neighborhood_id);


--
-- Name: public_place brazilian_public_place_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.public_place
    ADD CONSTRAINT brazilian_public_place_pkey PRIMARY KEY (public_place_id);


--
-- Name: brazilian_state_holiday brazilian_state_holiday_id_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brazilian_state_holiday
    ADD CONSTRAINT brazilian_state_holiday_id_pkey PRIMARY KEY (brazilian_state_holiday_id);


--
-- Name: brazilian_states brazilian_states_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brazilian_states
    ADD CONSTRAINT brazilian_states_pkey PRIMARY KEY (state_id);


--
-- Name: brazilian_states brazilian_states_state_description_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brazilian_states
    ADD CONSTRAINT brazilian_states_state_description_key UNIQUE (state_name);


--
-- Name: brazilian_states brazilian_states_state_ibge_cod_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brazilian_states
    ADD CONSTRAINT brazilian_states_state_ibge_cod_key UNIQUE (state_ibge_cod);


--
-- Name: client_telecommunications_equipment client_telecommunications_equipment_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client_telecommunications_equipment
    ADD CONSTRAINT client_telecommunications_equipment_pk PRIMARY KEY (telecommunications_equipment_id);


--
-- Name: concentrator concentrator_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.concentrator
    ADD CONSTRAINT concentrator_pkey PRIMARY KEY (concentrator_id);


--
-- Name: concentrator_types concentrator_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.concentrator_types
    ADD CONSTRAINT concentrator_type_pkey PRIMARY KEY (concentrator_type_id);


--
-- Name: contact contact_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact
    ADD CONSTRAINT contact_pkey PRIMARY KEY (contact_id);


--
-- Name: contact_reason contact_reason_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact_reason
    ADD CONSTRAINT contact_reason_pkey PRIMARY KEY (contact_reason_id);


--
-- Name: country country_contry_description_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_contry_description_key UNIQUE (country_name);


--
-- Name: country_holiday country_holiday_id_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.country_holiday
    ADD CONSTRAINT country_holiday_id_pkey PRIMARY KEY (country_holiday_id);


--
-- Name: country country_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (country_id);


--
-- Name: customer_email_contact_details customer_email_contact_details_id_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_email_contact_details
    ADD CONSTRAINT customer_email_contact_details_id_pkey PRIMARY KEY (email_contact_details_id);


--
-- Name: customer_phone_contact_details customer_phone_contact_details_id_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_phone_contact_details
    ADD CONSTRAINT customer_phone_contact_details_id_pkey PRIMARY KEY (phone_contact_details_id);


--
-- Name: customer_social_media_contact_details customer_social_media_contact_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_social_media_contact_details
    ADD CONSTRAINT customer_social_media_contact_details_pkey PRIMARY KEY (social_media_contact_details_id);


--
-- Name: email_contact_details_contact_reason email_contact_details_contact_reason_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.email_contact_details_contact_reason
    ADD CONSTRAINT email_contact_details_contact_reason_pkey PRIMARY KEY (id);


--
-- Name: email_contact_details email_contact_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.email_contact_details
    ADD CONSTRAINT email_contact_details_pkey PRIMARY KEY (email_contact_details_id);


--
-- Name: email email_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.email
    ADD CONSTRAINT email_pkey PRIMARY KEY (email_id);


--
-- Name: email email_unique_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.email
    ADD CONSTRAINT email_unique_key UNIQUE (email);


--
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (employee_id);


--
-- Name: employee_position employee_position_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_position
    ADD CONSTRAINT employee_position_pkey PRIMARY KEY (employee_position_id);


--
-- Name: face_to_face_contact_contact_reason face_to_face_contact_contact_reason_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.face_to_face_contact_contact_reason
    ADD CONSTRAINT face_to_face_contact_contact_reason_pkey PRIMARY KEY (id);


--
-- Name: face_to_face_contact face_to_face_contact_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.face_to_face_contact
    ADD CONSTRAINT face_to_face_contact_pk PRIMARY KEY (contact_id);


--
-- Name: financial_instituition financial_instituition_id_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.financial_instituition
    ADD CONSTRAINT financial_instituition_id_pkey PRIMARY KEY (financial_instituition_id);


--
-- Name: gupshup_whatsapp_communication gupshup_whatsapp_communication_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gupshup_whatsapp_communication
    ADD CONSTRAINT gupshup_whatsapp_communication_pkey PRIMARY KEY (id);


--
-- Name: internet_billing_address internet_billing_address_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_billing_address
    ADD CONSTRAINT internet_billing_address_type_pkey PRIMARY KEY (internet_billing_address_id);


--
-- Name: internet_connection_type internet_connection_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_connection_type
    ADD CONSTRAINT internet_connection_type_pkey PRIMARY KEY (internet_connection_type_id);


--
-- Name: internet_customer_contact_email internet_customer_contact_email_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_customer_contact_email
    ADD CONSTRAINT internet_customer_contact_email_pkey PRIMARY KEY (internet_customer_contact_id);


--
-- Name: internet_customer_contact_phone_permissions internet_customer_contact_phone_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_customer_contact_phone_permissions
    ADD CONSTRAINT internet_customer_contact_phone_permissions_pkey PRIMARY KEY (internet_customer_contact_phone_permissions_id);


--
-- Name: internet_customer_contact_phone internet_customer_contact_phone_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_customer_contact_phone
    ADD CONSTRAINT internet_customer_contact_phone_pkey PRIMARY KEY (internet_customer_contact_id);


--
-- Name: internet_customer_contact internet_customer_contact_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_customer_contact
    ADD CONSTRAINT internet_customer_contact_pkey PRIMARY KEY (internet_customer_contact_id);


--
-- Name: internet_customer_contact_social_media internet_customer_contact_social_media_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_customer_contact_social_media
    ADD CONSTRAINT internet_customer_contact_social_media_pkey PRIMARY KEY (internet_customer_contact_id);


--
-- Name: internet_customer internet_customer_id_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_customer
    ADD CONSTRAINT internet_customer_id_pkey PRIMARY KEY (internet_customer_id);


--
-- Name: internet_customer_payment_payment_slip internet_customer_payment_payment_slip_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_customer_payment_payment_slip
    ADD CONSTRAINT internet_customer_payment_payment_slip_pkey PRIMARY KEY (internet_customer_payment_payment_slip_id);


--
-- Name: internet_customer_payment_slip internet_customer_payment_slip_id_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_customer_payment_slip
    ADD CONSTRAINT internet_customer_payment_slip_id_pkey PRIMARY KEY (internet_customer_payment_slip_id);


--
-- Name: internet_plan internet_plan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_plan
    ADD CONSTRAINT internet_plan_pkey PRIMARY KEY (internet_plan_id);


--
-- Name: internet_plan_price internet_plan_price_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_plan_price
    ADD CONSTRAINT internet_plan_price_pkey PRIMARY KEY (internet_plan_price_id);


--
-- Name: internet_plan_public_place internet_plan_public_place_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_plan_public_place
    ADD CONSTRAINT internet_plan_public_place_pk PRIMARY KEY (id);


--
-- Name: internet_provider_brazilian_cities internet_provider_brazilian_cities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_provider_brazilian_cities
    ADD CONSTRAINT internet_provider_brazilian_cities_pkey PRIMARY KEY (id);


--
-- Name: internet_provider_due_dates internet_provider_due_dates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_provider_due_dates
    ADD CONSTRAINT internet_provider_due_dates_pkey PRIMARY KEY (internet_provider_due_dates_id);


--
-- Name: internet_provider_emails internet_provider_emails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_provider_emails
    ADD CONSTRAINT internet_provider_emails_pkey PRIMARY KEY (id);


--
-- Name: internet_provider_gupshup_integration internet_provider_gupshup_integration_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_provider_gupshup_integration
    ADD CONSTRAINT internet_provider_gupshup_integration_pkey PRIMARY KEY (id);


--
-- Name: internet_provider_internet_plan internet_provider_internet_plan_cities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_provider_internet_plan
    ADD CONSTRAINT internet_provider_internet_plan_cities_pkey PRIMARY KEY (id);


--
-- Name: internet_provider_phone internet_provider_phone_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_provider_phone
    ADD CONSTRAINT internet_provider_phone_pkey PRIMARY KEY (id);


--
-- Name: internet_provider internet_provider_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_provider
    ADD CONSTRAINT internet_provider_pkey PRIMARY KEY (internet_provider_id);


--
-- Name: internet_subscription_due_date internet_subscription_due_date_id_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_subscription_due_date
    ADD CONSTRAINT internet_subscription_due_date_id_pkey PRIMARY KEY (internet_subscription_due_date_id);


--
-- Name: internet_subscription_internet_plan internet_subscription_internet_plan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_subscription_internet_plan
    ADD CONSTRAINT internet_subscription_internet_plan_pkey PRIMARY KEY (internet_subscription_internet_plan_id);


--
-- Name: internet_subscription_login internet_subscription_login_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_subscription_login
    ADD CONSTRAINT internet_subscription_login_pkey PRIMARY KEY (username);


--
-- Name: internet_subscription internet_subscription_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_subscription
    ADD CONSTRAINT internet_subscription_pkey PRIMARY KEY (internet_subscription_id);


--
-- Name: internet_subscription_address internet_subscription_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_subscription_address
    ADD CONSTRAINT internet_subscription_type_pkey PRIMARY KEY (internet_subscription_address_id);


--
-- Name: legal_entity_internet_customer legal_entity_internet_customer_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.legal_entity_internet_customer
    ADD CONSTRAINT legal_entity_internet_customer_pk PRIMARY KEY (internet_customer_id);


--
-- Name: legal_entity legal_entity_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.legal_entity
    ADD CONSTRAINT legal_entity_pkey PRIMARY KEY (legal_entity_id);


--
-- Name: legal_entity legal_entity_un; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.legal_entity
    ADD CONSTRAINT legal_entity_un UNIQUE (legal_entity_cnpj);


--
-- Name: model_vendor model_vendor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.model_vendor
    ADD CONSTRAINT model_vendor_pkey PRIMARY KEY (model_vendor_id);


--
-- Name: natural_pearson natural_pearson_id_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.natural_pearson
    ADD CONSTRAINT natural_pearson_id_pkey PRIMARY KEY (natural_pearson_id);


--
-- Name: natural_person_internet_customer natural_person_internet_customer_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.natural_person_internet_customer
    ADD CONSTRAINT natural_person_internet_customer_pk PRIMARY KEY (internet_customer_id);


--
-- Name: payment_method_credit_card payment_method_credit_card_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_method_credit_card
    ADD CONSTRAINT payment_method_credit_card_pkey PRIMARY KEY (payment_method_id);


--
-- Name: payment_method_debit_card payment_method_debit_card_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_method_debit_card
    ADD CONSTRAINT payment_method_debit_card_pkey PRIMARY KEY (payment_method_id);


--
-- Name: payment_method payment_method_id_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_method
    ADD CONSTRAINT payment_method_id_pkey PRIMARY KEY (payment_method_id);


--
-- Name: phone phone_code_area_phone_number_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.phone
    ADD CONSTRAINT phone_code_area_phone_number_unique UNIQUE (phone_code_area, phone_phone_number);


--
-- Name: phone_contact_details_contact_reason phone_contact_details_contact_reason_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.phone_contact_details_contact_reason
    ADD CONSTRAINT phone_contact_details_contact_reason_pkey PRIMARY KEY (id);


--
-- Name: phone_contact_details phone_contact_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.phone_contact_details
    ADD CONSTRAINT phone_contact_details_pkey PRIMARY KEY (phone_contact_details_id);


--
-- Name: phone_contact phone_contact_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.phone_contact
    ADD CONSTRAINT phone_contact_pk PRIMARY KEY (contact_id);


--
-- Name: phone phone_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.phone
    ADD CONSTRAINT phone_pkey PRIMARY KEY (phone_id);


--
-- Name: position position_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."position"
    ADD CONSTRAINT position_pkey PRIMARY KEY (position_id);


--
-- Name: promotional_campaign promotional_campaign_id_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.promotional_campaign
    ADD CONSTRAINT promotional_campaign_id_pkey PRIMARY KEY (promotional_campaign_id);


--
-- Name: promotional_campaign_material_item promotional_campaign_material_item_id_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.promotional_campaign_material_item
    ADD CONSTRAINT promotional_campaign_material_item_id_pkey PRIMARY KEY (promotional_campaign_material_item_id);


--
-- Name: promotional_campaign_service_item promotional_campaign_service_item_id_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.promotional_campaign_service_item
    ADD CONSTRAINT promotional_campaign_service_item_id_pkey PRIMARY KEY (promotional_campaign_service_item_id);


--
-- Name: promotional_campaign_service_item_internet_plan promotional_campaign_service_item_internet_plan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.promotional_campaign_service_item_internet_plan
    ADD CONSTRAINT promotional_campaign_service_item_internet_plan_pkey PRIMARY KEY (id);


--
-- Name: promotional_campaign promotional_campaign_un; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.promotional_campaign
    ADD CONSTRAINT promotional_campaign_un UNIQUE (promotional_campaign_code);


--
-- Name: receivables_portfolio receivables_portfolio_id_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.receivables_portfolio
    ADD CONSTRAINT receivables_portfolio_id_pkey PRIMARY KEY (receivables_portfolio_id);


--
-- Name: salesman_period_active salesman_period_active_id_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salesman_period_active
    ADD CONSTRAINT salesman_period_active_id_pkey PRIMARY KEY (salesman_period_active_id);


--
-- Name: salesman salesman_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salesman
    ADD CONSTRAINT salesman_pkey PRIMARY KEY (salesman_id);


--
-- Name: social_media_contact_details_contact_reason social_media_contact_details_contact_reason_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_media_contact_details_contact_reason
    ADD CONSTRAINT social_media_contact_details_contact_reason_pkey PRIMARY KEY (id);


--
-- Name: social_media_contact_details social_media_contact_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_media_contact_details
    ADD CONSTRAINT social_media_contact_details_pkey PRIMARY KEY (social_media_contact_details_id);


--
-- Name: social_media_contact social_media_contact_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_media_contact
    ADD CONSTRAINT social_media_contact_pk PRIMARY KEY (contact_id);


--
-- Name: social_media_platform social_media_platform_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_media_platform
    ADD CONSTRAINT social_media_platform_pkey PRIMARY KEY (social_media_platform_id);


--
-- Name: social_media_profile social_media_profile_id_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_media_profile
    ADD CONSTRAINT social_media_profile_id_pkey PRIMARY KEY (social_media_profile_id);


--
-- Name: social_media_profile social_media_profile_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_media_profile
    ADD CONSTRAINT social_media_profile_unique UNIQUE (social_media_profile, social_media_profile_platform_id);


--
-- Name: technician_period_active technician_period_active_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.technician_period_active
    ADD CONSTRAINT technician_period_active_pkey PRIMARY KEY (technician_period_active_id);


--
-- Name: technician technician_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.technician
    ADD CONSTRAINT technician_pkey PRIMARY KEY (technician_id);


--
-- Name: telecommunications_equipment telecommunications_equipment_id_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.telecommunications_equipment
    ADD CONSTRAINT telecommunications_equipment_id_pkey PRIMARY KEY (telecommunications_equipment_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (username);


--
-- Name: vendor vendor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendor
    ADD CONSTRAINT vendor_pkey PRIMARY KEY (vendor_id);


--
-- Name: work_order_customer work_order_customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.work_order_customer
    ADD CONSTRAINT work_order_customer_pkey PRIMARY KEY (work_order_id);


--
-- Name: work_order_infrastructure work_order_infrastructure_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.work_order_infrastructure
    ADD CONSTRAINT work_order_infrastructure_pkey PRIMARY KEY (work_order_id);


--
-- Name: work_order_item_customer_move_another_location work_order_item_customer_move_another_location_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.work_order_item_customer_move_another_location
    ADD CONSTRAINT work_order_item_customer_move_another_location_pkey PRIMARY KEY (work_order_item_id);


--
-- Name: work_order_item_customer_plan_migration work_order_item_customer_plan_migration_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.work_order_item_customer_plan_migration
    ADD CONSTRAINT work_order_item_customer_plan_migration_pkey PRIMARY KEY (work_order_item_id);


--
-- Name: work_order_item work_order_item_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.work_order_item
    ADD CONSTRAINT work_order_item_pkey PRIMARY KEY (work_order_item_id);


--
-- Name: work_order work_order_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.work_order
    ADD CONSTRAINT work_order_pkey PRIMARY KEY (work_order_id);


--
-- Name: work_order_service work_order_service_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.work_order_service
    ADD CONSTRAINT work_order_service_pkey PRIMARY KEY (work_order_service_id);


--
-- Name: work_order_service_technician_result work_order_service_technician_result_id_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.work_order_service_technician_result
    ADD CONSTRAINT work_order_service_technician_result_id_pkey PRIMARY KEY (work_order_service_technician_result_id);


--
-- Name: work_order_service_technician_result_photo work_order_service_technician_result_photo_id_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.work_order_service_technician_result_photo
    ADD CONSTRAINT work_order_service_technician_result_photo_id_pkey PRIMARY KEY (work_order_service_technician_result_photo_id);


--
-- Name: work_order_states work_order_states_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.work_order_states
    ADD CONSTRAINT work_order_states_pkey PRIMARY KEY (work_order_state_id);


--
-- Name: ix_auth_username; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX ix_auth_username ON public.authorities USING btree (username, authority);


--
-- Name: internet_plan_public_place address_public_place_public_place_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_plan_public_place
    ADD CONSTRAINT address_public_place_public_place_id_fkey FOREIGN KEY (public_place_id) REFERENCES public.public_place(public_place_id);


--
-- Name: branch_bank branch_bank_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.branch_bank
    ADD CONSTRAINT branch_bank_fk FOREIGN KEY (financial_instituition_id) REFERENCES public.financial_instituition(financial_instituition_id);


--
-- Name: brazilian_city brazilian_city_brazilian_state_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brazilian_city
    ADD CONSTRAINT brazilian_city_brazilian_state_id_fkey FOREIGN KEY (brazilian_state_id) REFERENCES public.brazilian_states(state_id);


--
-- Name: brazilian_city_holiday brazilian_city_holiday_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brazilian_city_holiday
    ADD CONSTRAINT brazilian_city_holiday_id_fkey FOREIGN KEY (city_id) REFERENCES public.brazilian_city(city_id);


--
-- Name: brazilian_city_neighborhood brazilian_neighborhood_brazilian_city_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brazilian_city_neighborhood
    ADD CONSTRAINT brazilian_neighborhood_brazilian_city_id_fkey FOREIGN KEY (brazilian_city_id) REFERENCES public.brazilian_city(city_id);


--
-- Name: public_place brazilian_public_place_brazilian_neighborhood_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.public_place
    ADD CONSTRAINT brazilian_public_place_brazilian_neighborhood_id_fkey FOREIGN KEY (brazilian_neighborhood_id) REFERENCES public.brazilian_city_neighborhood(neighborhood_id);


--
-- Name: brazilian_states brazilian_state_contry_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brazilian_states
    ADD CONSTRAINT brazilian_state_contry_id_fkey FOREIGN KEY (country_id) REFERENCES public.country(country_id);


--
-- Name: brazilian_state_holiday brazilian_state_holiday_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brazilian_state_holiday
    ADD CONSTRAINT brazilian_state_holiday_id_fkey FOREIGN KEY (state_id) REFERENCES public.brazilian_states(state_id);


--
-- Name: concentrator concentrator_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.concentrator
    ADD CONSTRAINT concentrator_fk FOREIGN KEY (concentrator_type_id) REFERENCES public.concentrator_types(concentrator_type_id);


--
-- Name: concentrator_types concentrator_types_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.concentrator_types
    ADD CONSTRAINT concentrator_types_fk FOREIGN KEY (vendor_id) REFERENCES public.vendor(vendor_id);


--
-- Name: contact contact_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact
    ADD CONSTRAINT contact_fk FOREIGN KEY (phone_id) REFERENCES public.phone(phone_id);


--
-- Name: country_holiday country_holiday_country_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.country_holiday
    ADD CONSTRAINT country_holiday_country_id_fkey FOREIGN KEY (country_id) REFERENCES public.country(country_id);


--
-- Name: customer_email_contact_details customer_email_contact_details_email_contact_details_email_cont; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_email_contact_details
    ADD CONSTRAINT customer_email_contact_details_email_contact_details_email_cont FOREIGN KEY (email_contact_details_id) REFERENCES public.email_contact_details(email_contact_details_id);


--
-- Name: customer_email_contact_details customer_email_contact_details_internet_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_email_contact_details
    ADD CONSTRAINT customer_email_contact_details_internet_customer_id_fkey FOREIGN KEY (internet_subscription_id) REFERENCES public.internet_subscription(internet_subscription_id);


--
-- Name: customer_face_to_face_contact customer_email_contact_details_internet_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_face_to_face_contact
    ADD CONSTRAINT customer_email_contact_details_internet_customer_id_fkey FOREIGN KEY (internet_subscription_id) REFERENCES public.internet_subscription(internet_subscription_id);


--
-- Name: customer_face_to_face_contact customer_face_to_face_contact_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_face_to_face_contact
    ADD CONSTRAINT customer_face_to_face_contact_fk FOREIGN KEY (contact_id) REFERENCES public.face_to_face_contact(contact_id);


--
-- Name: customer_phone_contact_details customer_phone_contact_details_internet_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_phone_contact_details
    ADD CONSTRAINT customer_phone_contact_details_internet_customer_id_fkey FOREIGN KEY (internet_subscription_id) REFERENCES public.internet_subscription(internet_subscription_id);


--
-- Name: customer_social_media_contact_details customer_phone_contact_details_internet_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_social_media_contact_details
    ADD CONSTRAINT customer_phone_contact_details_internet_customer_id_fkey FOREIGN KEY (internet_subscription_id) REFERENCES public.internet_subscription(internet_subscription_id);


--
-- Name: customer_phone_contact_details customer_phone_contact_details_phone_contact_details_phone_cont; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_phone_contact_details
    ADD CONSTRAINT customer_phone_contact_details_phone_contact_details_phone_cont FOREIGN KEY (phone_contact_details_id) REFERENCES public.phone_contact_details(phone_contact_details_id);


--
-- Name: customer_social_media_contact_details customer_social_media_contact_details_internet_subscription_id_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_social_media_contact_details
    ADD CONSTRAINT customer_social_media_contact_details_internet_subscription_id_ FOREIGN KEY (social_media_contact_details_id) REFERENCES public.social_media_contact_details(social_media_contact_details_id);


--
-- Name: email_contact_details_contact_reason email_contact_details_contact_reason_contact_reason_id_f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.email_contact_details_contact_reason
    ADD CONSTRAINT email_contact_details_contact_reason_contact_reason_id_f FOREIGN KEY (contact_reason_id) REFERENCES public.contact_reason(contact_reason_id);


--
-- Name: email_contact_details_contact_reason email_contact_details_contact_reason_email_contact_details_id_f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.email_contact_details_contact_reason
    ADD CONSTRAINT email_contact_details_contact_reason_email_contact_details_id_f FOREIGN KEY (email_contact_details_id) REFERENCES public.email_contact_details(email_contact_details_id);


--
-- Name: email_contact email_contact_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.email_contact
    ADD CONSTRAINT email_contact_fk FOREIGN KEY (contact_id) REFERENCES public.contact(contact_id);


--
-- Name: email_contact email_email_contact_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.email_contact
    ADD CONSTRAINT email_email_contact_fk FOREIGN KEY (email_id) REFERENCES public.email(email_id);


--
-- Name: employee employee_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_fk FOREIGN KEY (natural_pearson_id) REFERENCES public.natural_pearson(natural_pearson_id);


--
-- Name: employee employee_internet_provider_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_internet_provider_id_fk FOREIGN KEY (internet_provider_id) REFERENCES public.internet_provider(internet_provider_id);


--
-- Name: employee_position employee_position_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_position
    ADD CONSTRAINT employee_position_fk FOREIGN KEY (employee_id) REFERENCES public.employee(employee_id);


--
-- Name: employee_position employee_position_position_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_position
    ADD CONSTRAINT employee_position_position_id_fk FOREIGN KEY (position_id) REFERENCES public."position"(position_id);


--
-- Name: face_to_face_contact_contact_reason face_to_face_contact_contact_reason_contact_reason_id_f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.face_to_face_contact_contact_reason
    ADD CONSTRAINT face_to_face_contact_contact_reason_contact_reason_id_f FOREIGN KEY (contact_reason_id) REFERENCES public.contact_reason(contact_reason_id);


--
-- Name: face_to_face_contact_contact_reason face_to_face_contact_contact_reason_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.face_to_face_contact_contact_reason
    ADD CONSTRAINT face_to_face_contact_contact_reason_fk FOREIGN KEY (contact_id) REFERENCES public.face_to_face_contact(contact_id);


--
-- Name: face_to_face_contact face_to_face_contact_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.face_to_face_contact
    ADD CONSTRAINT face_to_face_contact_fk FOREIGN KEY (contact_id) REFERENCES public.contact(contact_id);


--
-- Name: authorities fk_authorities_users; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authorities
    ADD CONSTRAINT fk_authorities_users FOREIGN KEY (username) REFERENCES public.users(username);


--
-- Name: internet_customer_contact_social_media iinternet_customer_contact_social_media_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_customer_contact_social_media
    ADD CONSTRAINT iinternet_customer_contact_social_media_fk FOREIGN KEY (social_media_profile_id) REFERENCES public.social_media_profile(social_media_profile_id);


--
-- Name: internet_provider_internet_plan iinternet_provider_internet_plan_internet_provider_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_provider_internet_plan
    ADD CONSTRAINT iinternet_provider_internet_plan_internet_provider_id_fk FOREIGN KEY (internet_provider_id) REFERENCES public.internet_provider(internet_provider_id);


--
-- Name: internet_billing_address internet_billing_address_address_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_billing_address
    ADD CONSTRAINT internet_billing_address_address_id_fkey FOREIGN KEY (internet_address_id) REFERENCES public.address(address_id);


--
-- Name: internet_billing_address internet_billing_address_internet_subscription_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_billing_address
    ADD CONSTRAINT internet_billing_address_internet_subscription_id_fkey FOREIGN KEY (internet_subscription_id) REFERENCES public.internet_subscription(internet_subscription_id);


--
-- Name: internet_customer_contact_email internet_customer_contact_email_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_customer_contact_email
    ADD CONSTRAINT internet_customer_contact_email_fk FOREIGN KEY (email_id) REFERENCES public.email(email_id);


--
-- Name: internet_customer_contact_email internet_customer_contact_email_internet_customer_contact_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_customer_contact_email
    ADD CONSTRAINT internet_customer_contact_email_internet_customer_contact_fk FOREIGN KEY (internet_customer_contact_id) REFERENCES public.internet_customer_contact(internet_customer_contact_id);


--
-- Name: internet_customer_contact internet_customer_contact_internet_customer_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_customer_contact
    ADD CONSTRAINT internet_customer_contact_internet_customer_fk FOREIGN KEY (internet_customer_id) REFERENCES public.internet_customer(internet_customer_id);


--
-- Name: internet_customer_contact_phone internet_customer_contact_phone_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_customer_contact_phone
    ADD CONSTRAINT internet_customer_contact_phone_fk FOREIGN KEY (phone_id) REFERENCES public.phone(phone_id);


--
-- Name: internet_customer_contact_phone internet_customer_contact_phone_internet_customer_contact_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_customer_contact_phone
    ADD CONSTRAINT internet_customer_contact_phone_internet_customer_contact_fk FOREIGN KEY (internet_customer_contact_id) REFERENCES public.internet_customer_contact(internet_customer_contact_id);


--
-- Name: internet_customer_contact_phone_permissions internet_customer_contact_phone_permissions_internet_customer_c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_customer_contact_phone_permissions
    ADD CONSTRAINT internet_customer_contact_phone_permissions_internet_customer_c FOREIGN KEY (internet_customer_contact_id) REFERENCES public.internet_customer_contact_phone(internet_customer_contact_id);


--
-- Name: internet_customer_contact_social_media internet_customer_contact_social_media_internet_customer_contac; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_customer_contact_social_media
    ADD CONSTRAINT internet_customer_contact_social_media_internet_customer_contac FOREIGN KEY (internet_customer_contact_id) REFERENCES public.internet_customer_contact(internet_customer_contact_id);


--
-- Name: internet_customer_payment_payment_slip internet_customer_payment_payment_slip_internet_customer_paymen; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_customer_payment_payment_slip
    ADD CONSTRAINT internet_customer_payment_payment_slip_internet_customer_paymen FOREIGN KEY (internet_customer_payment_slip_id) REFERENCES public.internet_customer_payment_slip(internet_customer_payment_slip_id);


--
-- Name: internet_customer_payment_payment_slip internet_customer_payment_payment_slip_payment_method_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_customer_payment_payment_slip
    ADD CONSTRAINT internet_customer_payment_payment_slip_payment_method_id_fkey FOREIGN KEY (payment_method_id) REFERENCES public.payment_method(payment_method_id);


--
-- Name: internet_customer_payment_slip internet_customer_payment_slip_internet_subscription_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_customer_payment_slip
    ADD CONSTRAINT internet_customer_payment_slip_internet_subscription_id_fk FOREIGN KEY (internet_subscription_id) REFERENCES public.internet_subscription(internet_subscription_id);


--
-- Name: internet_customer_payment_slip internet_customer_payment_slip_receivables_portfolio_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_customer_payment_slip
    ADD CONSTRAINT internet_customer_payment_slip_receivables_portfolio_id_fk FOREIGN KEY (receivables_portfolio_id) REFERENCES public.receivables_portfolio(receivables_portfolio_id);


--
-- Name: internet_plan internet_plan_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_plan
    ADD CONSTRAINT internet_plan_fk FOREIGN KEY (internet_connection_type_id) REFERENCES public.internet_connection_type(internet_connection_type_id);


--
-- Name: internet_plan_price internet_plan_price_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_plan_price
    ADD CONSTRAINT internet_plan_price_fk FOREIGN KEY (internet_plan_id) REFERENCES public.internet_plan(internet_plan_id);


--
-- Name: internet_plan_public_place internet_plan_public_place_internet_plan_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_plan_public_place
    ADD CONSTRAINT internet_plan_public_place_internet_plan_id_fkey FOREIGN KEY (internet_plan_id) REFERENCES public.internet_plan(internet_plan_id);


--
-- Name: internet_provider_brazilian_cities internet_provider_brazilian_cities_city_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_provider_brazilian_cities
    ADD CONSTRAINT internet_provider_brazilian_cities_city_id_fk FOREIGN KEY (city_id) REFERENCES public.brazilian_city(city_id);


--
-- Name: internet_provider_brazilian_cities internet_provider_brazilian_cities_internet_provider_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_provider_brazilian_cities
    ADD CONSTRAINT internet_provider_brazilian_cities_internet_provider_id_fk FOREIGN KEY (internet_provider_id) REFERENCES public.internet_provider(internet_provider_id);


--
-- Name: promotional_campaign_service_item internet_provider_due_dates_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.promotional_campaign_service_item
    ADD CONSTRAINT internet_provider_due_dates_fk FOREIGN KEY (promotional_campaign_id) REFERENCES public.promotional_campaign(promotional_campaign_id);


--
-- Name: internet_provider_emails internet_provider_emails_email_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_provider_emails
    ADD CONSTRAINT internet_provider_emails_email_id_fk FOREIGN KEY (email_id) REFERENCES public.email(email_id);


--
-- Name: internet_provider_emails internet_provider_emails_internet_provider_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_provider_emails
    ADD CONSTRAINT internet_provider_emails_internet_provider_id_fk FOREIGN KEY (internet_provider_id) REFERENCES public.internet_provider(internet_provider_id);


--
-- Name: internet_provider internet_provider_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_provider
    ADD CONSTRAINT internet_provider_fk FOREIGN KEY (address_id) REFERENCES public.address(address_id);


--
-- Name: internet_provider_internet_plan internet_provider_internet_plan_internet_plan_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_provider_internet_plan
    ADD CONSTRAINT internet_provider_internet_plan_internet_plan_id_fk FOREIGN KEY (internet_plan_id) REFERENCES public.internet_plan(internet_plan_id);


--
-- Name: internet_provider internet_provider_legal_entity_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_provider
    ADD CONSTRAINT internet_provider_legal_entity_id_fk FOREIGN KEY (legal_entity_id) REFERENCES public.legal_entity(legal_entity_id);


--
-- Name: internet_provider_phone internet_provider_phone_internet_provider_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_provider_phone
    ADD CONSTRAINT internet_provider_phone_internet_provider_id_fk FOREIGN KEY (internet_provider_id) REFERENCES public.internet_provider(internet_provider_id);


--
-- Name: internet_provider_phone internet_provider_phone_phone_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_provider_phone
    ADD CONSTRAINT internet_provider_phone_phone_id_fk FOREIGN KEY (phone_id) REFERENCES public.phone(phone_id);


--
-- Name: internet_subscription_address internet_subscription_address_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_subscription_address
    ADD CONSTRAINT internet_subscription_address_id_fkey FOREIGN KEY (internet_address_id) REFERENCES public.address(address_id);


--
-- Name: internet_subscription_due_date internet_subscription_due_date_internet_provider_due_dates_id_f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_subscription_due_date
    ADD CONSTRAINT internet_subscription_due_date_internet_provider_due_dates_id_f FOREIGN KEY (internet_provider_due_dates_id) REFERENCES public.internet_provider_due_dates(internet_provider_due_dates_id);


--
-- Name: internet_subscription_due_date internet_subscription_due_date_internet_subscription_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_subscription_due_date
    ADD CONSTRAINT internet_subscription_due_date_internet_subscription_id_fk FOREIGN KEY (internet_subscription_id) REFERENCES public.internet_subscription(internet_subscription_id);


--
-- Name: internet_subscription internet_subscription_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_subscription
    ADD CONSTRAINT internet_subscription_fk FOREIGN KEY (internet_customer_id) REFERENCES public.internet_customer(internet_customer_id);


--
-- Name: internet_subscription internet_subscription_internet_plan_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_subscription
    ADD CONSTRAINT internet_subscription_internet_plan_id_fkey FOREIGN KEY (internet_plan_id) REFERENCES public.internet_plan(internet_plan_id);


--
-- Name: internet_subscription_internet_plan internet_subscription_internet_plan_internet_plan_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_subscription_internet_plan
    ADD CONSTRAINT internet_subscription_internet_plan_internet_plan_id_fkey FOREIGN KEY (internet_plan_id) REFERENCES public.internet_plan(internet_plan_id);


--
-- Name: internet_subscription_internet_plan internet_subscription_internet_plan_internet_subscription_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_subscription_internet_plan
    ADD CONSTRAINT internet_subscription_internet_plan_internet_subscription_id_fk FOREIGN KEY (internet_subscription_id) REFERENCES public.internet_subscription(internet_subscription_id);


--
-- Name: internet_subscription_address internet_subscription_internet_subscription_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_subscription_address
    ADD CONSTRAINT internet_subscription_internet_subscription_id_fkey FOREIGN KEY (internet_subscription_id) REFERENCES public.internet_subscription(internet_subscription_id);


--
-- Name: internet_subscription_login internet_subscription_login_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internet_subscription_login
    ADD CONSTRAINT internet_subscription_login_fk FOREIGN KEY (internet_subscription_id) REFERENCES public.internet_subscription(internet_subscription_id);


--
-- Name: legal_entity_internet_customer legal_entity_internet_customer_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.legal_entity_internet_customer
    ADD CONSTRAINT legal_entity_internet_customer_fk FOREIGN KEY (legal_entity_id) REFERENCES public.legal_entity(legal_entity_id);


--
-- Name: legal_entity_internet_customer legal_entity_internet_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.legal_entity_internet_customer
    ADD CONSTRAINT legal_entity_internet_customer_id_fkey FOREIGN KEY (internet_customer_id) REFERENCES public.internet_customer(internet_customer_id);


--
-- Name: model_vendor model_vendor_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.model_vendor
    ADD CONSTRAINT model_vendor_fk FOREIGN KEY (vendor_id) REFERENCES public.vendor(vendor_id);


--
-- Name: natural_person_internet_customer natural_person_internet_customer_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.natural_person_internet_customer
    ADD CONSTRAINT natural_person_internet_customer_fk FOREIGN KEY (natural_pearson_id) REFERENCES public.natural_pearson(natural_pearson_id);


--
-- Name: natural_person_internet_customer natural_person_internet_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.natural_person_internet_customer
    ADD CONSTRAINT natural_person_internet_customer_id_fkey FOREIGN KEY (internet_customer_id) REFERENCES public.internet_customer(internet_customer_id);


--
-- Name: payment_method_credit_card payment_method_credit_card_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_method_credit_card
    ADD CONSTRAINT payment_method_credit_card_fk FOREIGN KEY (payment_method_id) REFERENCES public.payment_method(payment_method_id);


--
-- Name: payment_method_debit_card payment_method_debit_card_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_method_debit_card
    ADD CONSTRAINT payment_method_debit_card_fk FOREIGN KEY (payment_method_id) REFERENCES public.payment_method(payment_method_id);


--
-- Name: phone_contact_details_contact_reason phone_contact_details_contact_reason_contact_reason_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.phone_contact_details_contact_reason
    ADD CONSTRAINT phone_contact_details_contact_reason_contact_reason_id_fkey FOREIGN KEY (contact_reason_id) REFERENCES public.contact_reason(contact_reason_id);


--
-- Name: phone_contact_details_contact_reason phone_contact_details_contact_reason_phone_contact_details_id_f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.phone_contact_details_contact_reason
    ADD CONSTRAINT phone_contact_details_contact_reason_phone_contact_details_id_f FOREIGN KEY (phone_contact_details_id) REFERENCES public.phone_contact_details(phone_contact_details_id);


--
-- Name: phone_contact_details phone_contact_details_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.phone_contact_details
    ADD CONSTRAINT phone_contact_details_fk FOREIGN KEY (contact_id) REFERENCES public.phone_contact(contact_id);


--
-- Name: phone_contact phone_contact_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.phone_contact
    ADD CONSTRAINT phone_contact_fk FOREIGN KEY (phone_id) REFERENCES public.phone(phone_id);


--
-- Name: promotional_campaign_material_item promotional_campaign_material_item_promotional_campaign_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.promotional_campaign_material_item
    ADD CONSTRAINT promotional_campaign_material_item_promotional_campaign_id_fk FOREIGN KEY (promotional_campaign_id) REFERENCES public.promotional_campaign(promotional_campaign_id);


--
-- Name: promotional_campaign_service_item_internet_plan promotional_campaign_service_item_id_internet_plan_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.promotional_campaign_service_item_internet_plan
    ADD CONSTRAINT promotional_campaign_service_item_id_internet_plan_id_fk FOREIGN KEY (internet_plan_id) REFERENCES public.internet_plan(internet_plan_id);


--
-- Name: promotional_campaign_service_item_internet_plan promotional_campaign_service_item_id_promotional_campaign_servi; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.promotional_campaign_service_item_internet_plan
    ADD CONSTRAINT promotional_campaign_service_item_id_promotional_campaign_servi FOREIGN KEY (promotional_campaign_service_item_id) REFERENCES public.promotional_campaign_service_item(promotional_campaign_service_item_id);


--
-- Name: address public_place_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.address
    ADD CONSTRAINT public_place_id_fk FOREIGN KEY (public_place_id) REFERENCES public.public_place(public_place_id);


--
-- Name: receivables_portfolio receivables_portfolio_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.receivables_portfolio
    ADD CONSTRAINT receivables_portfolio_fk FOREIGN KEY (branch_bank_id) REFERENCES public.branch_bank(branch_bank_id);


--
-- Name: salesman salesman_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salesman
    ADD CONSTRAINT salesman_fk FOREIGN KEY (natural_pearson_id) REFERENCES public.natural_pearson(natural_pearson_id);


--
-- Name: salesman_period_active salesman_period_active_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salesman_period_active
    ADD CONSTRAINT salesman_period_active_fk FOREIGN KEY (salesman_id) REFERENCES public.salesman(salesman_id);


--
-- Name: social_media_contact_details_contact_reason social_media_contact_details_contact_reason_contact_reason_id_f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_media_contact_details_contact_reason
    ADD CONSTRAINT social_media_contact_details_contact_reason_contact_reason_id_f FOREIGN KEY (contact_reason_id) REFERENCES public.contact_reason(contact_reason_id);


--
-- Name: social_media_contact_details_contact_reason social_media_contact_details_contact_reason_social_media_contac; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_media_contact_details_contact_reason
    ADD CONSTRAINT social_media_contact_details_contact_reason_social_media_contac FOREIGN KEY (social_media_contact_details_id) REFERENCES public.social_media_contact_details(social_media_contact_details_id);


--
-- Name: social_media_contact social_media_contact_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_media_contact
    ADD CONSTRAINT social_media_contact_fk FOREIGN KEY (contact_id) REFERENCES public.contact(contact_id);


--
-- Name: social_media_contact social_media_contact_social_media_profile_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_media_contact
    ADD CONSTRAINT social_media_contact_social_media_profile_fk FOREIGN KEY (social_media_profile_id) REFERENCES public.social_media_profile(social_media_profile_id);


--
-- Name: social_media_profile social_media_profile_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_media_profile
    ADD CONSTRAINT social_media_profile_fk FOREIGN KEY (social_media_profile_platform_id) REFERENCES public.social_media_platform(social_media_platform_id);


--
-- Name: technician technician_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.technician
    ADD CONSTRAINT technician_fk FOREIGN KEY (employee_id) REFERENCES public.employee(employee_id);


--
-- Name: technician_period_active technician_period_active_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.technician_period_active
    ADD CONSTRAINT technician_period_active_fk FOREIGN KEY (technician_id) REFERENCES public.technician(technician_id);


--
-- Name: client_telecommunications_equipment telecommunications_equipment_client_telecommunications_equipmen; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client_telecommunications_equipment
    ADD CONSTRAINT telecommunications_equipment_client_telecommunications_equipmen FOREIGN KEY (telecommunications_equipment_id) REFERENCES public.telecommunications_equipment(telecommunications_equipment_id);


--
-- Name: telecommunications_equipment telecommunications_equipment_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.telecommunications_equipment
    ADD CONSTRAINT telecommunications_equipment_fk FOREIGN KEY (model_vendor_id) REFERENCES public.model_vendor(model_vendor_id);


--
-- Name: telecommunications_equipment telecommunications_equipment_internet_connection_type_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.telecommunications_equipment
    ADD CONSTRAINT telecommunications_equipment_internet_connection_type_fk FOREIGN KEY (internet_connection_type_id) REFERENCES public.internet_connection_type(internet_connection_type_id);


--
-- Name: work_order_customer work_order_customer_contact_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.work_order_customer
    ADD CONSTRAINT work_order_customer_contact_id_fk FOREIGN KEY (contact_id) REFERENCES public.contact(contact_id);


--
-- Name: work_order_customer work_order_customer_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.work_order_customer
    ADD CONSTRAINT work_order_customer_fk FOREIGN KEY (work_order_id) REFERENCES public.work_order(work_order_id);


--
-- Name: work_order_customer work_order_customer_internet_subscription_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.work_order_customer
    ADD CONSTRAINT work_order_customer_internet_subscription_id_fk FOREIGN KEY (internet_subscription_id) REFERENCES public.internet_subscription(internet_subscription_id);


--
-- Name: work_order_item_customer_move_another_location work_order_item_customer_address_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.work_order_item_customer_move_another_location
    ADD CONSTRAINT work_order_item_customer_address_id_fk FOREIGN KEY (address_id) REFERENCES public.address(address_id);


--
-- Name: work_order_item_customer_plan_migration work_order_item_customer_plan_migration_internet_plan_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.work_order_item_customer_plan_migration
    ADD CONSTRAINT work_order_item_customer_plan_migration_internet_plan_id_fk FOREIGN KEY (internet_plan_id) REFERENCES public.internet_plan(internet_plan_id);


--
-- Name: work_order_item_customer_plan_migration work_order_item_customer_plan_migration_work_order_item_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.work_order_item_customer_plan_migration
    ADD CONSTRAINT work_order_item_customer_plan_migration_work_order_item_id_fk FOREIGN KEY (work_order_item_id) REFERENCES public.work_order_item(work_order_item_id);


--
-- Name: work_order_item_customer_move_another_location work_order_item_customer_work_order_item_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.work_order_item_customer_move_another_location
    ADD CONSTRAINT work_order_item_customer_work_order_item_id_fk FOREIGN KEY (work_order_item_id) REFERENCES public.work_order_item(work_order_item_id);


--
-- Name: work_order_item work_order_item_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.work_order_item
    ADD CONSTRAINT work_order_item_fk FOREIGN KEY (work_order_service_id) REFERENCES public.work_order_service(work_order_service_id);


--
-- Name: work_order_item work_order_item_work_order_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.work_order_item
    ADD CONSTRAINT work_order_item_work_order_id_fk FOREIGN KEY (work_order_id) REFERENCES public.work_order(work_order_id);


--
-- Name: work_order_service work_order_service_internet_connection_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.work_order_service
    ADD CONSTRAINT work_order_service_internet_connection_type_id_fkey FOREIGN KEY (internet_connection_type_id) REFERENCES public.internet_connection_type(internet_connection_type_id);


--
-- Name: work_order_item work_order_service_technician_result_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.work_order_item
    ADD CONSTRAINT work_order_service_technician_result_id_fk FOREIGN KEY (work_order_service_technician_result_id) REFERENCES public.work_order_service_technician_result(work_order_service_technician_result_id);


--
-- Name: work_order_service_technician_result work_order_service_technician_result_internet_connection_type_i; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.work_order_service_technician_result
    ADD CONSTRAINT work_order_service_technician_result_internet_connection_type_i FOREIGN KEY (internet_connection_type_id) REFERENCES public.internet_connection_type(internet_connection_type_id);


--
-- Name: work_order_service_technician_result_photo work_order_service_technician_result_photo_work_order_service_t; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.work_order_service_technician_result_photo
    ADD CONSTRAINT work_order_service_technician_result_photo_work_order_service_t FOREIGN KEY (work_order_service_technician_result_id) REFERENCES public.work_order_service_technician_result(work_order_service_technician_result_id);


--
-- Name: work_order_states work_order_states_work_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.work_order_states
    ADD CONSTRAINT work_order_states_work_order_id_fkey FOREIGN KEY (work_order_id) REFERENCES public.work_order(work_order_id);


--
-- Name: work_order_infrastructure work_order_work_order_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.work_order_infrastructure
    ADD CONSTRAINT work_order_work_order_id_fk FOREIGN KEY (work_order_id) REFERENCES public.work_order(work_order_id);


--
-- PostgreSQL database dump complete
--

