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
-- Name: medecine_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.medecine_type (
    id integer NOT NULL,
    type character varying(50) NOT NULL
);


ALTER TABLE public.medecine_type OWNER TO postgres;

--
-- Name: medecine_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.medecine_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.medecine_type_id_seq OWNER TO postgres;

--
-- Name: medecine_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.medecine_type_id_seq OWNED BY public.medecine_type.id;


--
-- Name: medecine_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medecine_type ALTER COLUMN id SET DEFAULT nextval('public.medecine_type_id_seq'::regclass);


--
-- Data for Name: medecine_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.medecine_type (id, type) VALUES (1, 'comprimé');
INSERT INTO public.medecine_type (id, type) VALUES (2, 'gélule');
INSERT INTO public.medecine_type (id, type) VALUES (3, 'suppositoire');
INSERT INTO public.medecine_type (id, type) VALUES (4, 'effervescent');
INSERT INTO public.medecine_type (id, type) VALUES (5, 'granule');
INSERT INTO public.medecine_type (id, type) VALUES (6, 'poudre');
INSERT INTO public.medecine_type (id, type) VALUES (7, 'pommade');
INSERT INTO public.medecine_type (id, type) VALUES (8, 'solution injectable');
INSERT INTO public.medecine_type (id, type) VALUES (9, 'solution buvable');


--
-- Name: medecine_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.medecine_type_id_seq', 9, true);


--
-- Name: medecine_type medecine_type_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medecine_type
    ADD CONSTRAINT medecine_type_pk PRIMARY KEY (id);


--
-- Name: medecine_type_id_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX medecine_type_id_uindex ON public.medecine_type USING btree (id);


--
-- Name: medecine_type_type_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX medecine_type_type_uindex ON public.medecine_type USING btree (type);


--
-- PostgreSQL database dump complete
--

