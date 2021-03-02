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
-- Name: active_ingredient; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.active_ingredient (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    max_dose_mg integer NOT NULL
);


ALTER TABLE public.active_ingredient OWNER TO postgres;

--
-- Name: COLUMN active_ingredient.max_dose_mg; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.active_ingredient.max_dose_mg IS 'Dose maximal en mg';


--
-- Name: active_ingredient_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.active_ingredient_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_ingredient_id_seq OWNER TO postgres;

--
-- Name: active_ingredient_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.active_ingredient_id_seq OWNED BY public.active_ingredient.id;


--
-- Name: active_ingredient id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_ingredient ALTER COLUMN id SET DEFAULT nextval('public.active_ingredient_id_seq'::regclass);


--
-- Data for Name: active_ingredient; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.active_ingredient (id, name, max_dose_mg) VALUES (1, 'paracétamol', 4000);
INSERT INTO public.active_ingredient (id, name, max_dose_mg) VALUES (2, 'phloroglucinol', 480);
INSERT INTO public.active_ingredient (id, name, max_dose_mg) VALUES (3, 'potassium', 4700);
INSERT INTO public.active_ingredient (id, name, max_dose_mg) VALUES (4, 'lactose', -1);
INSERT INTO public.active_ingredient (id, name, max_dose_mg) VALUES (5, 'saccharose', -1);


--
-- Name: active_ingredient_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.active_ingredient_id_seq', 5, true);


--
-- Name: active_ingredient active_ingredient_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_ingredient
    ADD CONSTRAINT active_ingredient_pk PRIMARY KEY (id);


--
-- Name: active_ingredient_id_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX active_ingredient_id_uindex ON public.active_ingredient USING btree (id);


--
-- Name: active_ingredient_name_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX active_ingredient_name_uindex ON public.active_ingredient USING btree (name);


--
-- PostgreSQL database dump complete
--

