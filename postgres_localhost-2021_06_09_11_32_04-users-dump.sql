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
-- Name: group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."group" (
    id integer NOT NULL,
    "Type" character varying(50) NOT NULL
);


ALTER TABLE public."group" OWNER TO postgres;

--
-- Name: group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.group_id_seq OWNER TO postgres;

--
-- Name: group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.group_id_seq OWNED BY public."group".id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    last_name character varying(50) NOT NULL,
    first_name character varying(50) NOT NULL,
    email character varying NOT NULL,
    username character varying NOT NULL,
    age integer,
    birth_date timestamp without time zone NOT NULL,
    dt_inscription timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    last_login timestamp without time zone,
    fk_group integer NOT NULL,
    password character varying(100),
    height double precision
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_fk_group_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_fk_group_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_fk_group_seq OWNER TO postgres;

--
-- Name: users_fk_group_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_fk_group_seq OWNED BY public.users.fk_group;


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."group" ALTER COLUMN id SET DEFAULT nextval('public.group_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: users fk_group; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN fk_group SET DEFAULT nextval('public.users_fk_group_seq'::regclass);


--
-- Data for Name: group; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."group" (id, "Type") VALUES (2, 'doctor');
INSERT INTO public."group" (id, "Type") VALUES (1, 'client');
INSERT INTO public."group" (id, "Type") VALUES (3, 'admin');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users (id, last_name, first_name, email, username, age, birth_date, dt_inscription, last_login, fk_group, password, height) VALUES (9, 'sens', 'cloe', 'sens.cloe@gmail.com', 'blondy', 15, '2006-09-21 16:24:08', '2021-03-01 09:24:51.101809', NULL, 1, NULL, NULL);
INSERT INTO public.users (id, last_name, first_name, email, username, age, birth_date, dt_inscription, last_login, fk_group, password, height) VALUES (15, 'Bretrand-Rapello', 'Baptiste', 'baptiste@lacatholille.fr', 'elbaptiste', 25, '1998-03-14 16:24:08', '2021-03-31 13:34:16.939812', NULL, 1, '$pbkdf2-sha256$30000$qnUOYewdo7SW0jqH0Jpzrg$OzhXGnLpQIaET.yxKVKyckmejGnsdughaivVGxnL./w', NULL);
INSERT INTO public.users (id, last_name, first_name, email, username, age, birth_date, dt_inscription, last_login, fk_group, password, height) VALUES (16, 'Test', 'Test', 'tttt', 'test26', 13, '2008-06-03 00:00:00', '2021-06-09 09:33:06.802144', NULL, 1, '$pbkdf2-sha256$30000$tLa2lpISQmiNUWotpRQCoA$7U8fiGv0Sax.yOs8u0xlqvHASdXrPumV2H98x2pHc9Q', NULL);
INSERT INTO public.users (id, last_name, first_name, email, username, age, birth_date, dt_inscription, last_login, fk_group, password, height) VALUES (17, 'polo', 'Paul', 'polo@gmail.c', 'Paulo52', 0, '2021-06-09 00:00:00', '2021-06-09 09:37:54.984705', NULL, 1, '$pbkdf2-sha256$30000$j3EuJWTsHWPsvVeqdc4ZIw$ipc.ocQV1emQBt3cGyn0XAJNjxkzH1Hh1Ab2nDMDoDg', NULL);
INSERT INTO public.users (id, last_name, first_name, email, username, age, birth_date, dt_inscription, last_login, fk_group, password, height) VALUES (18, 'predator', 'alien', 'alien.predator@gmail.com', 'Predator', 30, '1991-05-08 00:00:00', '2021-06-09 09:49:11.950895', NULL, 1, '$pbkdf2-sha256$30000$6V3rfe9d690bI2Ss1VrLeQ$feRBhvRkPUEXu4/3a.Gfy/VHSYYfAh0Ao0XrZnm2Rmw', NULL);
INSERT INTO public.users (id, last_name, first_name, email, username, age, birth_date, dt_inscription, last_login, fk_group, password, height) VALUES (1, 'sens', 'nathan', '2019607838@lacatholille.fr', 'unknow', 22, '1998-03-14 16:24:08', '2021-03-31 11:32:47.817933', NULL, 3, '$pbkdf2-sha256$30000$nfM.R0jp3RtjLKUUopTSmg$rIYzBBxtR7PwR2MI2U4wiQIDVHDOYD0Bxf.XWCR4J0c', 1.85);


--
-- Name: group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.group_id_seq', 6, true);


--
-- Name: users_fk_group_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_fk_group_seq', 2, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 18, true);


--
-- Name: group group_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."group"
    ADD CONSTRAINT group_pk PRIMARY KEY (id);


--
-- Name: group_id_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX group_id_uindex ON public."group" USING btree (id);


--
-- Name: users_id_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX users_id_uindex ON public.users USING btree (id);


--
-- Name: users_password_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX users_password_uindex ON public.users USING btree (password);


--
-- Name: users users_group_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_group_id_fk FOREIGN KEY (fk_group) REFERENCES public."group"(id);


--
-- PostgreSQL database dump complete
--

