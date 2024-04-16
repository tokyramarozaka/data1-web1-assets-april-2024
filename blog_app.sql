--
-- PostgreSQL database dump
-- NOTE : please make sure you are connected to your database before launching this !
--

--
-- Name: post; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE public.post (
    post_id integer NOT NULL,
    title character varying(150) NOT NULL,
    description text,
    user_id integer
);

--
-- Name: user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."user" (
    user_id integer NOT NULL,
    first_name character varying(200),
    last_name character varying(200) NOT NULL,
    user_name character varying(100)
);


--
-- Data for Name: post; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.post (post_id, title, description, user_id) FROM stdin;
1	Manomboka ny SYS2	Mandritran'ny 2 volana dia eto Madagasikara aho, dia hitazona ny UE SYS2	2
2	Hotokanana Ivandry amin'ny 25 Mei	Arakin'ny nolazaina dia ho atao amin'ny 25 Mei izao ilay fitokanana ilay trano vaovao eny Ivandry	3
3	Kely sisa	Efa madiva ho tapitra ilay WEB1 sy ilay DONNEES1. PROG2 sisa dia veloma daholo ianareo, araraoty tsara	1
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."user" (user_id, first_name, last_name, user_name) FROM stdin;
1	Tokimahery	Ramarozaka	Mr. Toky
2	Maurica	Andrianampoizinimaro	Dr. Lou
3	Ryan	Andriamahery	Mr. Ryan
\.


--
-- Name: post post_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_pkey PRIMARY KEY (post_id);


--
-- Name: user user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (user_id);


--
-- Name: user user_user_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_user_name_key UNIQUE (user_name);


--
-- Name: post post_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(user_id);


--
-- PostgreSQL database dump complete
--