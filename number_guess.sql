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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer,
    guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 3);
INSERT INTO public.games VALUES (2, 2, 30);
INSERT INTO public.games VALUES (3, 2, 790);
INSERT INTO public.games VALUES (4, 3, 758);
INSERT INTO public.games VALUES (5, 3, 71);
INSERT INTO public.games VALUES (6, 2, 675);
INSERT INTO public.games VALUES (7, 2, 542);
INSERT INTO public.games VALUES (8, 2, 159);
INSERT INTO public.games VALUES (9, 4, 274);
INSERT INTO public.games VALUES (10, 4, 141);
INSERT INTO public.games VALUES (11, 5, 578);
INSERT INTO public.games VALUES (12, 5, 198);
INSERT INTO public.games VALUES (13, 4, 651);
INSERT INTO public.games VALUES (14, 4, 62);
INSERT INTO public.games VALUES (15, 4, 996);
INSERT INTO public.games VALUES (16, 6, 587);
INSERT INTO public.games VALUES (17, 6, 716);
INSERT INTO public.games VALUES (18, 7, 497);
INSERT INTO public.games VALUES (19, 7, 173);
INSERT INTO public.games VALUES (20, 6, 659);
INSERT INTO public.games VALUES (21, 6, 854);
INSERT INTO public.games VALUES (22, 6, 12);
INSERT INTO public.games VALUES (23, 8, 606);
INSERT INTO public.games VALUES (24, 8, 974);
INSERT INTO public.games VALUES (25, 9, 661);
INSERT INTO public.games VALUES (26, 9, 110);
INSERT INTO public.games VALUES (27, 8, 511);
INSERT INTO public.games VALUES (28, 8, 480);
INSERT INTO public.games VALUES (29, 8, 488);
INSERT INTO public.games VALUES (30, 10, 756);
INSERT INTO public.games VALUES (31, 10, 153);
INSERT INTO public.games VALUES (32, 11, 257);
INSERT INTO public.games VALUES (33, 11, 64);
INSERT INTO public.games VALUES (34, 10, 711);
INSERT INTO public.games VALUES (35, 10, 545);
INSERT INTO public.games VALUES (36, 10, 322);
INSERT INTO public.games VALUES (37, 1, 11);
INSERT INTO public.games VALUES (38, 12, 757);
INSERT INTO public.games VALUES (39, 12, 745);
INSERT INTO public.games VALUES (40, 13, 321);
INSERT INTO public.games VALUES (41, 13, 519);
INSERT INTO public.games VALUES (42, 12, 905);
INSERT INTO public.games VALUES (43, 12, 195);
INSERT INTO public.games VALUES (44, 12, 955);
INSERT INTO public.games VALUES (45, 14, 55);
INSERT INTO public.games VALUES (46, 14, 540);
INSERT INTO public.games VALUES (47, 15, 859);
INSERT INTO public.games VALUES (48, 15, 410);
INSERT INTO public.games VALUES (49, 14, 383);
INSERT INTO public.games VALUES (50, 14, 933);
INSERT INTO public.games VALUES (51, 14, 824);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'abober');
INSERT INTO public.users VALUES (2, 'user_1786719341004');
INSERT INTO public.users VALUES (3, 'user_1786719341003');
INSERT INTO public.users VALUES (4, 'user_1786719513978');
INSERT INTO public.users VALUES (5, 'user_1786719513977');
INSERT INTO public.users VALUES (6, 'user_1786719521175');
INSERT INTO public.users VALUES (7, 'user_1786719521174');
INSERT INTO public.users VALUES (8, 'user_1786719536726');
INSERT INTO public.users VALUES (9, 'user_1786719536725');
INSERT INTO public.users VALUES (10, 'user_1786719584629');
INSERT INTO public.users VALUES (11, 'user_1786719584628');
INSERT INTO public.users VALUES (12, 'user_1786719633163');
INSERT INTO public.users VALUES (13, 'user_1786719633162');
INSERT INTO public.users VALUES (14, 'user_1786719655084');
INSERT INTO public.users VALUES (15, 'user_1786719655083');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 51, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 15, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

