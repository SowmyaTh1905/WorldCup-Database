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
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(100) NOT NULL
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
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (523, 2018, 'Final', 982, 983, 2, 4);
INSERT INTO public.games VALUES (524, 2018, 'Third Place', 984, 985, 0, 2);
INSERT INTO public.games VALUES (525, 2018, 'Semi-Final', 983, 985, 1, 2);
INSERT INTO public.games VALUES (526, 2018, 'Semi-Final', 982, 984, 0, 1);
INSERT INTO public.games VALUES (527, 2018, 'Quarter-Final', 983, 986, 2, 3);
INSERT INTO public.games VALUES (528, 2018, 'Quarter-Final', 985, 987, 0, 2);
INSERT INTO public.games VALUES (529, 2018, 'Quarter-Final', 984, 988, 1, 2);
INSERT INTO public.games VALUES (530, 2018, 'Quarter-Final', 982, 989, 0, 2);
INSERT INTO public.games VALUES (531, 2018, 'Eighth-Final', 985, 990, 1, 2);
INSERT INTO public.games VALUES (532, 2018, 'Eighth-Final', 987, 991, 0, 1);
INSERT INTO public.games VALUES (533, 2018, 'Eighth-Final', 984, 992, 2, 3);
INSERT INTO public.games VALUES (534, 2018, 'Eighth-Final', 988, 993, 0, 2);
INSERT INTO public.games VALUES (535, 2018, 'Eighth-Final', 983, 994, 1, 2);
INSERT INTO public.games VALUES (536, 2018, 'Eighth-Final', 986, 995, 1, 2);
INSERT INTO public.games VALUES (537, 2018, 'Eighth-Final', 989, 996, 1, 2);
INSERT INTO public.games VALUES (538, 2018, 'Eighth-Final', 982, 997, 3, 4);
INSERT INTO public.games VALUES (539, 2014, 'Final', 998, 997, 0, 1);
INSERT INTO public.games VALUES (540, 2014, 'Third Place', 999, 988, 0, 3);
INSERT INTO public.games VALUES (541, 2014, 'Semi-Final', 997, 999, 0, 1);
INSERT INTO public.games VALUES (542, 2014, 'Semi-Final', 998, 988, 1, 7);
INSERT INTO public.games VALUES (543, 2014, 'Quarter-Final', 999, 1000, 0, 1);
INSERT INTO public.games VALUES (544, 2014, 'Quarter-Final', 997, 984, 0, 1);
INSERT INTO public.games VALUES (545, 2014, 'Quarter-Final', 988, 990, 1, 2);
INSERT INTO public.games VALUES (546, 2014, 'Quarter-Final', 998, 982, 0, 1);
INSERT INTO public.games VALUES (547, 2014, 'Eighth-Final', 988, 1001, 1, 2);
INSERT INTO public.games VALUES (548, 2014, 'Eighth-Final', 990, 989, 0, 2);
INSERT INTO public.games VALUES (549, 2014, 'Eighth-Final', 982, 1002, 0, 2);
INSERT INTO public.games VALUES (550, 2014, 'Eighth-Final', 998, 1003, 1, 2);
INSERT INTO public.games VALUES (551, 2014, 'Eighth-Final', 999, 993, 1, 2);
INSERT INTO public.games VALUES (552, 2014, 'Eighth-Final', 1000, 1004, 1, 2);
INSERT INTO public.games VALUES (553, 2014, 'Eighth-Final', 997, 991, 0, 1);
INSERT INTO public.games VALUES (554, 2014, 'Eighth-Final', 984, 1005, 1, 2);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (982, 'France');
INSERT INTO public.teams VALUES (983, 'Croatia');
INSERT INTO public.teams VALUES (984, 'Belgium');
INSERT INTO public.teams VALUES (985, 'England');
INSERT INTO public.teams VALUES (986, 'Russia');
INSERT INTO public.teams VALUES (987, 'Sweden');
INSERT INTO public.teams VALUES (988, 'Brazil');
INSERT INTO public.teams VALUES (989, 'Uruguay');
INSERT INTO public.teams VALUES (990, 'Colombia');
INSERT INTO public.teams VALUES (991, 'Switzerland');
INSERT INTO public.teams VALUES (992, 'Japan');
INSERT INTO public.teams VALUES (993, 'Mexico');
INSERT INTO public.teams VALUES (994, 'Denmark');
INSERT INTO public.teams VALUES (995, 'Spain');
INSERT INTO public.teams VALUES (996, 'Portugal');
INSERT INTO public.teams VALUES (997, 'Argentina');
INSERT INTO public.teams VALUES (998, 'Germany');
INSERT INTO public.teams VALUES (999, 'Netherlands');
INSERT INTO public.teams VALUES (1000, 'Costa Rica');
INSERT INTO public.teams VALUES (1001, 'Chile');
INSERT INTO public.teams VALUES (1002, 'Nigeria');
INSERT INTO public.teams VALUES (1003, 'Algeria');
INSERT INTO public.teams VALUES (1004, 'Greece');
INSERT INTO public.teams VALUES (1005, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 554, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 1005, true);


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

