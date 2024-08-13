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
    name character varying(50) NOT NULL,
    age integer NOT NULL,
    volume integer,
    distance numeric(4,1),
    description text,
    has_life boolean,
    is_spherical boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age integer NOT NULL,
    volume integer,
    distance numeric(4,1),
    description text,
    has_life boolean,
    is_spherical boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: more; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more (
    more_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age integer NOT NULL,
    volume integer,
    distance numeric(4,1),
    description text,
    has_life boolean,
    is_spherical boolean,
    moon_id integer
);


ALTER TABLE public.more OWNER TO freecodecamp;

--
-- Name: more_more_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_more_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_more_id_seq OWNER TO freecodecamp;

--
-- Name: more_more_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_more_id_seq OWNED BY public.more.more_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age integer NOT NULL,
    volume integer,
    distance numeric(4,1),
    description text,
    has_life boolean,
    is_spherical boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age integer NOT NULL,
    volume integer,
    distance numeric(4,1),
    description text,
    has_life boolean,
    is_spherical boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: more more_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more ALTER COLUMN more_id SET DEFAULT nextval('public.more_more_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'g1', 1, 1, 1.1, 'abc', true, true);
INSERT INTO public.galaxy VALUES (2, 'g2', 1, 1, 1.1, 'abc', true, true);
INSERT INTO public.galaxy VALUES (3, 'g3', 1, 1, 1.1, 'abc', true, true);
INSERT INTO public.galaxy VALUES (4, 'g4', 1, 1, 1.1, 'abc', true, true);
INSERT INTO public.galaxy VALUES (5, 'g5', 1, 1, 1.1, 'abc', true, true);
INSERT INTO public.galaxy VALUES (6, 'g6', 1, 1, 1.1, 'abc', true, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'm1', 4, 4, 4.4, 'jkl', false, false, 4);
INSERT INTO public.moon VALUES (2, 'm2', 4, 4, 4.4, 'jkl', false, false, 4);
INSERT INTO public.moon VALUES (3, 'm3', 4, 4, 4.4, 'jkl', false, false, 4);
INSERT INTO public.moon VALUES (4, 'm4', 4, 4, 4.4, 'jkl', false, false, 4);
INSERT INTO public.moon VALUES (5, 'm5', 4, 4, 4.4, 'jkl', false, false, 4);
INSERT INTO public.moon VALUES (6, 'm6', 4, 4, 4.4, 'jkl', false, false, 4);
INSERT INTO public.moon VALUES (7, 'm7', 4, 4, 4.4, 'jkl', false, false, 4);
INSERT INTO public.moon VALUES (8, 'm8', 4, 4, 4.4, 'jkl', false, false, 4);
INSERT INTO public.moon VALUES (9, 'm9', 4, 4, 4.4, 'jkl', false, false, 4);
INSERT INTO public.moon VALUES (10, 'm10', 4, 4, 4.4, 'jkl', false, false, 4);
INSERT INTO public.moon VALUES (11, 'm11', 4, 4, 4.4, 'jkl', false, false, 4);
INSERT INTO public.moon VALUES (12, 'm12', 4, 4, 4.4, 'jkl', false, false, 4);
INSERT INTO public.moon VALUES (13, 'm13', 4, 4, 4.4, 'jkl', false, false, 4);
INSERT INTO public.moon VALUES (14, 'm14', 4, 4, 4.4, 'jkl', false, false, 4);
INSERT INTO public.moon VALUES (15, 'm15', 4, 4, 4.4, 'jkl', false, false, 4);
INSERT INTO public.moon VALUES (16, 'm16', 4, 4, 4.4, 'jkl', false, false, 4);
INSERT INTO public.moon VALUES (17, 'm17', 4, 4, 4.4, 'jkl', false, false, 4);
INSERT INTO public.moon VALUES (18, 'm18', 4, 4, 4.4, 'jkl', false, false, 4);
INSERT INTO public.moon VALUES (19, 'm19', 4, 4, 4.4, 'jkl', false, false, 4);
INSERT INTO public.moon VALUES (20, 'm20', 4, 4, 4.4, 'jkl', false, false, 4);


--
-- Data for Name: more; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more VALUES (1, 'o1', 5, 5, 5.5, 'mno', false, false, 5);
INSERT INTO public.more VALUES (2, 'o2', 5, 5, 5.5, 'mno', false, false, 5);
INSERT INTO public.more VALUES (3, 'o3', 5, 5, 5.5, 'mno', false, false, 5);
INSERT INTO public.more VALUES (4, 'o4', 5, 5, 5.5, 'mno', false, false, 5);
INSERT INTO public.more VALUES (5, 'o5', 5, 5, 5.5, 'mno', false, false, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'p1', 3, 3, 3.3, 'ghi', false, true, 3);
INSERT INTO public.planet VALUES (2, 'p2', 3, 3, 3.3, 'ghi', false, true, 3);
INSERT INTO public.planet VALUES (3, 'p3', 3, 3, 3.3, 'ghi', false, true, 3);
INSERT INTO public.planet VALUES (4, 'p4', 3, 3, 3.3, 'ghi', false, true, 3);
INSERT INTO public.planet VALUES (5, 'p5', 3, 3, 3.3, 'ghi', false, true, 3);
INSERT INTO public.planet VALUES (6, 'p6', 3, 3, 3.3, 'ghi', false, true, 3);
INSERT INTO public.planet VALUES (7, 'p7', 3, 3, 3.3, 'ghi', false, true, 3);
INSERT INTO public.planet VALUES (8, 'p8', 3, 3, 3.3, 'ghi', false, true, 3);
INSERT INTO public.planet VALUES (9, 'p9', 3, 3, 3.3, 'ghi', false, true, 3);
INSERT INTO public.planet VALUES (10, 'p10', 3, 3, 3.3, 'ghi', false, true, 3);
INSERT INTO public.planet VALUES (11, 'p11', 3, 3, 3.3, 'ghi', false, true, 3);
INSERT INTO public.planet VALUES (12, 'p12', 3, 3, 3.3, 'ghi', false, true, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 's1', 2, 2, 2.2, 'def', true, false, 2);
INSERT INTO public.star VALUES (2, 's2', 2, 2, 2.2, 'def', true, false, 2);
INSERT INTO public.star VALUES (3, 's3', 2, 2, 2.2, 'def', true, false, 2);
INSERT INTO public.star VALUES (4, 's4', 2, 2, 2.2, 'def', true, false, 2);
INSERT INTO public.star VALUES (5, 's5', 2, 2, 2.2, 'def', true, false, 2);
INSERT INTO public.star VALUES (6, 's6', 2, 2, 2.2, 'def', true, false, 2);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: more_more_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_more_id_seq', 5, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: more more_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more
    ADD CONSTRAINT more_name_key UNIQUE (name);


--
-- Name: more more_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more
    ADD CONSTRAINT more_pkey PRIMARY KEY (more_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: more more_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more
    ADD CONSTRAINT more_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

