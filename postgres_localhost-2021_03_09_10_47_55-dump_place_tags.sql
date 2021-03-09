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
-- Name: place_tags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.place_tags (
    id integer NOT NULL,
    tags character varying(50) NOT NULL
);


ALTER TABLE public.place_tags OWNER TO postgres;

--
-- Name: place_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.place_tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.place_tags_id_seq OWNER TO postgres;

--
-- Name: place_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.place_tags_id_seq OWNED BY public.place_tags.id;


--
-- Name: place_tags id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.place_tags ALTER COLUMN id SET DEFAULT nextval('public.place_tags_id_seq'::regclass);


--
-- Data for Name: place_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.place_tags (id, tags) VALUES (1, 'médecine générale');
INSERT INTO public.place_tags (id, tags) VALUES (2, 'immunologie');
INSERT INTO public.place_tags (id, tags) VALUES (3, 'radiologie');
INSERT INTO public.place_tags (id, tags) VALUES (4, 'chirurgie');
INSERT INTO public.place_tags (id, tags) VALUES (5, 'neurologie');
INSERT INTO public.place_tags (id, tags) VALUES (6, 'pneumologie');
INSERT INTO public.place_tags (id, tags) VALUES (7, 'cardiologie');
INSERT INTO public.place_tags (id, tags) VALUES (8, 'odontologie');
INSERT INTO public.place_tags (id, tags) VALUES (9, 'dermatologie');
INSERT INTO public.place_tags (id, tags) VALUES (10, 'SDTU');
INSERT INTO public.place_tags (id, tags) VALUES (11, 'traumatologie');
INSERT INTO public.place_tags (id, tags) VALUES (12, 'médecine interne');
INSERT INTO public.place_tags (id, tags) VALUES (13, 'endocrinologie');
INSERT INTO public.place_tags (id, tags) VALUES (14, 'anatomo-pathologie');
INSERT INTO public.place_tags (id, tags) VALUES (15, 'hématologie');
INSERT INTO public.place_tags (id, tags) VALUES (16, 'gastro-entérologie');
INSERT INTO public.place_tags (id, tags) VALUES (17, 'urologie');
INSERT INTO public.place_tags (id, tags) VALUES (18, 'pharmacie');
INSERT INTO public.place_tags (id, tags) VALUES (19, 'maternité');
INSERT INTO public.place_tags (id, tags) VALUES (20, 'pédiatrie');
INSERT INTO public.place_tags (id, tags) VALUES (21, 'SGB');
INSERT INTO public.place_tags (id, tags) VALUES (22, 'service d''urgence');
INSERT INTO public.place_tags (id, tags) VALUES (23, 'dépistage covid');
INSERT INTO public.place_tags (id, tags) VALUES (24, 'dépistage sida');


--
-- Name: place_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.place_tags_id_seq', 24, true);


--
-- Name: place_tags place_tags_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.place_tags
    ADD CONSTRAINT place_tags_pk PRIMARY KEY (id);


--
-- Name: place_tags_id_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX place_tags_id_uindex ON public.place_tags USING btree (id);


--
-- Name: place_tags_tags_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX place_tags_tags_uindex ON public.place_tags USING btree (tags);


--
-- PostgreSQL database dump complete
--

