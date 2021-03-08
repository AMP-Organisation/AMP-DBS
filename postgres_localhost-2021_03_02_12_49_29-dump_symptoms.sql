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
-- Name: symptoms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.symptoms (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    danger integer
);


ALTER TABLE public.symptoms OWNER TO postgres;

--
-- Name: symptoms_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.symptoms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.symptoms_id_seq OWNER TO postgres;

--
-- Name: symptoms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.symptoms_id_seq OWNED BY public.symptoms.id;


--
-- Name: symptoms id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.symptoms ALTER COLUMN id SET DEFAULT nextval('public.symptoms_id_seq'::regclass);


--
-- Data for Name: symptoms; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.symptoms (id, name, danger) VALUES (1, 'maux de tête', NULL);
INSERT INTO public.symptoms (id, name, danger) VALUES (2, 'maux de ventre', NULL);
INSERT INTO public.symptoms (id, name, danger) VALUES (3, 'courbature', NULL);
INSERT INTO public.symptoms (id, name, danger) VALUES (4, 'fièvre', NULL);
INSERT INTO public.symptoms (id, name, danger) VALUES (5, 'colique', NULL);


--
-- Name: symptoms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.symptoms_id_seq', 5, true);


--
-- Name: symptoms symptoms_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.symptoms
    ADD CONSTRAINT symptoms_pk PRIMARY KEY (id);


--
-- Name: symptoms_id_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX symptoms_id_uindex ON public.symptoms USING btree (id);


--
-- Name: symptoms_name_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX symptoms_name_uindex ON public.symptoms USING btree (name);


--
-- PostgreSQL database dump complete
--

