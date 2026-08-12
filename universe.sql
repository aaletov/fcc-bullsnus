--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    size numeric,
    a text,
    b text,
    c text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    planet_id integer,
    a text,
    b text,
    c text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    star_id integer,
    a text,
    b text,
    c text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: snus; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.snus (
    snus_id integer NOT NULL,
    sas character varying(255) NOT NULL,
    sos character varying(255),
    ses text,
    name character varying(255)
);


ALTER TABLE public.snus OWNER TO freecodecamp;

--
-- Name: snus_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.snus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.snus_id_seq OWNER TO freecodecamp;

--
-- Name: snus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.snus_id_seq OWNED BY public.snus.snus_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    is_dead boolean,
    galaxy_id integer,
    is_red boolean,
    cm integer,
    inch integer,
    a text,
    b text,
    c text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: snus snus_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.snus ALTER COLUMN snus_id SET DEFAULT nextval('public.snus_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, '1', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, '2', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, '3', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, '4', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, '5', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, '6', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, '7', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, '8', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (9, '9', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (10, '10', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (11, '11', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (12, '12', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (13, '13', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (14, '14', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (15, '15', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (16, '16', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (17, '17', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (18, '18', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (19, '19', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (20, '20', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (21, '21', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (22, '22', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (23, '23', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (24, '24', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (25, '25', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (26, '26', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (27, '27', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (28, '28', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (29, '29', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (30, '30', NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, '1', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, '2', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, '3', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, '4', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, '5', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, '6', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, '7', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, '8', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, '9', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, '10', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, '11', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, '12', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, '13', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, '14', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, '15', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, '16', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, '17', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, '18', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, '19', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, '20', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (21, '21', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (22, '22', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (23, '23', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (24, '24', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (25, '25', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (26, '26', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (27, '27', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (28, '28', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (29, '29', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (30, '30', 1, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, '1', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, '2', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, '3', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, '4', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, '5', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, '6', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, '7', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, '8', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, '9', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, '10', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, '11', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, '12', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (13, '13', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (14, '14', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (15, '15', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (16, '16', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (17, '17', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (18, '18', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (19, '19', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (20, '20', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (21, '21', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (22, '22', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (23, '23', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (24, '24', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (25, '25', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (26, '26', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (27, '27', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (28, '28', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (29, '29', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (30, '30', 1, NULL, NULL, NULL);


--
-- Data for Name: snus; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.snus VALUES (1, '1', NULL, NULL, NULL);
INSERT INTO public.snus VALUES (2, '2', NULL, NULL, NULL);
INSERT INTO public.snus VALUES (3, '3', NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, '1', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, '2', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, '3', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, '4', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, '5', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, '6', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (7, '7', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (8, '8', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (9, '9', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (10, '10', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (11, '11', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (12, '12', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (13, '13', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (14, '14', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (15, '15', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (16, '16', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (17, '17', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (18, '18', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (19, '19', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (20, '20', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (21, '21', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (22, '22', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (23, '23', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (24, '24', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (25, '25', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (26, '26', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (27, '27', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (28, '28', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (29, '29', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (30, '30', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, false);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 1, false);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 1, false);


--
-- Name: snus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.snus_id_seq', 1, false);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 1, false);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: snus snus_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.snus
    ADD CONSTRAINT snus_pkey PRIMARY KEY (snus_id);


--
-- Name: snus snus_sas_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.snus
    ADD CONSTRAINT snus_sas_key UNIQUE (sas);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_fk FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

