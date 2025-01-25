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
-- Name: celestial; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.celestial (
    celestial_id integer NOT NULL,
    name character varying(50) NOT NULL,
    placeholdercelestcol text
);


ALTER TABLE public.celestial OWNER TO freecodecamp;

--
-- Name: celestial_celestial_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.celestial_celestial_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.celestial_celestial_id_seq OWNER TO freecodecamp;

--
-- Name: celestial_celestial_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.celestial_celestial_id_seq OWNED BY public.celestial.celestial_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    has_life boolean,
    galaxyholder text,
    galaxyholder1 text,
    galaxyholder2 text,
    id integer NOT NULL
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

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    mooncolumn4 character varying(50),
    mooncolumn5 character varying(50),
    mooncolumn6 character varying(50),
    id integer NOT NULL
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

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.id;


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
    name character varying(50) NOT NULL,
    description text,
    placeholderint integer,
    placeholderint1 integer,
    placeholdernum numeric,
    placeholderbool boolean,
    placeholderbool1 boolean,
    id integer NOT NULL
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

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.id;


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
    description text,
    starholder text,
    starholder1 text,
    starholder2 text,
    id integer NOT NULL
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

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.id;


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
-- Name: celestial celestial_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial ALTER COLUMN celestial_id SET DEFAULT nextval('public.celestial_celestial_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: celestial; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.celestial VALUES (1, 'celestprow1', 'celestprowdesc1');
INSERT INTO public.celestial VALUES (2, 'celestprow2', 'celestprowdesc2');
INSERT INTO public.celestial VALUES (3, 'celestprow3', 'celestprowdesc3');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The Galaxy containing Earth.', true, NULL, NULL, NULL, 1);
INSERT INTO public.galaxy VALUES (3, 'ESO 383-76', 'The largest observable galaxy.', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.galaxy VALUES (4, 'Ursa Major III', 'The smallest known galaxy.', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.galaxy VALUES (5, 'placeholdern5', 'placeholderd5', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.galaxy VALUES (6, 'placeholdern6', 'placeholderd6', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.galaxy VALUES (2, ' galaxytestname', NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.galaxy VALUES (7, ' ', ' ', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.galaxy VALUES (8, 'galaxy8', 'galaxy8', NULL, NULL, NULL, NULL, 8);
INSERT INTO public.galaxy VALUES (9, 'galaxy9', 'galaxydesc9', NULL, NULL, NULL, NULL, 9);
INSERT INTO public.galaxy VALUES (10, 'galaxy10', 'galaxydesc10', NULL, NULL, NULL, NULL, 10);
INSERT INTO public.galaxy VALUES (11, 'galaxy11', 'galaxydesc11', NULL, NULL, NULL, NULL, 11);
INSERT INTO public.galaxy VALUES (12, 'galaxy12', 'galaxydesc12', NULL, NULL, NULL, NULL, 12);
INSERT INTO public.galaxy VALUES (13, 'galaxy13', 'galaxydesc13', NULL, NULL, NULL, NULL, 13);
INSERT INTO public.galaxy VALUES (14, 'galaxy14', 'galaxydesc14', NULL, NULL, NULL, NULL, 14);
INSERT INTO public.galaxy VALUES (15, 'galaxy15', 'galaxydesc15', NULL, NULL, NULL, NULL, 15);
INSERT INTO public.galaxy VALUES (16, 'galaxy16', 'galaxydesc16', NULL, NULL, NULL, NULL, 16);
INSERT INTO public.galaxy VALUES (17, 'galaxy17', 'galaxydesc17', NULL, NULL, NULL, NULL, 17);
INSERT INTO public.galaxy VALUES (18, 'galaxy18', 'galaxydesc18', NULL, NULL, NULL, NULL, 18);
INSERT INTO public.galaxy VALUES (19, 'galaxy19', 'galaxydesc19', NULL, NULL, NULL, NULL, 19);
INSERT INTO public.galaxy VALUES (20, 'galaxy20', 'galaxydesc20', NULL, NULL, NULL, NULL, 20);
INSERT INTO public.galaxy VALUES (21, 'galaxy21', 'galaxydesc21', NULL, NULL, NULL, NULL, 21);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moonholder', 'moondesc', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'moonholder1', 'moondesc1', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (3, 'moonholder2', 'moondesc2', NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (4, 'moonholder3', 'moondesc3', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (5, 'moonholder4', 'moondesc4', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (6, 'moonholder5', 'moondesc5', NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (7, 'moonholder6', 'moondesc6', NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (8, 'moonholder7', 'moondesc7', NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (9, 'moonholder8', 'moondesc8', NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (10, 'moonholder9', 'moondesc9', NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES (11, 'moonholder10', 'moondesc10', NULL, NULL, NULL, 11);
INSERT INTO public.moon VALUES (12, 'moonholder11', 'moondesc11', NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES (13, 'moonholder12', 'moondesc12', NULL, NULL, NULL, 13);
INSERT INTO public.moon VALUES (14, 'moonholder13', 'moondesc13', NULL, NULL, NULL, 14);
INSERT INTO public.moon VALUES (15, 'moonholder14', 'moondesc14', NULL, NULL, NULL, 15);
INSERT INTO public.moon VALUES (16, 'moonholder15', 'moondesc15', NULL, NULL, NULL, 16);
INSERT INTO public.moon VALUES (17, 'moonholder16', 'moondesc16', NULL, NULL, NULL, 17);
INSERT INTO public.moon VALUES (18, 'moonholder17', 'moondesc17', NULL, NULL, NULL, 18);
INSERT INTO public.moon VALUES (19, 'moonholder18', 'moondesc18', NULL, NULL, NULL, 19);
INSERT INTO public.moon VALUES (20, 'moonholder19', 'moondesc19', NULL, NULL, NULL, 20);
INSERT INTO public.moon VALUES (21, 'moonholder20', 'moondesc20', NULL, NULL, NULL, 21);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planetname', 'planetdesc', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'planetname2', 'planetdesc2', NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (3, 'planetname3', 'planetdesc3', NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (4, 'planetname4', 'planetdesc4', NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (5, 'planetname5', 'planetdesc5', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (6, 'planetname6', 'planetdesc6', NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (7, 'planetname7', 'planetdesc7', NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES (8, 'planetname8', 'planetdesc8', NULL, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.planet VALUES (9, 'planetname9', 'planetdesc9', NULL, NULL, NULL, NULL, NULL, 9);
INSERT INTO public.planet VALUES (10, 'planetname10', 'planetdesc10', NULL, NULL, NULL, NULL, NULL, 10);
INSERT INTO public.planet VALUES (11, 'planetname11', 'planetdesc11', NULL, NULL, NULL, NULL, NULL, 11);
INSERT INTO public.planet VALUES (12, 'planetname12', 'planetdesc12', NULL, NULL, NULL, NULL, NULL, 12);
INSERT INTO public.planet VALUES (13, 'planetname13', 'planetdesc13', NULL, NULL, NULL, NULL, NULL, 13);
INSERT INTO public.planet VALUES (14, 'planetname14', 'planetdesc14', NULL, NULL, NULL, NULL, NULL, 14);
INSERT INTO public.planet VALUES (15, 'planetname15', 'planetdesc15', NULL, NULL, NULL, NULL, NULL, 15);
INSERT INTO public.planet VALUES (16, 'planetname16', 'planetdesc16', NULL, NULL, NULL, NULL, NULL, 16);
INSERT INTO public.planet VALUES (17, 'planetname17', 'planetdesc17', NULL, NULL, NULL, NULL, NULL, 17);
INSERT INTO public.planet VALUES (18, 'planetname18', 'planetdesc18', NULL, NULL, NULL, NULL, NULL, 18);
INSERT INTO public.planet VALUES (19, 'planetname19', 'planetdesc19', NULL, NULL, NULL, NULL, NULL, 19);
INSERT INTO public.planet VALUES (20, 'planetname20', 'planetdesc20', NULL, NULL, NULL, NULL, NULL, 20);
INSERT INTO public.planet VALUES (21, 'planetname21', 'planetdesc21', NULL, NULL, NULL, NULL, NULL, 21);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'RSGC1-F01', 'RSGC1-F01 is a red supergiant located in RSGC1. The radius was calculated to be around 1,450-1,530 times that of the Sun (the radius is calculated by applying the Stefan-Boltzmann law), making it one of the largest stars discovered so far.', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'VY Canis Majoris', 'An extreme oxygen-rich red hypergiant that has experienced two dimming periods in the 20th century where the star became dimmer by up to 2.5 magnitudes.', NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (3, 'Sun', 'Star containing Earth.', NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES (4, 'V838 Monocerotis', 'A cataclysmic binary star in the constellation Monoceros about 19,000 light years (6 kpc) from the Sun.', NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (5, 'RW Cephei', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.star VALUES (6, 'UY Scuti', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.star VALUES (8, 'star7', 'desc7', NULL, NULL, NULL, 7);
INSERT INTO public.star VALUES (9, 'star8', 'desc8', NULL, NULL, NULL, 8);
INSERT INTO public.star VALUES (10, 'star9', 'desc9', NULL, NULL, NULL, 9);
INSERT INTO public.star VALUES (11, 'star10', 'desc10', NULL, NULL, NULL, 10);
INSERT INTO public.star VALUES (12, 'star11', 'desc11', NULL, NULL, NULL, 11);
INSERT INTO public.star VALUES (13, 'star12', 'desc12', NULL, NULL, NULL, 12);
INSERT INTO public.star VALUES (14, 'star13', 'desc13', NULL, NULL, NULL, 13);
INSERT INTO public.star VALUES (15, 'star14', 'desc14', NULL, NULL, NULL, 14);
INSERT INTO public.star VALUES (16, 'star15', 'desc15', NULL, NULL, NULL, 15);
INSERT INTO public.star VALUES (17, 'star16', 'desc16', NULL, NULL, NULL, 16);
INSERT INTO public.star VALUES (18, 'star17', 'desc17', NULL, NULL, NULL, 17);
INSERT INTO public.star VALUES (19, 'star18', 'desc18', NULL, NULL, NULL, 18);
INSERT INTO public.star VALUES (20, 'star19', 'desc19', NULL, NULL, NULL, 19);
INSERT INTO public.star VALUES (21, 'star20', 'desc20', NULL, NULL, NULL, 20);
INSERT INTO public.star VALUES (22, 'star21', 'desc21', NULL, NULL, NULL, 21);


--
-- Name: celestial_celestial_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.celestial_celestial_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 21, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 21, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 21, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 21, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 21, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 22, true);


--
-- Name: celestial celestial_celestial_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial
    ADD CONSTRAINT celestial_celestial_id_key UNIQUE (celestial_id);


--
-- Name: celestial celestial_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial
    ADD CONSTRAINT celestial_pkey PRIMARY KEY (celestial_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_key UNIQUE (id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_key UNIQUE (id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_key UNIQUE (id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_key UNIQUE (id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT id FOREIGN KEY (id) REFERENCES public.planet(id);


--
-- Name: planet id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT id FOREIGN KEY (id) REFERENCES public.star(id);


--
-- Name: star id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT id FOREIGN KEY (id) REFERENCES public.galaxy(id);


--
-- PostgreSQL database dump complete
--

