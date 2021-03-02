--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

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
-- Name: medicine; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.medicine (
    id integer NOT NULL,
    list_type integer[] NOT NULL,
    dose integer NOT NULL,
    dose_max integer NOT NULL,
    delay integer NOT NULL,
    list_symptoms integer[],
    active_principle integer[],
    list_excipients integer[],
    name character varying(50) NOT NULL
);


ALTER TABLE public.medicine OWNER TO postgres;

--
-- Name: COLUMN medicine.list_type; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.medicine.list_type IS 'Liste des id des types';


--
-- Name: COLUMN medicine.dose; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.medicine.dose IS 'La dose de principe actif d''un "comprime"';


--
-- Name: COLUMN medicine.dose_max; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.medicine.dose_max IS 'Dose max de prise de plusieurs "comprime" ';


--
-- Name: COLUMN medicine.delay; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.medicine.delay IS 'Nombre d''heures entre chaque "comprime"';


--
-- Name: medicine_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.medicine_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.medicine_id_seq OWNER TO postgres;

--
-- Name: medicine_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.medicine_id_seq OWNED BY public.medicine.id;


--
-- Name: medicine id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicine ALTER COLUMN id SET DEFAULT nextval('public.medicine_id_seq'::regclass);


--
-- Data for Name: medicine; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.medicine (id, list_type, dose, dose_max, delay, list_symptoms, active_principle, list_excipients, name) VALUES (1, '{1,2,3}', 1000, 4000, 2, '{1,4}', '{1}', NULL, 'doliprane');
INSERT INTO public.medicine (id, list_type, dose, dose_max, delay, list_symptoms, active_principle, list_excipients, name) VALUES (2, '{1}', 80, 1000, 1, '{2}', '{2}', '{5}', 'spasfon');


--
-- Name: medicine_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.medicine_id_seq', 2, true);


--
-- Name: medicine medicine_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicine
    ADD CONSTRAINT medicine_pk PRIMARY KEY (id);


--
-- Name: medicine_id_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX medicine_id_uindex ON public.medicine USING btree (id);


--
-- PostgreSQL database dump complete
--

