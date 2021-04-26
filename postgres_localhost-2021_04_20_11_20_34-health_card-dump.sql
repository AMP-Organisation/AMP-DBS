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
-- Name: health_card; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.health_card (
    id integer NOT NULL,
    allergy integer[],
    blood_group character varying(10),
    disease integer[],
    user_id integer NOT NULL
);


ALTER TABLE public.health_card OWNER TO postgres;

--
-- Name: health_card_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.health_card_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.health_card_id_seq OWNER TO postgres;

--
-- Name: health_card_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.health_card_id_seq OWNED BY public.health_card.id;


--
-- Name: health_card_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.health_card_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.health_card_user_id_seq OWNER TO postgres;

--
-- Name: health_card_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.health_card_user_id_seq OWNED BY public.health_card.user_id;


--
-- Name: health_card id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.health_card ALTER COLUMN id SET DEFAULT nextval('public.health_card_id_seq'::regclass);


--
-- Name: health_card user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.health_card ALTER COLUMN user_id SET DEFAULT nextval('public.health_card_user_id_seq'::regclass);


--
-- Data for Name: health_card; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.health_card (id, allergy, blood_group, disease, user_id) VALUES (6, '{2}', 'B+', NULL, 1);


--
-- Name: health_card_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.health_card_id_seq', 6, true);


--
-- Name: health_card_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.health_card_user_id_seq', 1, false);


--
-- Name: health_card health_card_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.health_card
    ADD CONSTRAINT health_card_pk PRIMARY KEY (id);


--
-- Name: health_card_id_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX health_card_id_uindex ON public.health_card USING btree (id);


--
-- Name: health_card health_card_user__fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.health_card
    ADD CONSTRAINT health_card_user__fk FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

