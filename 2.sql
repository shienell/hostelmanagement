--
-- PostgreSQL database dump
--

\connect - hms

SET search_path = public, pg_catalog;

--
-- TOC entry 2 (OID 217698)
-- Name: add_users; Type: TABLE; Schema: public; Owner: hms
--

CREATE TABLE add_users (
    userid character varying,
    "password" character varying,
    roles character varying
);


--
-- TOC entry 3 (OID 217703)
-- Name: role_service; Type: TABLE; Schema: public; Owner: hms
--

CREATE TABLE role_service (
    roleid integer NOT NULL,
    serviceid integer NOT NULL
);


--
-- TOC entry 4 (OID 217705)
-- Name: user_roles; Type: TABLE; Schema: public; Owner: hms
--

CREATE TABLE user_roles (
    roles character varying NOT NULL,
    roleid integer NOT NULL
);


--
-- TOC entry 5 (OID 217710)
-- Name: mapmonthitem; Type: TABLE; Schema: public; Owner: hms
--

CREATE TABLE mapmonthitem (
    hostelname character varying NOT NULL,
    "month" character varying NOT NULL,
    "year" integer NOT NULL,
    itemname character varying,
    itemnumber integer NOT NULL
);


--
-- TOC entry 6 (OID 217720)
-- Name: school; Type: TABLE; Schema: public; Owner: hms
--

CREATE TABLE school (
    hostelname character varying NOT NULL,
    schoolname character varying NOT NULL,
    "location" character varying NOT NULL,
    first integer,
    "second" integer,
    third integer,
    fourth integer,
    fifth integer,
    sixth integer,
    seventh integer,
    eighth integer,
    ninth integer,
    tenth integer,
    total integer
);


--
-- TOC entry 7 (OID 217725)
-- Name: month; Type: TABLE; Schema: public; Owner: hms
--

CREATE TABLE "month" (
    monthnumber integer NOT NULL,
    monthname character varying
);


--
-- TOC entry 8 (OID 217730)
-- Name: hosteldate; Type: TABLE; Schema: public; Owner: hms
--

CREATE TABLE hosteldate (
    hostelname character varying NOT NULL,
    "year" integer NOT NULL,
    "month" character varying NOT NULL,
    monthnumber integer NOT NULL
);


--
-- TOC entry 9 (OID 217735)
-- Name: hostelattendance; Type: TABLE; Schema: public; Owner: hms
--

CREATE TABLE hostelattendance (
    hostelname character varying NOT NULL,
    "month" character varying NOT NULL,
    "year" integer NOT NULL,
    sickstudents integer,
    holidayattendance integer,
    totalattendance integer
);


--
-- TOC entry 10 (OID 217740)
-- Name: openingbalance; Type: TABLE; Schema: public; Owner: hms
--

CREATE TABLE openingbalance (
    sno integer,
    hostelname character varying NOT NULL,
    "month" character varying NOT NULL,
    "year" integer NOT NULL,
    itemname character varying NOT NULL,
    quantity double precision,
    rate double precision,
    amount double precision
);


--
-- TOC entry 11 (OID 217745)
-- Name: purchases; Type: TABLE; Schema: public; Owner: hms
--

CREATE TABLE purchases (
    sno integer,
    hostelname character varying NOT NULL,
    "month" character varying NOT NULL,
    "year" integer NOT NULL,
    itemname character varying NOT NULL,
    quantity double precision,
    rate double precision,
    amount double precision
);


--
-- TOC entry 12 (OID 217750)
-- Name: consumption; Type: TABLE; Schema: public; Owner: hms
--

CREATE TABLE consumption (
    sno integer,
    hostelname character varying NOT NULL,
    "month" character varying NOT NULL,
    "year" integer NOT NULL,
    itemname character varying NOT NULL,
    quantity double precision,
    rate double precision,
    amount double precision
);


--
-- TOC entry 13 (OID 217755)
-- Name: total; Type: TABLE; Schema: public; Owner: hms
--

CREATE TABLE total (
    sno integer,
    hostelname character varying NOT NULL,
    "month" character varying NOT NULL,
    "year" integer NOT NULL,
    itemname character varying NOT NULL,
    quantity double precision,
    rate double precision,
    amount double precision
);


--
-- TOC entry 14 (OID 217760)
-- Name: closingbalances; Type: TABLE; Schema: public; Owner: hms
--

CREATE TABLE closingbalances (
    sno integer,
    hostelname character varying NOT NULL,
    "month" character varying NOT NULL,
    "year" integer NOT NULL,
    itemname character varying NOT NULL,
    quantity double precision,
    rate double precision,
    amount double precision
);


--
-- TOC entry 15 (OID 217770)
-- Name: items; Type: TABLE; Schema: public; Owner: hms
--

CREATE TABLE items (
    product_no integer,
    name text,
    price numeric,
    CONSTRAINT products_price CHECK ((price > 0::numeric))
);


--
-- TOC entry 16 (OID 217776)
-- Name: schoolattendance; Type: TABLE; Schema: public; Owner: hms
--

CREATE TABLE schoolattendance (
    hostelname character varying NOT NULL,
    schoolname character varying NOT NULL,
    "year" integer NOT NULL,
    "month" character varying NOT NULL,
    totalstudents integer,
    workingdays integer,
    holidays integer,
    totalattendance integer
);


--
-- TOC entry 17 (OID 218094)
-- Name: stock; Type: TABLE; Schema: public; Owner: hms
--

CREATE TABLE stock (
    itemnumber integer,
    itemname character varying NOT NULL
);


--
-- TOC entry 18 (OID 234316)
-- Name: category; Type: TABLE; Schema: public; Owner: hms
--

CREATE TABLE category (
    sno integer NOT NULL,
    caste character varying
);


--
-- TOC entry 19 (OID 234330)
-- Name: classes; Type: TABLE; Schema: public; Owner: hms
--

CREATE TABLE classes (
    sno integer NOT NULL,
    classname character varying NOT NULL
);


--
-- TOC entry 20 (OID 242510)
-- Name: a; Type: TABLE; Schema: public; Owner: hms
--

CREATE TABLE a (
    code double precision
);


--
-- TOC entry 21 (OID 242515)
-- Name: hostel; Type: TABLE; Schema: public; Owner: hms
--

CREATE TABLE hostel (
    hostelname character varying NOT NULL,
    code double precision NOT NULL,
    "year" integer,
    "month" character varying,
    "location" character varying NOT NULL,
    hwoname character varying,
    first integer,
    "second" integer,
    third integer,
    fourth integer,
    fifth integer,
    sixth integer,
    seventh integer,
    eighth integer,
    ninth integer,
    tenth integer,
    total integer
);


--
-- TOC entry 22 (OID 250710)
-- Name: hostelstrength; Type: TABLE; Schema: public; Owner: hms
--

CREATE TABLE hostelstrength (
    sno integer NOT NULL,
    hostelname character varying NOT NULL,
    "year" integer NOT NULL,
    "month" character varying NOT NULL,
    "class" character varying NOT NULL,
    sc integer,
    hc integer,
    st integer,
    bc integer,
    oc integer,
    total integer
);


--
-- Data for TOC entry 41 (OID 217698)
-- Name: add_users; Type: TABLE DATA; Schema: public; Owner: hms
--

COPY add_users (userid, "password", roles) FROM stdin;
hwo	admin	admin
admin	home	home
\.


--
-- Data for TOC entry 42 (OID 217703)
-- Name: role_service; Type: TABLE DATA; Schema: public; Owner: hms
--

COPY role_service (roleid, serviceid) FROM stdin;
1	2
1	1
1	3
1	4
1	5
1	6
1	10
\.


--
-- Data for TOC entry 43 (OID 217705)
-- Name: user_roles; Type: TABLE DATA; Schema: public; Owner: hms
--

COPY user_roles (roles, roleid) FROM stdin;
admin	1
home	1
\.


--
-- Data for TOC entry 44 (OID 217710)
-- Name: mapmonthitem; Type: TABLE DATA; Schema: public; Owner: hms
--

COPY mapmonthitem (hostelname, "month", "year", itemname, itemnumber) FROM stdin;
REDDY	DECEMBER	2005	RICE	1
REDDY	DECEMBER	2005	DAL	3
REDDY	JANUARY	2006	RICE	1
REDDY	JANUARY	2006	DAL	3
REDDY	FEBRUARY	2006	RICE	1
REDDY	FEBRUARY	2006	DAL	3
REDDY	FEBRUARY	2005	RICE	1
REDDY	FEBRUARY	2005	DAL	3
\.


--
-- Data for TOC entry 45 (OID 217720)
-- Name: school; Type: TABLE DATA; Schema: public; Owner: hms
--

COPY school (hostelname, schoolname, "location", first, "second", third, fourth, fifth, sixth, seventh, eighth, ninth, tenth, total) FROM stdin;
\.


--
-- Data for TOC entry 46 (OID 217725)
-- Name: month; Type: TABLE DATA; Schema: public; Owner: hms
--

COPY "month" (monthnumber, monthname) FROM stdin;
1	JANUARY
2	FEBRUARY
3	MARCH
4	APRIL
5	MAY
6	JUNE
7	JULY
8	AUGUST
9	SEPTEMBER
10	OCTOBER
11	NOVEMBER
12	DECEMBER
\.


--
-- Data for TOC entry 47 (OID 217730)
-- Name: hosteldate; Type: TABLE DATA; Schema: public; Owner: hms
--

COPY hosteldate (hostelname, "year", "month", monthnumber) FROM stdin;
GIRLS	2005	MARCH	3
\.


--
-- Data for TOC entry 48 (OID 217735)
-- Name: hostelattendance; Type: TABLE DATA; Schema: public; Owner: hms
--

COPY hostelattendance (hostelname, "month", "year", sickstudents, holidayattendance, totalattendance) FROM stdin;
\.


--
-- Data for TOC entry 49 (OID 217740)
-- Name: openingbalance; Type: TABLE DATA; Schema: public; Owner: hms
--

COPY openingbalance (sno, hostelname, "month", "year", itemname, quantity, rate, amount) FROM stdin;
\.


--
-- Data for TOC entry 50 (OID 217745)
-- Name: purchases; Type: TABLE DATA; Schema: public; Owner: hms
--

COPY purchases (sno, hostelname, "month", "year", itemname, quantity, rate, amount) FROM stdin;
\.


--
-- Data for TOC entry 51 (OID 217750)
-- Name: consumption; Type: TABLE DATA; Schema: public; Owner: hms
--

COPY consumption (sno, hostelname, "month", "year", itemname, quantity, rate, amount) FROM stdin;
\.


--
-- Data for TOC entry 52 (OID 217755)
-- Name: total; Type: TABLE DATA; Schema: public; Owner: hms
--

COPY total (sno, hostelname, "month", "year", itemname, quantity, rate, amount) FROM stdin;
\.


--
-- Data for TOC entry 53 (OID 217760)
-- Name: closingbalances; Type: TABLE DATA; Schema: public; Owner: hms
--

COPY closingbalances (sno, hostelname, "month", "year", itemname, quantity, rate, amount) FROM stdin;
\.


--
-- Data for TOC entry 54 (OID 217770)
-- Name: items; Type: TABLE DATA; Schema: public; Owner: hms
--

COPY items (product_no, name, price) FROM stdin;
\.


--
-- Data for TOC entry 55 (OID 217776)
-- Name: schoolattendance; Type: TABLE DATA; Schema: public; Owner: hms
--

COPY schoolattendance (hostelname, schoolname, "year", "month", totalstudents, workingdays, holidays, totalattendance) FROM stdin;
REDDY	NPS	2005	DECEMBER	91	12	2	3
\.


--
-- Data for TOC entry 56 (OID 218094)
-- Name: stock; Type: TABLE DATA; Schema: public; Owner: hms
--

COPY stock (itemnumber, itemname) FROM stdin;
1	RICE
2	ONION
3	DAL
4	rice
\.


--
-- Data for TOC entry 57 (OID 234316)
-- Name: category; Type: TABLE DATA; Schema: public; Owner: hms
--

COPY category (sno, caste) FROM stdin;
1	SC
2	HC
3	ST
4	BC
5	OC
\.


--
-- Data for TOC entry 58 (OID 234330)
-- Name: classes; Type: TABLE DATA; Schema: public; Owner: hms
--

COPY classes (sno, classname) FROM stdin;
1	FIRST CLASS
2	SECOND CLASS
3	THIRD CLASS
4	FOURTH CLASS
5	FIFTH CLASS
6	SIXTH CLASS
7	SEVENTH CLASS
8	EIGHT CLASS
9	NINTH CLASS
10	TENTH CLASS
\.


--
-- Data for TOC entry 59 (OID 242510)
-- Name: a; Type: TABLE DATA; Schema: public; Owner: hms
--

COPY a (code) FROM stdin;
1223334455
1223334455.1
1223334454.1
\.


--
-- Data for TOC entry 60 (OID 242515)
-- Name: hostel; Type: TABLE DATA; Schema: public; Owner: hms
--

COPY hostel (hostelname, code, "year", "month", "location", hwoname, first, "second", third, fourth, fifth, sixth, seventh, eighth, ninth, tenth, total) FROM stdin;
\.


--
-- Data for TOC entry 61 (OID 250710)
-- Name: hostelstrength; Type: TABLE DATA; Schema: public; Owner: hms
--

COPY hostelstrength (sno, hostelname, "year", "month", "class", sc, hc, st, bc, oc, total) FROM stdin;
\.


--
-- TOC entry 23 (OID 218056)
-- Name: role_service_pkey; Type: CONSTRAINT; Schema: public; Owner: hms
--

ALTER TABLE ONLY role_service
    ADD CONSTRAINT role_service_pkey PRIMARY KEY (roleid, serviceid);


--
-- TOC entry 24 (OID 218058)
-- Name: user_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: hms
--

ALTER TABLE ONLY user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (roles, roleid);


--
-- TOC entry 25 (OID 218060)
-- Name: mapmonthitem_pkey; Type: CONSTRAINT; Schema: public; Owner: hms
--

ALTER TABLE ONLY mapmonthitem
    ADD CONSTRAINT mapmonthitem_pkey PRIMARY KEY (hostelname, "month", "year", itemnumber);


--
-- TOC entry 26 (OID 218064)
-- Name: school_pkey; Type: CONSTRAINT; Schema: public; Owner: hms
--

ALTER TABLE ONLY school
    ADD CONSTRAINT school_pkey PRIMARY KEY (hostelname, schoolname, "location");


--
-- TOC entry 27 (OID 218066)
-- Name: month_pkey; Type: CONSTRAINT; Schema: public; Owner: hms
--

ALTER TABLE ONLY "month"
    ADD CONSTRAINT month_pkey PRIMARY KEY (monthnumber);


--
-- TOC entry 28 (OID 218068)
-- Name: hosteldate_pkey; Type: CONSTRAINT; Schema: public; Owner: hms
--

ALTER TABLE ONLY hosteldate
    ADD CONSTRAINT hosteldate_pkey PRIMARY KEY (hostelname, "year", "month", monthnumber);


--
-- TOC entry 29 (OID 218070)
-- Name: hostelattendance_pkey; Type: CONSTRAINT; Schema: public; Owner: hms
--

ALTER TABLE ONLY hostelattendance
    ADD CONSTRAINT hostelattendance_pkey PRIMARY KEY (hostelname, "month", "year");


--
-- TOC entry 30 (OID 218072)
-- Name: openingbalance_pkey; Type: CONSTRAINT; Schema: public; Owner: hms
--

ALTER TABLE ONLY openingbalance
    ADD CONSTRAINT openingbalance_pkey PRIMARY KEY (hostelname, "month", "year", itemname);


--
-- TOC entry 31 (OID 218074)
-- Name: purchases_pkey; Type: CONSTRAINT; Schema: public; Owner: hms
--

ALTER TABLE ONLY purchases
    ADD CONSTRAINT purchases_pkey PRIMARY KEY (hostelname, "month", "year", itemname);


--
-- TOC entry 32 (OID 218076)
-- Name: consumption_pkey; Type: CONSTRAINT; Schema: public; Owner: hms
--

ALTER TABLE ONLY consumption
    ADD CONSTRAINT consumption_pkey PRIMARY KEY (hostelname, "month", "year", itemname);


--
-- TOC entry 33 (OID 218078)
-- Name: total_pkey; Type: CONSTRAINT; Schema: public; Owner: hms
--

ALTER TABLE ONLY total
    ADD CONSTRAINT total_pkey PRIMARY KEY (hostelname, "month", "year", itemname);


--
-- TOC entry 34 (OID 218080)
-- Name: closingbalances_pkey; Type: CONSTRAINT; Schema: public; Owner: hms
--

ALTER TABLE ONLY closingbalances
    ADD CONSTRAINT closingbalances_pkey PRIMARY KEY (hostelname, "month", "year", itemname);


--
-- TOC entry 35 (OID 218084)
-- Name: schoolattendance_pkey; Type: CONSTRAINT; Schema: public; Owner: hms
--

ALTER TABLE ONLY schoolattendance
    ADD CONSTRAINT schoolattendance_pkey PRIMARY KEY (hostelname, schoolname, "year", "month");


--
-- TOC entry 36 (OID 218099)
-- Name: stock_pkey; Type: CONSTRAINT; Schema: public; Owner: hms
--

ALTER TABLE ONLY stock
    ADD CONSTRAINT stock_pkey PRIMARY KEY (itemname);


--
-- TOC entry 37 (OID 234321)
-- Name: category_pkey; Type: CONSTRAINT; Schema: public; Owner: hms
--

ALTER TABLE ONLY category
    ADD CONSTRAINT category_pkey PRIMARY KEY (sno);


--
-- TOC entry 38 (OID 234335)
-- Name: classes_pkey; Type: CONSTRAINT; Schema: public; Owner: hms
--

ALTER TABLE ONLY classes
    ADD CONSTRAINT classes_pkey PRIMARY KEY (sno, classname);


--
-- TOC entry 39 (OID 242520)
-- Name: hostel_pkey; Type: CONSTRAINT; Schema: public; Owner: hms
--

ALTER TABLE ONLY hostel
    ADD CONSTRAINT hostel_pkey PRIMARY KEY (hostelname, code, "location");


--
-- TOC entry 40 (OID 250715)
-- Name: hostelstrength_pkey; Type: CONSTRAINT; Schema: public; Owner: hms
--

ALTER TABLE ONLY hostelstrength
    ADD CONSTRAINT hostelstrength_pkey PRIMARY KEY (sno, hostelname, "year", "month", "class");


