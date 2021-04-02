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
-- Name: disease_type id; Type: DEFAULT; Schema: public; Owner: Baptiste
--

ALTER TABLE ONLY public.disease_type ALTER COLUMN id SET DEFAULT nextval('public.disease_type_id_seq'::regclass);


--
-- Data for Name: disease_type; Type: TABLE DATA; Schema: public; Owner: Baptiste
--

INSERT INTO public.disease_type (id, type_name) VALUES (1, 'virus');
INSERT INTO public.disease_type (id, type_name) VALUES (2, 'bacteria');


--
-- Name: disease_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Baptiste
--

SELECT pg_catalog.setval('public.disease_type_id_seq', 2, true);


--
-- Name: disease_type disease_type_pk; Type: CONSTRAINT; Schema: public; Owner: Baptiste
--

ALTER TABLE ONLY public.disease_type
    ADD CONSTRAINT disease_type_pk PRIMARY KEY (id);


--
-- Name: disease_type_id_uindex; Type: INDEX; Schema: public; Owner: Baptiste
--

CREATE UNIQUE INDEX disease_type_id_uindex ON public.disease_type USING btree (id);


--
-- PostgreSQL database dump complete
--

