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
-- Name: place_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.place_type (
    id integer NOT NULL,
    type character varying(50) NOT NULL
);


ALTER TABLE public.place_type OWNER TO postgres;

--
-- Name: place_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.place_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.place_type_id_seq OWNER TO postgres;

--
-- Name: place_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.place_type_id_seq OWNED BY public.place_type.id;


--
-- Name: place_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.place_type ALTER COLUMN id SET DEFAULT nextval('public.place_type_id_seq'::regclass);


--
-- Data for Name: place_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.place_type (id, type) VALUES (1, 'pharmacie');
INSERT INTO public.place_type (id, type) VALUES (2, 'cabinet médical');
INSERT INTO public.place_type (id, type) VALUES (3, 'don du sang');
INSERT INTO public.place_type (id, type) VALUES (4, 'centre de dépistage sida ');
INSERT INTO public.place_type (id, type) VALUES (5, 'centre de dépistage covid');
INSERT INTO public.place_type (id, type) VALUES (6, 'hôpital');


--
-- Name: place_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.place_type_id_seq', 6, true);


--
-- Name: place_type place_type_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.place_type
    ADD CONSTRAINT place_type_pk PRIMARY KEY (id);


--
-- Name: place_type_id_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX place_type_id_uindex ON public.place_type USING btree (id);


--
-- Name: place_type_type_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX place_type_type_uindex ON public.place_type USING btree (type);


--
-- PostgreSQL database dump complete
--

