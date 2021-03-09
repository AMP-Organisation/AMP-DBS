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
-- Name: place; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.place (
    id integer NOT NULL,
    address character varying(50),
    zip_code character varying(15) NOT NULL,
    department character varying(50) NOT NULL,
    region character varying(50) NOT NULL,
    country_code character varying(10),
    type_id integer NOT NULL,
    city character varying(50) NOT NULL,
    tags integer[]
);


ALTER TABLE public.place OWNER TO postgres;

--
-- Name: COLUMN place.address; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.place.address IS 'numero de rue et adresse (96 rue guynemer)';


--
-- Name: place_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.place_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.place_id_seq OWNER TO postgres;

--
-- Name: place_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.place_id_seq OWNED BY public.place.id;


--
-- Name: place_type_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.place_type_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.place_type_id_seq1 OWNER TO postgres;

--
-- Name: place_type_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.place_type_id_seq1 OWNED BY public.place.type_id;


--
-- Name: place id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.place ALTER COLUMN id SET DEFAULT nextval('public.place_id_seq'::regclass);


--
-- Name: place type_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.place ALTER COLUMN type_id SET DEFAULT nextval('public.place_type_id_seq1'::regclass);


--
-- Data for Name: place; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.place (id, address, zip_code, department, region, country_code, type_id, city, tags) VALUES (1, 'Place Alexandre Ribot', '62500', 'Pas-de-Calais', 'Hauts-de-France', 'FR', 1, 'Saint-Omer', NULL);
INSERT INTO public.place (id, address, zip_code, department, region, country_code, type_id, city, tags) VALUES (2, 'Enclos Saint-Denis', '62500', 'Pas-de-Calais', 'Hauts-de-France', 'FR', 2, 'Saint-Omer', NULL);
INSERT INTO public.place (id, address, zip_code, department, region, country_code, type_id, city, tags) VALUES (3, '50 Rue Saint-Bertin', '62500', 'Pas-de-Calais', 'Hauts-de-France', 'FR', 2, 'Saint-Omer', NULL);
INSERT INTO public.place (id, address, zip_code, department, region, country_code, type_id, city, tags) VALUES (4, '18 Boulevard de Strasbourg', '62500', 'Pas-de-Calais', 'Hauts-de-France', 'FR', 5, 'Saint-Omer', NULL);
INSERT INTO public.place (id, address, zip_code, department, region, country_code, type_id, city, tags) VALUES (5, 'Boulevard des Justes', '62100', 'Pas-de-Calais', 'Hauts-de-France', 'FR', 6, 'Calais', '{2,3,4,5,6,7,22,24}');
INSERT INTO public.place (id, address, zip_code, department, region, country_code, type_id, city, tags) VALUES (6, '32 Rue Allent', '62500', 'Pas-de-Calais', 'Hauts-de-France', 'FR', 3, 'Saint-Omer', NULL);
INSERT INTO public.place (id, address, zip_code, department, region, country_code, type_id, city, tags) VALUES (7, '8 Rue de Valmy', '59000', 'Nord', 'Hauts-de-France', 'FR', 4, 'Lille', NULL);


--
-- Name: place_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.place_id_seq', 7, true);


--
-- Name: place_type_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.place_type_id_seq1', 1, false);


--
-- Name: place place_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.place
    ADD CONSTRAINT place_pk PRIMARY KEY (id);


--
-- Name: place_address_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX place_address_uindex ON public.place USING btree (address);


--
-- Name: place_id_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX place_id_uindex ON public.place USING btree (id);


--
-- Name: place type_place_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.place
    ADD CONSTRAINT type_place_fk FOREIGN KEY (type_id) REFERENCES public.place_type(id);


--
-- PostgreSQL database dump complete
--

