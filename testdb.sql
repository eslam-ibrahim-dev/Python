--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

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

--
-- Name: company_name; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA company_name;


ALTER SCHEMA company_name OWNER TO postgres;

--
-- Name: id; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA id;


ALTER SCHEMA id OWNER TO postgres;

--
-- Name: job_skill; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA job_skill;


ALTER SCHEMA job_skill OWNER TO postgres;

--
-- Name: job_title; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA job_title;


ALTER SCHEMA job_title OWNER TO postgres;

--
-- Name: location; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA location;


ALTER SCHEMA location OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jobs (
    id integer NOT NULL,
    job_title text,
    skills text,
    location text,
    company text
);


ALTER TABLE public.jobs OWNER TO postgres;

--
-- Name: jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jobs_id_seq OWNER TO postgres;

--
-- Name: jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;


--
-- Name: jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);


--
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jobs (id, job_title, skills, location, company) FROM stdin;
2	Senior Software Engineer (Python)	Full TimeWork From HomeExperienced · 6 - 12 Yrs of Exp · IT/Software Development · Engineering - Telecom/Technology · Computer Science · engineer · Information Technology (IT) · Software Development · Software Engineering · Software engineer · Software · Python	Riyadh, Saudi Arabia 	Tam Development LLC -
3	Software Engineer (Python)	Full TimeWork From HomeExperienced · 2 - 10 Yrs of Exp · IT/Software Development · Engineering - Telecom/Technology · Computer Science · engineer · Information Technology (IT) · Software Development · Software Engineering · Software engineer · Software · Python	Riyadh, Saudi Arabia 	Tam Development LLC -
4	Embedded Software Integration Engineer	Full TimeExperienced · 7 - 10 Yrs of Exp · IT/Software Development · Quality · Engineering - Telecom/Technology · C · Computer Science · Configuration · Development · Engineering · Information Technology (IT) · Integration	Maadi, Cairo, Egypt 	Sceel.io -
5	Senior Software Engineer	Full TimeWork From HomeExperienced · 3 - 7 Yrs of Exp · R&D/Science · IT/Software Development · Engineering - Telecom/Technology · backend · front-end · Software Engineering · NodeJS	Cairo, Egypt 	Bill My Plate -
6	Software Pre Sales Engineer	Full TimeExperienced · 2 - 4 Yrs of Exp · IT/Software Development · Communication · Engineering · English · Software · Software Development · Software Engineering	Cairo, Egypt 	United Delta Systems -
7	Senior Software Quality Control Engineer	Full TimeExperienced · 2 - 5 Yrs of Exp · IT/Software Development · Quality · Engineering - Telecom/Technology · Software · Software Engineering · Testing · Computer Science · Design · Engineering · Information Technology (IT)	Maadi, Cairo, Egypt 	Safa Soft -
8	Senior Software Engineer	Full TimeExperienced · 5 - 7 Yrs of Exp · IT/Software Development · Computer Science · JavaScript · React · Software · Software Development · Software Engineering	New Cairo, Cairo, Egypt 	Rawasi Holding for Investment -
9	Freelance Software Engineer	Part TimeFreelance / ProjectExperienced · IT/Software Development · Engineering - Telecom/Technology · backend · Cloud · Communication · Communication skills · Computer Science · English · Information Technology (IT) · React	Cairo, Egypt 	Axe Throw -
10	Software Engineer (Development and Support)	Full TimeNot specified · IT/Software Development · Quality · Engineering - Telecom/Technology · Information Technology (IT) · Computer Science · Software Development · Software Engineering · Engineering · Computer Engineering · Software	Dubai, United Arab Emirates 	GAC -
11	Senior Software Engineer	Full TimeNot specified · IT/Software Development · Quality · Engineering - Telecom/Technology · Information Technology (IT) · Computer Science · Engineering · Software Development · Software Engineering · Computer Engineering · Quality Control	Dubai, United Arab Emirates 	GAC -
12	Software Engineer	Full TimeNot specified · IT/Software Development · Quality · Engineering - Telecom/Technology · Information Technology (IT) · Computer Science · Software Development · Software Engineering · Engineering · Computer Engineering · Software	Doha, Qatar 	Premium Solutions Consultancy -
13	Senior Software Quality Control Engineer (Nasr City)	Full TimeExperienced · 3+ Yrs of Exp · IT/Software Development · Quality · Engineering - Telecom/Technology · Engineering · Project Management · Information Systems · Information Technology (IT) · Computer Science · Computer Engineering · Software	Nasr City, Cairo, Egypt 	Confidential -
14	Software Engineer 2	Full TimeNot specified · IT/Software Development · Quality · Engineering - Telecom/Technology · Computer Science · Information Technology (IT) · Software Development · Software Engineering · Engineering · Computer Engineering · Software	Cairo, Egypt 	Neworleansbio -
15	Embedded Software Engineer	Full TimeNot specified · IT/Software Development · Quality · Engineering - Telecom/Technology · Information Technology (IT) · Computer Science · Software Engineering · Software Development · Engineering · Software Testing · Software	Cairo, Egypt 	Si-Ware System -
16	Software Engineer	Full TimeExperienced · 2 - 4 Yrs of Exp · IT/Software Development · Computer Science · Information Technology (IT) · Software Engineering	Giza, Giza, Egypt 	Confidential -
17	Senior Software Engineer (Python)	Full TimeWork From HomeExperienced · 6 - 12 Yrs of Exp · IT/Software Development · Engineering - Telecom/Technology · Computer Science · engineer · Information Technology (IT) · Software Development · Software Engineering · Software engineer · Software · Python	Riyadh, Saudi Arabia 	Tam Development LLC -
18	Software Engineer (Python)	Full TimeWork From HomeExperienced · 2 - 10 Yrs of Exp · IT/Software Development · Engineering - Telecom/Technology · Computer Science · engineer · Information Technology (IT) · Software Development · Software Engineering · Software engineer · Software · Python	Riyadh, Saudi Arabia 	Tam Development LLC -
19	Embedded Software Integration Engineer	Full TimeExperienced · 7 - 10 Yrs of Exp · IT/Software Development · Quality · Engineering - Telecom/Technology · C · Computer Science · Configuration · Development · Engineering · Information Technology (IT) · Integration	Maadi, Cairo, Egypt 	Sceel.io -
20	Senior Software Engineer	Full TimeWork From HomeExperienced · 3 - 7 Yrs of Exp · R&D/Science · IT/Software Development · Engineering - Telecom/Technology · backend · front-end · Software Engineering · NodeJS	Cairo, Egypt 	Bill My Plate -
21	Software Pre Sales Engineer	Full TimeExperienced · 2 - 4 Yrs of Exp · IT/Software Development · Communication · Engineering · English · Software · Software Development · Software Engineering	Cairo, Egypt 	United Delta Systems -
22	Senior Software Quality Control Engineer	Full TimeExperienced · 2 - 5 Yrs of Exp · IT/Software Development · Quality · Engineering - Telecom/Technology · Software · Software Engineering · Testing · Computer Science · Design · Engineering · Information Technology (IT)	Maadi, Cairo, Egypt 	Safa Soft -
23	Senior Software Engineer	Full TimeExperienced · 5 - 7 Yrs of Exp · IT/Software Development · Computer Science · JavaScript · React · Software · Software Development · Software Engineering	New Cairo, Cairo, Egypt 	Rawasi Holding for Investment -
24	Freelance Software Engineer	Part TimeFreelance / ProjectExperienced · IT/Software Development · Engineering - Telecom/Technology · backend · Cloud · Communication · Communication skills · Computer Science · English · Information Technology (IT) · React	Cairo, Egypt 	Axe Throw -
25	Software Engineer (Development and Support)	Full TimeNot specified · IT/Software Development · Quality · Engineering - Telecom/Technology · Information Technology (IT) · Computer Science · Software Development · Software Engineering · Engineering · Computer Engineering · Software	Dubai, United Arab Emirates 	GAC -
26	Senior Software Engineer	Full TimeNot specified · IT/Software Development · Quality · Engineering - Telecom/Technology · Information Technology (IT) · Computer Science · Engineering · Software Development · Software Engineering · Computer Engineering · Quality Control	Dubai, United Arab Emirates 	GAC -
27	Software Engineer	Full TimeNot specified · IT/Software Development · Quality · Engineering - Telecom/Technology · Information Technology (IT) · Computer Science · Software Development · Software Engineering · Engineering · Computer Engineering · Software	Doha, Qatar 	Premium Solutions Consultancy -
28	Senior Software Quality Control Engineer (Nasr City)	Full TimeExperienced · 3+ Yrs of Exp · IT/Software Development · Quality · Engineering - Telecom/Technology · Engineering · Project Management · Information Systems · Information Technology (IT) · Computer Science · Computer Engineering · Software	Nasr City, Cairo, Egypt 	Confidential -
29	Software Engineer 2	Full TimeNot specified · IT/Software Development · Quality · Engineering - Telecom/Technology · Computer Science · Information Technology (IT) · Software Development · Software Engineering · Engineering · Computer Engineering · Software	Cairo, Egypt 	Neworleansbio -
30	Embedded Software Engineer	Full TimeNot specified · IT/Software Development · Quality · Engineering - Telecom/Technology · Information Technology (IT) · Computer Science · Software Engineering · Software Development · Engineering · Software Testing · Software	Cairo, Egypt 	Si-Ware System -
31	Software Engineer	Full TimeExperienced · 2 - 4 Yrs of Exp · IT/Software Development · Computer Science · Information Technology (IT) · Software Engineering	Giza, Giza, Egypt 	Confidential -
32	Senior Software Engineer (Python)	Full TimeWork From HomeExperienced · 6 - 12 Yrs of Exp · IT/Software Development · Engineering - Telecom/Technology · Computer Science · engineer · Information Technology (IT) · Software Development · Software Engineering · Software engineer · Software · Python	Riyadh, Saudi Arabia 	Tam Development LLC -
33	Software Engineer (Python)	Full TimeWork From HomeExperienced · 2 - 10 Yrs of Exp · IT/Software Development · Engineering - Telecom/Technology · Computer Science · engineer · Information Technology (IT) · Software Development · Software Engineering · Software engineer · Software · Python	Riyadh, Saudi Arabia 	Tam Development LLC -
34	Embedded Software Integration Engineer	Full TimeExperienced · 7 - 10 Yrs of Exp · IT/Software Development · Quality · Engineering - Telecom/Technology · C · Computer Science · Configuration · Development · Engineering · Information Technology (IT) · Integration	Maadi, Cairo, Egypt 	Sceel.io -
35	Senior Software Engineer	Full TimeWork From HomeExperienced · 3 - 7 Yrs of Exp · R&D/Science · IT/Software Development · Engineering - Telecom/Technology · backend · front-end · Software Engineering · NodeJS	Cairo, Egypt 	Bill My Plate -
36	Software Pre Sales Engineer	Full TimeExperienced · 2 - 4 Yrs of Exp · IT/Software Development · Communication · Engineering · English · Software · Software Development · Software Engineering	Cairo, Egypt 	United Delta Systems -
37	Senior Software Quality Control Engineer	Full TimeExperienced · 2 - 5 Yrs of Exp · IT/Software Development · Quality · Engineering - Telecom/Technology · Software · Software Engineering · Testing · Computer Science · Design · Engineering · Information Technology (IT)	Maadi, Cairo, Egypt 	Safa Soft -
38	Senior Software Engineer	Full TimeExperienced · 5 - 7 Yrs of Exp · IT/Software Development · Computer Science · JavaScript · React · Software · Software Development · Software Engineering	New Cairo, Cairo, Egypt 	Rawasi Holding for Investment -
39	Freelance Software Engineer	Part TimeFreelance / ProjectExperienced · IT/Software Development · Engineering - Telecom/Technology · backend · Cloud · Communication · Communication skills · Computer Science · English · Information Technology (IT) · React	Cairo, Egypt 	Axe Throw -
40	Software Engineer (Development and Support)	Full TimeNot specified · IT/Software Development · Quality · Engineering - Telecom/Technology · Information Technology (IT) · Computer Science · Software Development · Software Engineering · Engineering · Computer Engineering · Software	Dubai, United Arab Emirates 	GAC -
41	Senior Software Engineer	Full TimeNot specified · IT/Software Development · Quality · Engineering - Telecom/Technology · Information Technology (IT) · Computer Science · Engineering · Software Development · Software Engineering · Computer Engineering · Quality Control	Dubai, United Arab Emirates 	GAC -
42	Software Engineer	Full TimeNot specified · IT/Software Development · Quality · Engineering - Telecom/Technology · Information Technology (IT) · Computer Science · Software Development · Software Engineering · Engineering · Computer Engineering · Software	Doha, Qatar 	Premium Solutions Consultancy -
43	Senior Software Quality Control Engineer (Nasr City)	Full TimeExperienced · 3+ Yrs of Exp · IT/Software Development · Quality · Engineering - Telecom/Technology · Engineering · Project Management · Information Systems · Information Technology (IT) · Computer Science · Computer Engineering · Software	Nasr City, Cairo, Egypt 	Confidential -
44	Software Engineer 2	Full TimeNot specified · IT/Software Development · Quality · Engineering - Telecom/Technology · Computer Science · Information Technology (IT) · Software Development · Software Engineering · Engineering · Computer Engineering · Software	Cairo, Egypt 	Neworleansbio -
45	Embedded Software Engineer	Full TimeNot specified · IT/Software Development · Quality · Engineering - Telecom/Technology · Information Technology (IT) · Computer Science · Software Engineering · Software Development · Engineering · Software Testing · Software	Cairo, Egypt 	Si-Ware System -
46	Software Engineer	Full TimeExperienced · 2 - 4 Yrs of Exp · IT/Software Development · Computer Science · Information Technology (IT) · Software Engineering	Giza, Giza, Egypt 	Confidential -
47	Senior Software Engineer (Python)	Full TimeWork From HomeExperienced · 6 - 12 Yrs of Exp · IT/Software Development · Engineering - Telecom/Technology · Computer Science · engineer · Information Technology (IT) · Software Development · Software Engineering · Software engineer · Software · Python	Riyadh, Saudi Arabia 	Tam Development LLC -
48	Software Engineer (Python)	Full TimeWork From HomeExperienced · 2 - 10 Yrs of Exp · IT/Software Development · Engineering - Telecom/Technology · Computer Science · engineer · Information Technology (IT) · Software Development · Software Engineering · Software engineer · Software · Python	Riyadh, Saudi Arabia 	Tam Development LLC -
49	Embedded Software Integration Engineer	Full TimeExperienced · 7 - 10 Yrs of Exp · IT/Software Development · Quality · Engineering - Telecom/Technology · C · Computer Science · Configuration · Development · Engineering · Information Technology (IT) · Integration	Maadi, Cairo, Egypt 	Sceel.io -
50	Senior Software Engineer	Full TimeWork From HomeExperienced · 3 - 7 Yrs of Exp · R&D/Science · IT/Software Development · Engineering - Telecom/Technology · backend · front-end · Software Engineering · NodeJS	Cairo, Egypt 	Bill My Plate -
51	Software Pre Sales Engineer	Full TimeExperienced · 2 - 4 Yrs of Exp · IT/Software Development · Communication · Engineering · English · Software · Software Development · Software Engineering	Cairo, Egypt 	United Delta Systems -
52	Senior Software Quality Control Engineer	Full TimeExperienced · 2 - 5 Yrs of Exp · IT/Software Development · Quality · Engineering - Telecom/Technology · Software · Software Engineering · Testing · Computer Science · Design · Engineering · Information Technology (IT)	Maadi, Cairo, Egypt 	Safa Soft -
53	Senior Software Engineer	Full TimeExperienced · 5 - 7 Yrs of Exp · IT/Software Development · Computer Science · JavaScript · React · Software · Software Development · Software Engineering	New Cairo, Cairo, Egypt 	Rawasi Holding for Investment -
54	Freelance Software Engineer	Part TimeFreelance / ProjectExperienced · IT/Software Development · Engineering - Telecom/Technology · backend · Cloud · Communication · Communication skills · Computer Science · English · Information Technology (IT) · React	Cairo, Egypt 	Axe Throw -
55	Software Engineer (Development and Support)	Full TimeNot specified · IT/Software Development · Quality · Engineering - Telecom/Technology · Information Technology (IT) · Computer Science · Software Development · Software Engineering · Engineering · Computer Engineering · Software	Dubai, United Arab Emirates 	GAC -
56	Senior Software Engineer	Full TimeNot specified · IT/Software Development · Quality · Engineering - Telecom/Technology · Information Technology (IT) · Computer Science · Engineering · Software Development · Software Engineering · Computer Engineering · Quality Control	Dubai, United Arab Emirates 	GAC -
57	Software Engineer	Full TimeNot specified · IT/Software Development · Quality · Engineering - Telecom/Technology · Information Technology (IT) · Computer Science · Software Development · Software Engineering · Engineering · Computer Engineering · Software	Doha, Qatar 	Premium Solutions Consultancy -
58	Senior Software Quality Control Engineer (Nasr City)	Full TimeExperienced · 3+ Yrs of Exp · IT/Software Development · Quality · Engineering - Telecom/Technology · Engineering · Project Management · Information Systems · Information Technology (IT) · Computer Science · Computer Engineering · Software	Nasr City, Cairo, Egypt 	Confidential -
59	Software Engineer 2	Full TimeNot specified · IT/Software Development · Quality · Engineering - Telecom/Technology · Computer Science · Information Technology (IT) · Software Development · Software Engineering · Engineering · Computer Engineering · Software	Cairo, Egypt 	Neworleansbio -
60	Embedded Software Engineer	Full TimeNot specified · IT/Software Development · Quality · Engineering - Telecom/Technology · Information Technology (IT) · Computer Science · Software Engineering · Software Development · Engineering · Software Testing · Software	Cairo, Egypt 	Si-Ware System -
61	Software Engineer	Full TimeExperienced · 2 - 4 Yrs of Exp · IT/Software Development · Computer Science · Information Technology (IT) · Software Engineering	Giza, Giza, Egypt 	Confidential -
62	Senior Software Engineer (Python)	Full TimeWork From HomeExperienced · 6 - 12 Yrs of Exp · IT/Software Development · Engineering - Telecom/Technology · Computer Science · engineer · Information Technology (IT) · Software Development · Software Engineering · Software engineer · Software · Python	Riyadh, Saudi Arabia 	Tam Development LLC -
63	Software Engineer (Python)	Full TimeWork From HomeExperienced · 2 - 10 Yrs of Exp · IT/Software Development · Engineering - Telecom/Technology · Computer Science · engineer · Information Technology (IT) · Software Development · Software Engineering · Software engineer · Software · Python	Riyadh, Saudi Arabia 	Tam Development LLC -
64	Embedded Software Integration Engineer	Full TimeExperienced · 7 - 10 Yrs of Exp · IT/Software Development · Quality · Engineering - Telecom/Technology · C · Computer Science · Configuration · Development · Engineering · Information Technology (IT) · Integration	Maadi, Cairo, Egypt 	Sceel.io -
65	Senior Software Engineer	Full TimeWork From HomeExperienced · 3 - 7 Yrs of Exp · R&D/Science · IT/Software Development · Engineering - Telecom/Technology · backend · front-end · Software Engineering · NodeJS	Cairo, Egypt 	Bill My Plate -
66	Software Pre Sales Engineer	Full TimeExperienced · 2 - 4 Yrs of Exp · IT/Software Development · Communication · Engineering · English · Software · Software Development · Software Engineering	Cairo, Egypt 	United Delta Systems -
67	Senior Software Quality Control Engineer	Full TimeExperienced · 2 - 5 Yrs of Exp · IT/Software Development · Quality · Engineering - Telecom/Technology · Software · Software Engineering · Testing · Computer Science · Design · Engineering · Information Technology (IT)	Maadi, Cairo, Egypt 	Safa Soft -
68	Senior Software Engineer	Full TimeExperienced · 5 - 7 Yrs of Exp · IT/Software Development · Computer Science · JavaScript · React · Software · Software Development · Software Engineering	New Cairo, Cairo, Egypt 	Rawasi Holding for Investment -
69	Freelance Software Engineer	Part TimeFreelance / ProjectExperienced · IT/Software Development · Engineering - Telecom/Technology · backend · Cloud · Communication · Communication skills · Computer Science · English · Information Technology (IT) · React	Cairo, Egypt 	Axe Throw -
70	Software Engineer (Development and Support)	Full TimeNot specified · IT/Software Development · Quality · Engineering - Telecom/Technology · Information Technology (IT) · Computer Science · Software Development · Software Engineering · Engineering · Computer Engineering · Software	Dubai, United Arab Emirates 	GAC -
71	Senior Software Engineer	Full TimeNot specified · IT/Software Development · Quality · Engineering - Telecom/Technology · Information Technology (IT) · Computer Science · Engineering · Software Development · Software Engineering · Computer Engineering · Quality Control	Dubai, United Arab Emirates 	GAC -
72	Software Engineer	Full TimeNot specified · IT/Software Development · Quality · Engineering - Telecom/Technology · Information Technology (IT) · Computer Science · Software Development · Software Engineering · Engineering · Computer Engineering · Software	Doha, Qatar 	Premium Solutions Consultancy -
73	Senior Software Quality Control Engineer (Nasr City)	Full TimeExperienced · 3+ Yrs of Exp · IT/Software Development · Quality · Engineering - Telecom/Technology · Engineering · Project Management · Information Systems · Information Technology (IT) · Computer Science · Computer Engineering · Software	Nasr City, Cairo, Egypt 	Confidential -
74	Software Engineer 2	Full TimeNot specified · IT/Software Development · Quality · Engineering - Telecom/Technology · Computer Science · Information Technology (IT) · Software Development · Software Engineering · Engineering · Computer Engineering · Software	Cairo, Egypt 	Neworleansbio -
75	Embedded Software Engineer	Full TimeNot specified · IT/Software Development · Quality · Engineering - Telecom/Technology · Information Technology (IT) · Computer Science · Software Engineering · Software Development · Engineering · Software Testing · Software	Cairo, Egypt 	Si-Ware System -
76	Software Engineer	Full TimeExperienced · 2 - 4 Yrs of Exp · IT/Software Development · Computer Science · Information Technology (IT) · Software Engineering	Giza, Giza, Egypt 	Confidential -
\.


--
-- Name: jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.jobs_id_seq', 76, true);


--
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

