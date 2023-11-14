--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    username character varying(22),
    user_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_user_id_seq OWNER TO freecodecamp;

--
-- Name: games_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_user_id_seq OWNED BY public.games.user_id;


--
-- Name: gamesrecords; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.gamesrecords (
    user_id integer,
    game_id integer,
    number_of_tries integer
);


ALTER TABLE public.gamesrecords OWNER TO freecodecamp;

--
-- Name: games user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN user_id SET DEFAULT nextval('public.games_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES ('', 1);
INSERT INTO public.games VALUES ('Ela', 2);
INSERT INTO public.games VALUES ('Yuri', 3);
INSERT INTO public.games VALUES ('Dee', 4);
INSERT INTO public.games VALUES ('user_1699998421999', 5);
INSERT INTO public.games VALUES ('user_1699998421998', 6);
INSERT INTO public.games VALUES ('user_1699998647311', 7);
INSERT INTO public.games VALUES ('user_1699998647310', 8);
INSERT INTO public.games VALUES ('user_1699998660506', 9);
INSERT INTO public.games VALUES ('user_1699998660505', 10);
INSERT INTO public.games VALUES ('user_1699998752854', 11);
INSERT INTO public.games VALUES ('user_1699998752853', 12);
INSERT INTO public.games VALUES ('user_1699998809766', 13);
INSERT INTO public.games VALUES ('user_1699998809765', 14);
INSERT INTO public.games VALUES ('user_1699998851115', 15);
INSERT INTO public.games VALUES ('user_1699998851114', 16);
INSERT INTO public.games VALUES ('user_1699998872047', 17);
INSERT INTO public.games VALUES ('user_1699998872046', 18);
INSERT INTO public.games VALUES ('user_1699998933780', 19);
INSERT INTO public.games VALUES ('user_1699998933779', 20);
INSERT INTO public.games VALUES ('Pili', 21);
INSERT INTO public.games VALUES ('DERIO', 22);
INSERT INTO public.games VALUES ('Kiio', 23);
INSERT INTO public.games VALUES ('user_1699999140266', 24);
INSERT INTO public.games VALUES ('user_1699999140265', 25);
INSERT INTO public.games VALUES ('user_1699999177578', 26);
INSERT INTO public.games VALUES ('user_1699999177577', 27);
INSERT INTO public.games VALUES ('user_1699999278026', 28);
INSERT INTO public.games VALUES ('user_1699999278025', 29);
INSERT INTO public.games VALUES ('user_1699999338144', 30);
INSERT INTO public.games VALUES ('user_1699999338143', 31);


--
-- Data for Name: gamesrecords; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.gamesrecords VALUES (2, NULL, 5);
INSERT INTO public.gamesrecords VALUES (2, NULL, 2);
INSERT INTO public.gamesrecords VALUES (2, NULL, 2);
INSERT INTO public.gamesrecords VALUES (4, NULL, 2);
INSERT INTO public.gamesrecords VALUES (4, NULL, 3);
INSERT INTO public.gamesrecords VALUES (5, NULL, 250);
INSERT INTO public.gamesrecords VALUES (5, NULL, 16);
INSERT INTO public.gamesrecords VALUES (6, NULL, 735);
INSERT INTO public.gamesrecords VALUES (6, NULL, 635);
INSERT INTO public.gamesrecords VALUES (5, NULL, 255);
INSERT INTO public.gamesrecords VALUES (5, NULL, 681);
INSERT INTO public.gamesrecords VALUES (5, NULL, 721);
INSERT INTO public.gamesrecords VALUES (4, NULL, 3);
INSERT INTO public.gamesrecords VALUES (7, NULL, 710);
INSERT INTO public.gamesrecords VALUES (7, NULL, 956);
INSERT INTO public.gamesrecords VALUES (8, NULL, 553);
INSERT INTO public.gamesrecords VALUES (8, NULL, 889);
INSERT INTO public.gamesrecords VALUES (7, NULL, 626);
INSERT INTO public.gamesrecords VALUES (7, NULL, 785);
INSERT INTO public.gamesrecords VALUES (7, NULL, 554);
INSERT INTO public.gamesrecords VALUES (9, NULL, 536);
INSERT INTO public.gamesrecords VALUES (9, NULL, 171);
INSERT INTO public.gamesrecords VALUES (10, NULL, 751);
INSERT INTO public.gamesrecords VALUES (10, NULL, 377);
INSERT INTO public.gamesrecords VALUES (9, NULL, 334);
INSERT INTO public.gamesrecords VALUES (9, NULL, 418);
INSERT INTO public.gamesrecords VALUES (9, NULL, 498);
INSERT INTO public.gamesrecords VALUES (4, NULL, 2);
INSERT INTO public.gamesrecords VALUES (11, NULL, 111);
INSERT INTO public.gamesrecords VALUES (11, NULL, 365);
INSERT INTO public.gamesrecords VALUES (12, NULL, 128);
INSERT INTO public.gamesrecords VALUES (12, NULL, 675);
INSERT INTO public.gamesrecords VALUES (11, NULL, 735);
INSERT INTO public.gamesrecords VALUES (11, NULL, 181);
INSERT INTO public.gamesrecords VALUES (11, NULL, 497);
INSERT INTO public.gamesrecords VALUES (13, NULL, 766);
INSERT INTO public.gamesrecords VALUES (13, NULL, 685);
INSERT INTO public.gamesrecords VALUES (14, NULL, 607);
INSERT INTO public.gamesrecords VALUES (14, NULL, 691);
INSERT INTO public.gamesrecords VALUES (13, NULL, 683);
INSERT INTO public.gamesrecords VALUES (13, NULL, 123);
INSERT INTO public.gamesrecords VALUES (13, NULL, 607);
INSERT INTO public.gamesrecords VALUES (15, NULL, 453);
INSERT INTO public.gamesrecords VALUES (15, NULL, 324);
INSERT INTO public.gamesrecords VALUES (16, NULL, 811);
INSERT INTO public.gamesrecords VALUES (16, NULL, 469);
INSERT INTO public.gamesrecords VALUES (15, NULL, 167);
INSERT INTO public.gamesrecords VALUES (15, NULL, 131);
INSERT INTO public.gamesrecords VALUES (15, NULL, 191);
INSERT INTO public.gamesrecords VALUES (17, NULL, 775);
INSERT INTO public.gamesrecords VALUES (17, NULL, 690);
INSERT INTO public.gamesrecords VALUES (18, NULL, 422);
INSERT INTO public.gamesrecords VALUES (18, NULL, 729);
INSERT INTO public.gamesrecords VALUES (17, NULL, 882);
INSERT INTO public.gamesrecords VALUES (17, NULL, 451);
INSERT INTO public.gamesrecords VALUES (17, NULL, 445);
INSERT INTO public.gamesrecords VALUES (19, NULL, 393);
INSERT INTO public.gamesrecords VALUES (19, NULL, 762);
INSERT INTO public.gamesrecords VALUES (20, NULL, 318);
INSERT INTO public.gamesrecords VALUES (20, NULL, 479);
INSERT INTO public.gamesrecords VALUES (19, NULL, 535);
INSERT INTO public.gamesrecords VALUES (19, NULL, 621);
INSERT INTO public.gamesrecords VALUES (19, NULL, 721);
INSERT INTO public.gamesrecords VALUES (21, NULL, 1);
INSERT INTO public.gamesrecords VALUES (21, NULL, 3);
INSERT INTO public.gamesrecords VALUES (21, NULL, 1);
INSERT INTO public.gamesrecords VALUES (22, NULL, 2);
INSERT INTO public.gamesrecords VALUES (23, NULL, 2);
INSERT INTO public.gamesrecords VALUES (24, NULL, 397);
INSERT INTO public.gamesrecords VALUES (24, NULL, 391);
INSERT INTO public.gamesrecords VALUES (25, NULL, 814);
INSERT INTO public.gamesrecords VALUES (25, NULL, 366);
INSERT INTO public.gamesrecords VALUES (24, NULL, 379);
INSERT INTO public.gamesrecords VALUES (24, NULL, 675);
INSERT INTO public.gamesrecords VALUES (24, NULL, 149);
INSERT INTO public.gamesrecords VALUES (26, NULL, 347);
INSERT INTO public.gamesrecords VALUES (26, NULL, 426);
INSERT INTO public.gamesrecords VALUES (27, NULL, 34);
INSERT INTO public.gamesrecords VALUES (27, NULL, 172);
INSERT INTO public.gamesrecords VALUES (26, NULL, 319);
INSERT INTO public.gamesrecords VALUES (26, NULL, 598);
INSERT INTO public.gamesrecords VALUES (26, NULL, 531);
INSERT INTO public.gamesrecords VALUES (28, NULL, 108);
INSERT INTO public.gamesrecords VALUES (28, NULL, 981);
INSERT INTO public.gamesrecords VALUES (29, NULL, 846);
INSERT INTO public.gamesrecords VALUES (29, NULL, 748);
INSERT INTO public.gamesrecords VALUES (28, NULL, 559);
INSERT INTO public.gamesrecords VALUES (28, NULL, 910);
INSERT INTO public.gamesrecords VALUES (28, NULL, 122);
INSERT INTO public.gamesrecords VALUES (30, NULL, 273);
INSERT INTO public.gamesrecords VALUES (30, NULL, 506);
INSERT INTO public.gamesrecords VALUES (31, NULL, 293);
INSERT INTO public.gamesrecords VALUES (31, NULL, 182);
INSERT INTO public.gamesrecords VALUES (30, NULL, 607);
INSERT INTO public.gamesrecords VALUES (30, NULL, 256);
INSERT INTO public.gamesrecords VALUES (30, NULL, 248);


--
-- Name: games_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_user_id_seq', 31, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (user_id);


--
-- PostgreSQL database dump complete
--

