--
-- PostgreSQL database dump
--

-- Dumped from database version 12.5
-- Dumped by pg_dump version 12.5

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
-- Name: disease; Type: TABLE; Schema: public; Owner: Baptiste
--

CREATE TABLE public.disease (
    id integer NOT NULL,
    name_disease character varying(50) NOT NULL,
    description text,
    is_vaccine boolean,
    vaccine integer[],
    is_treatment boolean,
    treatment integer[],
    symptoms integer[],
    short_description character varying(256),
    danger_level integer,
    warning_list integer[],
    type_disease integer[]
);


ALTER TABLE public.disease OWNER TO "Baptiste";

--
-- Name: disease_id_seq; Type: SEQUENCE; Schema: public; Owner: Baptiste
--

CREATE SEQUENCE public.disease_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.disease_id_seq OWNER TO "Baptiste";

--
-- Name: disease_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Baptiste
--

ALTER SEQUENCE public.disease_id_seq OWNED BY public.disease.id;


--
-- Name: disease_type; Type: TABLE; Schema: public; Owner: Baptiste
--

CREATE TABLE public.disease_type (
    id integer NOT NULL,
    type_name character varying(50) NOT NULL
);


ALTER TABLE public.disease_type OWNER TO "Baptiste";

--
-- Name: disease_type_id_seq; Type: SEQUENCE; Schema: public; Owner: Baptiste
--

CREATE SEQUENCE public.disease_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.disease_type_id_seq OWNER TO "Baptiste";

--
-- Name: disease_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Baptiste
--

ALTER SEQUENCE public.disease_type_id_seq OWNED BY public.disease_type.id;


--
-- Name: type_warning; Type: TABLE; Schema: public; Owner: Baptiste
--

CREATE TABLE public.type_warning (
    id integer NOT NULL,
    name character varying(50),
    name_icone character varying(50)
);


ALTER TABLE public.type_warning OWNER TO "Baptiste";

--
-- Name: type_warning_id_seq; Type: SEQUENCE; Schema: public; Owner: Baptiste
--

CREATE SEQUENCE public.type_warning_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.type_warning_id_seq OWNER TO "Baptiste";

--
-- Name: type_warning_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Baptiste
--

ALTER SEQUENCE public.type_warning_id_seq OWNED BY public.type_warning.id;


--
-- Name: warning; Type: TABLE; Schema: public; Owner: Baptiste
--

CREATE TABLE public.warning (
    id integer NOT NULL,
    description text,
    type integer
);


ALTER TABLE public.warning OWNER TO "Baptiste";

--
-- Name: warning_id_seq; Type: SEQUENCE; Schema: public; Owner: Baptiste
--

CREATE SEQUENCE public.warning_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.warning_id_seq OWNER TO "Baptiste";

--
-- Name: warning_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Baptiste
--

ALTER SEQUENCE public.warning_id_seq OWNED BY public.warning.id;


--
-- Name: disease id; Type: DEFAULT; Schema: public; Owner: Baptiste
--

ALTER TABLE ONLY public.disease ALTER COLUMN id SET DEFAULT nextval('public.disease_id_seq'::regclass);


--
-- Name: disease_type id; Type: DEFAULT; Schema: public; Owner: Baptiste
--

ALTER TABLE ONLY public.disease_type ALTER COLUMN id SET DEFAULT nextval('public.disease_type_id_seq'::regclass);


--
-- Name: type_warning id; Type: DEFAULT; Schema: public; Owner: Baptiste
--

ALTER TABLE ONLY public.type_warning ALTER COLUMN id SET DEFAULT nextval('public.type_warning_id_seq'::regclass);


--
-- Name: warning id; Type: DEFAULT; Schema: public; Owner: Baptiste
--

ALTER TABLE ONLY public.warning ALTER COLUMN id SET DEFAULT nextval('public.warning_id_seq'::regclass);


--
-- Data for Name: disease; Type: TABLE DATA; Schema: public; Owner: Baptiste
--

INSERT INTO public.disease (id, name_disease, description, is_vaccine, vaccine, is_treatment, treatment, symptoms, short_description, danger_level, warning_list, type_disease) VALUES (1, 'Maladie 1', 'ceci est une description de la maladie 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.disease (id, name_disease, description, is_vaccine, vaccine, is_treatment, treatment, symptoms, short_description, danger_level, warning_list, type_disease) VALUES (2, 'maladie 2', 'une description de la maladie 2', true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.disease (id, name_disease, description, is_vaccine, vaccine, is_treatment, treatment, symptoms, short_description, danger_level, warning_list, type_disease) VALUES (3, 'maladie 3', 'une description de la maladie 3', true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.disease (id, name_disease, description, is_vaccine, vaccine, is_treatment, treatment, symptoms, short_description, danger_level, warning_list, type_disease) VALUES (5, 'Maladoîdose', 'bonjour je suis une descripption', true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: disease_type; Type: TABLE DATA; Schema: public; Owner: Baptiste
--

INSERT INTO public.disease_type (id, type_name) VALUES (1, 'virus');
INSERT INTO public.disease_type (id, type_name) VALUES (2, 'bacteria');


--
-- Data for Name: type_warning; Type: TABLE DATA; Schema: public; Owner: Baptiste
--



--
-- Data for Name: warning; Type: TABLE DATA; Schema: public; Owner: Baptiste
--



--
-- Name: disease_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Baptiste
--

SELECT pg_catalog.setval('public.disease_id_seq', 5, true);


--
-- Name: disease_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Baptiste
--

SELECT pg_catalog.setval('public.disease_type_id_seq', 2, true);


--
-- Name: type_warning_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Baptiste
--

SELECT pg_catalog.setval('public.type_warning_id_seq', 1, false);


--
-- Name: warning_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Baptiste
--

SELECT pg_catalog.setval('public.warning_id_seq', 1, false);


--
-- Name: disease disease_pk; Type: CONSTRAINT; Schema: public; Owner: Baptiste
--

ALTER TABLE ONLY public.disease
    ADD CONSTRAINT disease_pk PRIMARY KEY (id);


--
-- Name: disease_type disease_type_pk; Type: CONSTRAINT; Schema: public; Owner: Baptiste
--

ALTER TABLE ONLY public.disease_type
    ADD CONSTRAINT disease_type_pk PRIMARY KEY (id);


--
-- Name: type_warning type_warning_pk; Type: CONSTRAINT; Schema: public; Owner: Baptiste
--

ALTER TABLE ONLY public.type_warning
    ADD CONSTRAINT type_warning_pk PRIMARY KEY (id);


--
-- Name: warning warning_pk; Type: CONSTRAINT; Schema: public; Owner: Baptiste
--

ALTER TABLE ONLY public.warning
    ADD CONSTRAINT warning_pk PRIMARY KEY (id);


--
-- Name: disease_id_uindex; Type: INDEX; Schema: public; Owner: Baptiste
--

CREATE UNIQUE INDEX disease_id_uindex ON public.disease USING btree (id);


--
-- Name: disease_type_id_uindex; Type: INDEX; Schema: public; Owner: Baptiste
--

CREATE UNIQUE INDEX disease_type_id_uindex ON public.disease_type USING btree (id);


--
-- Name: warning_id_uindex; Type: INDEX; Schema: public; Owner: Baptiste
--

CREATE UNIQUE INDEX warning_id_uindex ON public.warning USING btree (id);


--
-- PostgreSQL database dump complete
--

