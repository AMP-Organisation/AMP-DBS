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
    type_disease integer[],
    scientific_name character varying(128)
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
-- Name: disease id; Type: DEFAULT; Schema: public; Owner: Baptiste
--

ALTER TABLE ONLY public.disease ALTER COLUMN id SET DEFAULT nextval('public.disease_id_seq'::regclass);


--
-- Data for Name: disease; Type: TABLE DATA; Schema: public; Owner: Baptiste
--

INSERT INTO public.disease (id, name_disease, description, is_vaccine, vaccine, is_treatment, treatment, symptoms, short_description, danger_level, warning_list, type_disease, scientific_name) VALUES (5, 'Maladoîdose', 'bonjour je suis une descripption', true, NULL, true, NULL, NULL, NULL, 8, NULL, '{1}', NULL);
INSERT INTO public.disease (id, name_disease, description, is_vaccine, vaccine, is_treatment, treatment, symptoms, short_description, danger_level, warning_list, type_disease, scientific_name) VALUES (11, 'tuberculose', 'La maladie la plus ancienne que connaisse l''humanité', false, NULL, true, NULL, NULL, NULL, 9, NULL, '{2}', NULL);
INSERT INTO public.disease (id, name_disease, description, is_vaccine, vaccine, is_treatment, treatment, symptoms, short_description, danger_level, warning_list, type_disease, scientific_name) VALUES (12, 'Sida', 'Quand se declare le VIH ', false, NULL, true, NULL, NULL, NULL, 10, NULL, '{1}', NULL);
INSERT INTO public.disease (id, name_disease, description, is_vaccine, vaccine, is_treatment, treatment, symptoms, short_description, danger_level, warning_list, type_disease, scientific_name) VALUES (15, 'Grippe', 'Une maladie qui revient chaque année', true, NULL, true, NULL, NULL, NULL, 8, NULL, '{1}', NULL);
INSERT INTO public.disease (id, name_disease, description, is_vaccine, vaccine, is_treatment, treatment, symptoms, short_description, danger_level, warning_list, type_disease, scientific_name) VALUES (19, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, ligula suspendisse nulla pretium, rhoncus tempor fermentum, enim integer ad vestibulum volutpat. Nisl rhoncus turpis est, vel elit, congue wisi enim nunc ultricies sit, magna tincidunt. Maecenas aliquam maecenas ligula nostra, accumsan taciti. Sociis mauris in integer, a dolor netus non dui aliquet, sagittis felis sodales, dolor sociis mauris, vel eu libero cras. Faucibus at. Arcu habitasse elementum est, ipsum purus pede porttitor class, ut adipiscing, aliquet sed auctor, imperdiet arcu per diam dapibus libero duis. Enim eros in vel, volutpat nec pellentesque leo, temporibus scelerisque nec.
', false, NULL, false, NULL, NULL, NULL, 5, NULL, '{1,2}', NULL);


--
-- Name: disease_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Baptiste
--

SELECT pg_catalog.setval('public.disease_id_seq', 43, true);


--
-- Name: disease disease_pk; Type: CONSTRAINT; Schema: public; Owner: Baptiste
--

ALTER TABLE ONLY public.disease
    ADD CONSTRAINT disease_pk PRIMARY KEY (id);


--
-- Name: disease_id_uindex; Type: INDEX; Schema: public; Owner: Baptiste
--

CREATE UNIQUE INDEX disease_id_uindex ON public.disease USING btree (id);


--
-- PostgreSQL database dump complete
--

