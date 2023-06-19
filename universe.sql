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
-- Name: dummy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dummy (
    dummy_id integer NOT NULL,
    name character varying NOT NULL,
    count integer NOT NULL,
    galaxy_order integer NOT NULL,
    distace numeric,
    description text,
    alive boolean,
    planet_id integer
);


ALTER TABLE public.dummy OWNER TO freecodecamp;

--
-- Name: dummy_2; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dummy_2 (
    dummy_2_id integer NOT NULL,
    name character varying NOT NULL,
    count integer NOT NULL,
    galaxy_order integer NOT NULL,
    distace numeric,
    description text,
    alive boolean,
    planet_id integer
);


ALTER TABLE public.dummy_2 OWNER TO freecodecamp;

--
-- Name: dummy_2_dummy_2_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dummy_2_dummy_2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dummy_2_dummy_2_id_seq OWNER TO freecodecamp;

--
-- Name: dummy_2_dummy_2_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dummy_2_dummy_2_id_seq OWNED BY public.dummy_2.dummy_2_id;


--
-- Name: dummy_dummy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dummy_dummy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dummy_dummy_id_seq OWNER TO freecodecamp;

--
-- Name: dummy_dummy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dummy_dummy_id_seq OWNED BY public.dummy.dummy_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    count integer NOT NULL,
    galaxy_order integer NOT NULL,
    distace numeric,
    description text,
    alive boolean
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
    name character varying NOT NULL,
    count integer NOT NULL,
    galaxy_order integer NOT NULL,
    distace numeric,
    description text,
    alive boolean,
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
    name character varying NOT NULL,
    count integer NOT NULL,
    galaxy_order integer NOT NULL,
    distace numeric,
    description text,
    alive boolean,
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
    name character varying NOT NULL,
    count integer NOT NULL,
    galaxy_order integer NOT NULL,
    distace numeric,
    description text,
    alive boolean,
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
-- Name: dummy dummy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy ALTER COLUMN dummy_id SET DEFAULT nextval('public.dummy_dummy_id_seq'::regclass);


--
-- Name: dummy_2 dummy_2_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy_2 ALTER COLUMN dummy_2_id SET DEFAULT nextval('public.dummy_2_dummy_2_id_seq'::regclass);


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
-- Data for Name: dummy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dummy VALUES (1, 'manvi', 1, 1, 222222222222, 'hello my name is manvi', true, 9);
INSERT INTO public.dummy VALUES (2, 'sweeny', 1, 1, 222222222222, 'hello my name is sweeny', true, 7);
INSERT INTO public.dummy VALUES (3, 'amrsh', 1, 1, 222222222222, 'hello my name is amresh', true, 6);


--
-- Data for Name: dummy_2; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dummy_2 VALUES (1, 'manvi', 1, 1, 222222222222, 'hello my name is manvi', true, 9);
INSERT INTO public.dummy_2 VALUES (2, 'sweeny', 1, 1, 222222222222, 'hello my name is sweeny', true, 7);
INSERT INTO public.dummy_2 VALUES (3, 'amrsh', 1, 1, 222222222222, 'hello my name is amresh', true, 6);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'abhi', 1, 1, 222222222222, 'hello my name is abhinav', true);
INSERT INTO public.galaxy VALUES (2, 'ankur', 1, 1, 222222222222, 'hello my name is ankur', true);
INSERT INTO public.galaxy VALUES (3, 'ankit', 1, 1, 222222222222, 'hello my name is akit', true);
INSERT INTO public.galaxy VALUES (4, 'arjun', 1, 1, 222222222222, 'hello my name is arjun', true);
INSERT INTO public.galaxy VALUES (5, 'amresh', 1, 1, 222222222222, 'hello my name is amreesh', true);
INSERT INTO public.galaxy VALUES (6, 'sweeny', 1, 1, 222222222222, 'hello my name is sweeny', true);
INSERT INTO public.galaxy VALUES (7, 'arnika', 1, 1, 222222222222, 'hello my name is arnika', true);
INSERT INTO public.galaxy VALUES (8, 'manvia', 1, 1, 222222222222, 'hello my name is manvi', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'abhi', 1, 1, 222222222222, 'hello my name is abhi', true, 1);
INSERT INTO public.moon VALUES (2, 'aankur', 1, 1, 222222222222, 'hello my name is ankur', true, 2);
INSERT INTO public.moon VALUES (3, 'ankit', 1, 1, 222222222222, 'hello my name is ankir', true, 3);
INSERT INTO public.moon VALUES (4, 'anju', 1, 1, 222222222222, 'hello my name is arjun', true, 4);
INSERT INTO public.moon VALUES (6, 'amrsh', 1, 1, 222222222222, 'hello my name is amresh', true, 6);
INSERT INTO public.moon VALUES (7, 'sweeny', 1, 1, 222222222222, 'hello my name is sweeny', true, 7);
INSERT INTO public.moon VALUES (8, 'arika', 1, 1, 222222222222, 'hello my name isarnika', true, 8);
INSERT INTO public.moon VALUES (9, 'manvi', 1, 1, 222222222222, 'hello my name is manvi', true, 9);
INSERT INTO public.moon VALUES (10, 'abhinav', 1, 1, 222222222222, 'hello my name is abhi', true, 1);
INSERT INTO public.moon VALUES (11, 'abhinav1', 1, 1, 222222222222, 'hello my name is abhi', true, 1);
INSERT INTO public.moon VALUES (12, 'abhinav2', 1, 1, 222222222222, 'hello my name is abhi', true, 1);
INSERT INTO public.moon VALUES (13, 'abhinav3', 1, 1, 222222222222, 'hello my name is abhi', true, 1);
INSERT INTO public.moon VALUES (14, 'abhinav4', 1, 1, 222222222222, 'hello my name is abhi', true, 1);
INSERT INTO public.moon VALUES (15, 'abhinav5', 1, 1, 222222222222, 'hello my name is abhi', true, 1);
INSERT INTO public.moon VALUES (16, 'abhinav6', 1, 1, 222222222222, 'hello my name is abhi', true, 1);
INSERT INTO public.moon VALUES (17, 'abhinav7', 1, 1, 222222222222, 'hello my name is abhi', true, 1);
INSERT INTO public.moon VALUES (18, 'abhinav8', 1, 1, 222222222222, 'hello my name is abhi', true, 1);
INSERT INTO public.moon VALUES (19, 'abhinav9', 1, 1, 222222222222, 'hello my name is abhi', true, 1);
INSERT INTO public.moon VALUES (20, 'abhinav10', 1, 1, 222222222222, 'hello my name is abhi', true, 1);
INSERT INTO public.moon VALUES (21, 'abhinav11', 1, 1, 222222222222, 'hello my name is abhi', true, 1);
INSERT INTO public.moon VALUES (22, 'abhinav12', 1, 1, 222222222222, 'hello my name is abhi', true, 1);
INSERT INTO public.moon VALUES (23, 'abhinav13', 1, 1, 222222222222, 'hello my name is abhi', true, 1);
INSERT INTO public.moon VALUES (24, 'abhinav14', 1, 1, 222222222222, 'hello my name is abhi', true, 1);
INSERT INTO public.moon VALUES (25, 'abhinav15', 1, 1, 222222222222, 'hello my name is abhi', true, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'aabhi', 1, 1, 222222222222, 'hello my name is abhi', true, 8);
INSERT INTO public.planet VALUES (2, 'ankur', 1, 1, 222222222222, 'hello my name is ankur', true, 7);
INSERT INTO public.planet VALUES (3, 'ankit', 1, 1, 222222222222, 'hello my name is ankitr', true, 6);
INSERT INTO public.planet VALUES (4, 'arjun', 1, 1, 222222222222, 'hello my name isargju', true, 5);
INSERT INTO public.planet VALUES (6, 'amresh', 1, 1, 222222222222, 'hello my name is amresh', true, 4);
INSERT INTO public.planet VALUES (7, 'sweeny', 1, 1, 222222222222, 'hello my name is sweeny', true, 3);
INSERT INTO public.planet VALUES (8, 'arnika', 1, 1, 222222222222, 'hello my name is arnka', true, 2);
INSERT INTO public.planet VALUES (9, 'manvi', 1, 1, 222222222222, 'hello my name is manvi', true, 1);
INSERT INTO public.planet VALUES (10, 'aanya', 1, 1, 222222222222, 'hello my name is anvi', true, 1);
INSERT INTO public.planet VALUES (11, 'vianv', 1, 1, 222222222222, 'hello my name is  vivan', true, 2);
INSERT INTO public.planet VALUES (12, 'aman', 1, 1, 222222222222, 'hello my name is  aman', true, 4);
INSERT INTO public.planet VALUES (13, 'neev', 1, 1, 222222222222, 'hello my name is neev', true, 4);
INSERT INTO public.planet VALUES (14, 'vaansh', 1, 1, 222222222222, 'hello my name is vadansh', true, 7);
INSERT INTO public.planet VALUES (15, 'navya', 1, 1, 222222222222, 'hello my name is navya', true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'manvia', 1, 1, 222222222222, 'hello my name is manvi', true, 8);
INSERT INTO public.star VALUES (2, 'arika', 1, 1, 222222222222, 'hello my name is arnika', true, 7);
INSERT INTO public.star VALUES (3, 'sweeny', 1, 1, 222222222222, 'hello my name is sweeny', true, 6);
INSERT INTO public.star VALUES (4, 'amresh', 1, 1, 222222222222, 'hello my name is amresh', true, 5);
INSERT INTO public.star VALUES (5, 'rjun', 1, 1, 222222222222, 'hello my name is arjun', true, 4);
INSERT INTO public.star VALUES (6, 'ankit', 1, 1, 222222222222, 'hello my name is ankir', true, 3);
INSERT INTO public.star VALUES (7, 'ankur', 1, 1, 222222222222, 'hello my name is ankiur', true, 2);
INSERT INTO public.star VALUES (8, 'aabhi', 1, 1, 222222222222, 'hello my name is abhi', true, 1);


--
-- Name: dummy_2_dummy_2_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dummy_2_dummy_2_id_seq', 3, true);


--
-- Name: dummy_dummy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dummy_dummy_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 25, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: dummy_2 dummy_2_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy_2
    ADD CONSTRAINT dummy_2_name_key UNIQUE (name);


--
-- Name: dummy_2 dummy_2_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy_2
    ADD CONSTRAINT dummy_2_pkey PRIMARY KEY (dummy_2_id);


--
-- Name: dummy dummy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy
    ADD CONSTRAINT dummy_name_key UNIQUE (name);


--
-- Name: dummy dummy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy
    ADD CONSTRAINT dummy_pkey PRIMARY KEY (dummy_id);


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
-- Name: dummy_2 dummy_2_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy_2
    ADD CONSTRAINT dummy_2_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: dummy dummy_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy
    ADD CONSTRAINT dummy_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

