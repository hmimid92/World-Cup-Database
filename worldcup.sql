--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    opponent_id integer NOT NULL
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
-- Name: games_opponent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_id_seq OWNER TO freecodecamp;

--
-- Name: games_opponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_id_seq OWNED BY public.games.opponent_id;


--
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


--
-- Name: games opponent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN opponent_id SET DEFAULT nextval('public.games_opponent_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 2018, 'Final', 322, 4, 2, 321);
INSERT INTO public.games VALUES (2, 2018, 'Third Place', 324, 2, 0, 323);
INSERT INTO public.games VALUES (3, 2018, 'Semi-Final', 321, 2, 1, 323);
INSERT INTO public.games VALUES (4, 2018, 'Semi-Final', 322, 1, 0, 324);
INSERT INTO public.games VALUES (5, 2018, 'Quarter-Final', 321, 3, 2, 329);
INSERT INTO public.games VALUES (6, 2018, 'Quarter-Final', 323, 2, 0, 331);
INSERT INTO public.games VALUES (7, 2018, 'Quarter-Final', 324, 2, 1, 333);
INSERT INTO public.games VALUES (8, 2018, 'Quarter-Final', 322, 2, 0, 335);
INSERT INTO public.games VALUES (9, 2018, 'Eighth-Final', 323, 2, 1, 337);
INSERT INTO public.games VALUES (10, 2018, 'Eighth-Final', 331, 1, 0, 339);
INSERT INTO public.games VALUES (11, 2018, 'Eighth-Final', 324, 3, 2, 341);
INSERT INTO public.games VALUES (12, 2018, 'Eighth-Final', 333, 2, 0, 343);
INSERT INTO public.games VALUES (13, 2018, 'Eighth-Final', 321, 2, 1, 345);
INSERT INTO public.games VALUES (14, 2018, 'Eighth-Final', 329, 2, 1, 347);
INSERT INTO public.games VALUES (15, 2018, 'Eighth-Final', 335, 2, 1, 349);
INSERT INTO public.games VALUES (16, 2018, 'Eighth-Final', 322, 4, 3, 351);
INSERT INTO public.games VALUES (17, 2014, 'Final', 354, 1, 0, 351);
INSERT INTO public.games VALUES (18, 2014, 'Third Place', 356, 3, 0, 333);
INSERT INTO public.games VALUES (19, 2014, 'Semi-Final', 351, 1, 0, 356);
INSERT INTO public.games VALUES (20, 2014, 'Semi-Final', 354, 7, 1, 333);
INSERT INTO public.games VALUES (21, 2014, 'Quarter-Final', 356, 1, 0, 361);
INSERT INTO public.games VALUES (22, 2014, 'Quarter-Final', 351, 1, 0, 324);
INSERT INTO public.games VALUES (23, 2014, 'Quarter-Final', 333, 2, 1, 337);
INSERT INTO public.games VALUES (24, 2014, 'Quarter-Final', 354, 1, 0, 322);
INSERT INTO public.games VALUES (25, 2014, 'Eighth-Final', 333, 2, 1, 369);
INSERT INTO public.games VALUES (26, 2014, 'Eighth-Final', 337, 2, 0, 335);
INSERT INTO public.games VALUES (27, 2014, 'Eighth-Final', 322, 2, 0, 373);
INSERT INTO public.games VALUES (28, 2014, 'Eighth-Final', 354, 2, 1, 375);
INSERT INTO public.games VALUES (29, 2014, 'Eighth-Final', 356, 2, 1, 343);
INSERT INTO public.games VALUES (30, 2014, 'Eighth-Final', 361, 2, 1, 379);
INSERT INTO public.games VALUES (31, 2014, 'Eighth-Final', 351, 1, 0, 339);
INSERT INTO public.games VALUES (32, 2014, 'Eighth-Final', 324, 2, 1, 383);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (321, 'Croatia');
INSERT INTO public.teams VALUES (322, 'France');
INSERT INTO public.teams VALUES (323, 'England');
INSERT INTO public.teams VALUES (324, 'Belgium');
INSERT INTO public.teams VALUES (329, 'Russia');
INSERT INTO public.teams VALUES (331, 'Sweden');
INSERT INTO public.teams VALUES (333, 'Brazil');
INSERT INTO public.teams VALUES (335, 'Uruguay');
INSERT INTO public.teams VALUES (337, 'Colombia');
INSERT INTO public.teams VALUES (339, 'Switzerland');
INSERT INTO public.teams VALUES (341, 'Japan');
INSERT INTO public.teams VALUES (343, 'Mexico');
INSERT INTO public.teams VALUES (345, 'Denmark');
INSERT INTO public.teams VALUES (347, 'Spain');
INSERT INTO public.teams VALUES (349, 'Portugal');
INSERT INTO public.teams VALUES (351, 'Argentina');
INSERT INTO public.teams VALUES (354, 'Germany');
INSERT INTO public.teams VALUES (356, 'Netherlands');
INSERT INTO public.teams VALUES (361, 'Costa Rica');
INSERT INTO public.teams VALUES (369, 'Chile');
INSERT INTO public.teams VALUES (373, 'Nigeria');
INSERT INTO public.teams VALUES (375, 'Algeria');
INSERT INTO public.teams VALUES (379, 'Greece');
INSERT INTO public.teams VALUES (383, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 1, false);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 1, false);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 384, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

