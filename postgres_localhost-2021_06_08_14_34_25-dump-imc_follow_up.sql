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
-- Name: imc_follow_up; Type: TABLE; Schema: public; Owner: Baptiste
--

CREATE TABLE public.imc_follow_up (
    id integer NOT NULL,
    user_id integer NOT NULL,
    weight integer,
    date timestamp without time zone,
    imc_computed integer,
    year integer,
    month integer,
    day integer
);


ALTER TABLE public.imc_follow_up OWNER TO "Baptiste";

--
-- Name: imc_suivi_id_seq; Type: SEQUENCE; Schema: public; Owner: Baptiste
--

CREATE SEQUENCE public.imc_suivi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.imc_suivi_id_seq OWNER TO "Baptiste";

--
-- Name: imc_suivi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Baptiste
--

ALTER SEQUENCE public.imc_suivi_id_seq OWNED BY public.imc_follow_up.id;


--
-- Name: imc_suivi_user_id_seq; Type: SEQUENCE; Schema: public; Owner: Baptiste
--

CREATE SEQUENCE public.imc_suivi_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.imc_suivi_user_id_seq OWNER TO "Baptiste";

--
-- Name: imc_suivi_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Baptiste
--

ALTER SEQUENCE public.imc_suivi_user_id_seq OWNED BY public.imc_follow_up.user_id;


--
-- Name: imc_follow_up id; Type: DEFAULT; Schema: public; Owner: Baptiste
--

ALTER TABLE ONLY public.imc_follow_up ALTER COLUMN id SET DEFAULT nextval('public.imc_suivi_id_seq'::regclass);


--
-- Name: imc_follow_up user_id; Type: DEFAULT; Schema: public; Owner: Baptiste
--

ALTER TABLE ONLY public.imc_follow_up ALTER COLUMN user_id SET DEFAULT nextval('public.imc_suivi_user_id_seq'::regclass);


--
-- Data for Name: imc_follow_up; Type: TABLE DATA; Schema: public; Owner: Baptiste
--

INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (53, 15, 75, '2021-06-04 00:00:00', 23, NULL, NULL, NULL);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (54, 15, 78, '2021-06-03 00:00:00', 24, NULL, NULL, NULL);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (55, 15, 78, '2021-06-02 00:00:00', 24, NULL, NULL, NULL);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (33, 15, 55, '2021-05-26 16:25:44.761', 16, 2021, 5, 26);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (32, 15, 75, '2021-05-25 00:00:00', 23, 2021, 5, 25);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (35, 15, 75, '2021-05-31 14:00:00', 23, 2021, 5, 31);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (46, 15, 75, '2021-04-27 20:25:43.511', 23, NULL, NULL, NULL);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (41, 15, 75, '2021-04-27 20:25:43.511', 23, 2021, 4, NULL);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (21, 15, 74, '2021-05-21 00:00:00', 22, 2021, 5, 21);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (20, 15, 74, '2021-05-22 00:00:00', 22, 2021, 5, 22);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (23, 15, 74, '2021-05-19 00:00:00', 22, 2021, 5, 19);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (22, 15, 74, '2021-05-20 00:00:00', 22, 2021, 5, 20);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (17, 15, 74, '2021-05-16 00:00:00', 22, 2021, 5, NULL);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (16, 15, 74, '2021-05-15 00:00:00', 22, 2021, 5, NULL);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (19, 15, 74, '2021-05-23 00:00:00', 22, 2021, 5, 23);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (18, 15, 74, '2021-05-17 00:00:00', 22, 2021, 5, 17);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (29, 15, 74, '2021-05-26 00:00:00', 22, 2021, 5, 26);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (28, 15, 75, '2021-05-25 00:00:00', 22, 2021, 5, 25);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (48, 15, 880, '2021-04-27 19:25:43.511', 23, NULL, NULL, NULL);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (1, 15, 75, '2021-04-23 20:25:43.511', 23, 2021, 4, 23);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (8, 13, 75, '2021-04-23 20:25:43.511', 23, 2021, 4, 23);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (10, 13, 75, '2021-04-23 20:25:43.511', 23, 2021, 4, 23);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (9, 13, 75, '2021-04-23 20:25:43.511', 23, 2021, 4, 23);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (44, 15, 78, '2021-06-06 00:00:00', 24, 2021, 6, 6);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (45, 15, 79, '2021-06-05 00:00:00', 24, 2021, 6, 5);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (42, 15, 81, '2021-06-08 00:00:00', 25, 2021, 6, 8);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (43, 15, 80, '2021-06-07 00:00:00', 24, 2021, 6, 7);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (2, 15, 75, '2021-04-24 20:25:43.511', 23, 2021, 4, NULL);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (47, 15, 81, '2021-04-27 20:25:43.511', 23, 2021, NULL, NULL);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (31, 15, 74, '2021-05-25 00:00:00', 23, 2021, 5, 25);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (30, 15, 75, '2021-05-25 00:00:00', 23, 2021, 5, 25);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (25, 15, 74, '2021-05-24 00:00:00', 22, 2021, 5, 24);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (24, 15, 74, '2021-05-18 00:00:00', 22, 2021, 5, 18);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (27, 15, 74, '2021-05-24 00:00:00', 22, 2021, 5, 24);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (26, 15, 74, '2021-05-25 00:00:00', 22, 2021, 5, 25);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (5, 15, 75, '2021-04-27 20:25:43.511', 23, 2021, 4, NULL);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (4, 15, 75, '2021-04-26 20:25:43.511', 23, 2021, 4, NULL);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (7, 15, 75, '2021-04-23 20:25:43.511', 23, 2021, 4, 23);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (6, 15, 75, '2021-04-23 20:25:43.511', 23, 2021, 4, 23);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (3, 15, 75, '2021-04-25 20:25:43.511', 23, 2021, 4, NULL);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (13, 15, 74, '2021-05-12 00:00:00', 22, 2021, 5, NULL);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (12, 15, 54, '2021-04-27 00:00:00', 16, 2021, 4, NULL);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (15, 15, 74, '2021-05-14 00:00:00', 22, 2021, 5, NULL);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (14, 15, 74, '2021-05-13 00:00:00', 22, 2021, 5, NULL);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (11, 15, 66, '2021-05-10 11:55:00', 20, 2021, 5, NULL);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (37, 15, 76, '2021-06-01 00:00:00', 24, 2021, 6, 1);
INSERT INTO public.imc_follow_up (id, user_id, weight, date, imc_computed, year, month, day) VALUES (36, 15, 76, '2021-05-25 00:00:00', 24, 2021, 5, 25);


--
-- Name: imc_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Baptiste
--

SELECT pg_catalog.setval('public.imc_suivi_id_seq', 55, true);


--
-- Name: imc_suivi_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Baptiste
--

SELECT pg_catalog.setval('public.imc_suivi_user_id_seq', 1, false);


--
-- Name: imc_follow_up imc_suivi_pk; Type: CONSTRAINT; Schema: public; Owner: Baptiste
--

ALTER TABLE ONLY public.imc_follow_up
    ADD CONSTRAINT imc_suivi_pk PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

