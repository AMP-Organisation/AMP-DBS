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
-- Name: pillbox; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pillbox (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    beginning_date timestamp without time zone DEFAULT (now())::timestamp without time zone NOT NULL,
    ending_date timestamp without time zone,
    list_treatment integer[],
    user_id integer NOT NULL
);


ALTER TABLE public.pillbox OWNER TO postgres;

--
-- Name: pillbox_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pillbox_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pillbox_id_seq OWNER TO postgres;

--
-- Name: pillbox_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pillbox_id_seq OWNED BY public.pillbox.id;


--
-- Name: pillbox_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pillbox_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pillbox_user_id_seq OWNER TO postgres;

--
-- Name: pillbox_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pillbox_user_id_seq OWNED BY public.pillbox.user_id;


--
-- Name: treatment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.treatment (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    medicine_id integer NOT NULL,
    beginning_date timestamp without time zone DEFAULT (now())::timestamp without time zone NOT NULL,
    ending_date timestamp without time zone
);


ALTER TABLE public.treatment OWNER TO postgres;

--
-- Name: treatment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.treatment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.treatment_id_seq OWNER TO postgres;

--
-- Name: treatment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.treatment_id_seq OWNED BY public.treatment.id;


--
-- Name: treatment_medicine_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.treatment_medicine_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.treatment_medicine_id_seq OWNER TO postgres;

--
-- Name: treatment_medicine_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.treatment_medicine_id_seq OWNED BY public.treatment.medicine_id;


--
-- Name: pillbox id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pillbox ALTER COLUMN id SET DEFAULT nextval('public.pillbox_id_seq'::regclass);


--
-- Name: pillbox user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pillbox ALTER COLUMN user_id SET DEFAULT nextval('public.pillbox_user_id_seq'::regclass);


--
-- Name: treatment id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.treatment ALTER COLUMN id SET DEFAULT nextval('public.treatment_id_seq'::regclass);


--
-- Name: treatment medicine_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.treatment ALTER COLUMN medicine_id SET DEFAULT nextval('public.treatment_medicine_id_seq'::regclass);


--
-- Data for Name: pillbox; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.pillbox (id, name, description, beginning_date, ending_date, list_treatment, user_id) VALUES (1, 'Mon quotidien', 'toujours mes migraines..', '2021-04-07 13:43:51.178', NULL, '{1,2}', 1);
INSERT INTO public.pillbox (id, name, description, beginning_date, ending_date, list_treatment, user_id) VALUES (2, 'Boost travail', 'ça me motive', '2021-04-07 13:46:08.468', NULL, '{1}', 15);


--
-- Data for Name: treatment; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.treatment (id, name, description, medicine_id, beginning_date, ending_date) VALUES (4, 'Maux de ventre', 'quand je fais chinois la veille', 2, '2021-04-07 13:40:54.698', NULL);
INSERT INTO public.treatment (id, name, description, medicine_id, beginning_date, ending_date) VALUES (3, 'Maux de tête', 'quand je réfléchis trop (jamais)', 1, '2021-04-07 13:40:54.698', NULL);


--
-- Name: pillbox_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pillbox_id_seq', 2, true);


--
-- Name: pillbox_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pillbox_user_id_seq', 1, false);


--
-- Name: treatment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.treatment_id_seq', 4, true);


--
-- Name: treatment_medicine_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.treatment_medicine_id_seq', 1, false);


--
-- Name: pillbox pillbox_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pillbox
    ADD CONSTRAINT pillbox_pk PRIMARY KEY (id);


--
-- Name: treatment treatment_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.treatment
    ADD CONSTRAINT treatment_pk PRIMARY KEY (id);


--
-- Name: pillbox_id_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX pillbox_id_uindex ON public.pillbox USING btree (id);


--
-- Name: treatment_id_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX treatment_id_uindex ON public.treatment USING btree (id);


--
-- Name: pillbox pillbox_user__fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pillbox
    ADD CONSTRAINT pillbox_user__fk FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: treatment treatment_medicine__fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.treatment
    ADD CONSTRAINT treatment_medicine__fk FOREIGN KEY (medicine_id) REFERENCES public.medicine(id);


--
-- PostgreSQL database dump complete
--

