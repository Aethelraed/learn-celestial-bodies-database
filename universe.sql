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
-- Name: cool_moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.cool_moon (
    cool_moon_id integer NOT NULL,
    coolness integer,
    mythological_relevance integer NOT NULL,
    name character varying(42)
);


ALTER TABLE public.cool_moon OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    in_local_group boolean NOT NULL,
    galaxy_type text,
    n_stars numeric(5,2)
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
    name character varying(30) NOT NULL,
    tidal_lock boolean,
    moon_type text,
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    habitable boolean NOT NULL,
    planet_type text,
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
    name character varying(30) NOT NULL,
    in_main_sequence boolean NOT NULL,
    star_type text,
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
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: cool_moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.cool_moon VALUES (1, 9, 10, NULL);
INSERT INTO public.cool_moon VALUES (2, 8, 6, NULL);
INSERT INTO public.cool_moon VALUES (3, 6, 5, NULL);
INSERT INTO public.cool_moon VALUES (9, 5, 7, NULL);
INSERT INTO public.cool_moon VALUES (5, 6, 9, NULL);
INSERT INTO public.cool_moon VALUES (4, 8, 8, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, 'Spiral', 200.00);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', true, 'Barred Spiral', 999.00);
INSERT INTO public.galaxy VALUES (3, 'Sagittarius', true, 'Spheroidal Dwarf', NULL);
INSERT INTO public.galaxy VALUES (4, 'Triangulum II', true, 'Spheroidal Dwarf, quenched', 0.01);
INSERT INTO public.galaxy VALUES (5, 'Booter I', true, 'Spheroidal Dwarf', NULL);
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cloud', true, 'Irregular Dwarf', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', true, 'Satellite Planet', 3);
INSERT INTO public.moon VALUES (2, 'Deimos', false, 'C Class Asteroid like', 4);
INSERT INTO public.moon VALUES (3, 'Phobos', false, 'RUbble Pile', 4);
INSERT INTO public.moon VALUES (4, 'IO', false, 'Overpowered', 5);
INSERT INTO public.moon VALUES (5, 'Europa', false, 'Ice Dispenser', 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', false, NULL, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', false, NULL, 5);
INSERT INTO public.moon VALUES (8, 'Metis', NULL, NULL, 5);
INSERT INTO public.moon VALUES (9, 'Leda', NULL, 'Swan', 5);
INSERT INTO public.moon VALUES (10, 'Adrasteia', NULL, 'Nymph', 5);
INSERT INTO public.moon VALUES (11, 'Thebe', NULL, NULL, 5);
INSERT INTO public.moon VALUES (12, 'Amalthea', NULL, NULL, 5);
INSERT INTO public.moon VALUES (13, 'Themisto', NULL, NULL, 5);
INSERT INTO public.moon VALUES (14, 'Himalia', NULL, NULL, 5);
INSERT INTO public.moon VALUES (15, 'Carpo', NULL, NULL, 5);
INSERT INTO public.moon VALUES (16, 'Valetudo', NULL, NULL, 5);
INSERT INTO public.moon VALUES (17, 'Carme', NULL, NULL, 5);
INSERT INTO public.moon VALUES (18, 'Ananke', NULL, NULL, 5);
INSERT INTO public.moon VALUES (19, 'Pasiphae', NULL, NULL, 5);
INSERT INTO public.moon VALUES (20, 'Sinope', NULL, NULL, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, 'terrestrial', 1);
INSERT INTO public.planet VALUES (2, 'Venus', false, 'terrestrial', 1);
INSERT INTO public.planet VALUES (3, 'Earth', true, 'terrestrial', 1);
INSERT INTO public.planet VALUES (4, 'Mars', false, 'terrestrial', 1);
INSERT INTO public.planet VALUES (5, 'Iupiter', false, 'Gas Giant', 1);
INSERT INTO public.planet VALUES (6, 'Saturn', false, 'Gas Giant', 1);
INSERT INTO public.planet VALUES (7, 'Uranus', false, 'Ice Giant', 1);
INSERT INTO public.planet VALUES (8, 'Neptune', false, 'Ice Giant', 1);
INSERT INTO public.planet VALUES (9, 'Ceres', false, 'Dwarf', 1);
INSERT INTO public.planet VALUES (10, 'Orcus', false, 'Dwarf', 1);
INSERT INTO public.planet VALUES (11, 'Pluto', false, 'Dwarf', 1);
INSERT INTO public.planet VALUES (12, 'Eris', false, 'Dwarf', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'SOL', true, 'Yellow Dwarf', 1);
INSERT INTO public.star VALUES (2, '40 Eridani', true, 'Binary Pair', 1);
INSERT INTO public.star VALUES (3, 'Rigel', true, 'Blue Super Giant', 1);
INSERT INTO public.star VALUES (4, 'Alpha Centauri', true, 'Ternary', 1);
INSERT INTO public.star VALUES (5, 'Tau Ceti', true, 'G-Class', 1);
INSERT INTO public.star VALUES (6, 'Alpheratz', true, 'Binary', 2);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: cool_moon cool_moon_mythological_relevance_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cool_moon
    ADD CONSTRAINT cool_moon_mythological_relevance_key UNIQUE (mythological_relevance);


--
-- Name: cool_moon cool_moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cool_moon
    ADD CONSTRAINT cool_moon_pkey PRIMARY KEY (cool_moon_id);


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

