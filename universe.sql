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
-- Name: continents; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.continents (
    name character varying(30),
    continents_id integer NOT NULL,
    planet_id integer NOT NULL,
    extra_column integer NOT NULL
);


ALTER TABLE public.continents OWNER TO freecodecamp;

--
-- Name: continents_continents_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.continents_continents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.continents_continents_id_seq OWNER TO freecodecamp;

--
-- Name: continents_continents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.continents_continents_id_seq OWNED BY public.continents.continents_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    numberofplanetes integer,
    unique_col_galaxy integer NOT NULL,
    extra_col integer NOT NULL
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
    name character varying(30),
    description text NOT NULL,
    planet_id integer,
    size integer NOT NULL,
    extra_column integer NOT NULL
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
    name character varying(30),
    numberofpeople integer,
    liveable boolean,
    haswater boolean,
    star_id integer NOT NULL,
    extra_column integer NOT NULL
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    length numeric,
    galaxy_id integer NOT NULL,
    extra_column integer NOT NULL
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
-- Name: continents continents_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continents ALTER COLUMN continents_id SET DEFAULT nextval('public.continents_continents_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: continents; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.continents VALUES ('America', 1, 1, 1);
INSERT INTO public.continents VALUES ('Europa', 2, 1, 2);
INSERT INTO public.continents VALUES ('Asia', 3, 1, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 5, 1, 1);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 6, 2, 2);
INSERT INTO public.galaxy VALUES (3, 'Whirlpool', 7, 3, 3);
INSERT INTO public.galaxy VALUES (4, 'Sculptor Dwarf', 8, 4, 4);
INSERT INTO public.galaxy VALUES (5, 'Ursa Minor', 9, 5, 5);
INSERT INTO public.galaxy VALUES (6, 'Sagitarius', 10, 6, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'MOON', 'Lovely', 1, 0, 1);
INSERT INTO public.moon VALUES (2, 'Moon1', 'idk1', 1, 300, 2);
INSERT INTO public.moon VALUES (3, 'Moon2', 'idk2', 3, 500, 3);
INSERT INTO public.moon VALUES (4, 'Moon3', 'idk3', 2, 400, 4);
INSERT INTO public.moon VALUES (5, 'Moon4', 'idk4', 4, 700, 5);
INSERT INTO public.moon VALUES (6, 'Luna', 'Earth''s only natural satellite', 1, 3474, 6);
INSERT INTO public.moon VALUES (7, 'Phobos', 'Largest moon of Mars, with a fear-inducing orbit', 2, 22, 7);
INSERT INTO public.moon VALUES (8, 'Deimos', 'Smaller moon of Mars, named after dread', 2, 12, 8);
INSERT INTO public.moon VALUES (9, 'Io', 'Most volcanically active body in the solar system', 3, 3643, 9);
INSERT INTO public.moon VALUES (10, 'Europa', 'Icy surface with a subsurface ocean', 3, 3122, 10);
INSERT INTO public.moon VALUES (11, 'Ganymede', 'Largest moon in the solar system', 3, 5268, 11);
INSERT INTO public.moon VALUES (12, 'Callisto', 'A heavily cratered and ancient moon', 3, 4821, 12);
INSERT INTO public.moon VALUES (13, 'Titan', 'Largest moon of Saturn, has a thick atmosphere', 4, 5150, 13);
INSERT INTO public.moon VALUES (14, 'Rhea', 'Second-largest moon of Saturn, icy body', 4, 1528, 14);
INSERT INTO public.moon VALUES (15, 'Iapetus', 'Moon of Saturn known for its two-faced coloration', 4, 1469, 15);
INSERT INTO public.moon VALUES (16, 'Oberon', 'Largest moon of Uranus, heavily cratered', 5, 1523, 16);
INSERT INTO public.moon VALUES (17, 'Titania', 'Uranus''s moon with canyons and scarps', 5, 1577, 17);
INSERT INTO public.moon VALUES (18, 'Triton', 'Largest moon of Neptune, orbits in a retrograde direction', 6, 2707, 18);
INSERT INTO public.moon VALUES (19, 'Charon', 'Largest moon of Pluto, shares a mutual tidal lock', 7, 1212, 19);
INSERT INTO public.moon VALUES (20, 'Nix', 'Small natural satellite of Pluto', 7, 50, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 100, true, true, 1, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 3, false, true, 2, 2);
INSERT INTO public.planet VALUES (3, 'Saturn', 5, false, false, 3, 3);
INSERT INTO public.planet VALUES (4, 'Pluto', 20, false, false, 4, 4);
INSERT INTO public.planet VALUES (5, 'Venus', 30, false, false, 5, 5);
INSERT INTO public.planet VALUES (6, 'Exoplanet A', 0, false, false, 1, 6);
INSERT INTO public.planet VALUES (7, 'Exoplanet B', 500, true, true, 2, 7);
INSERT INTO public.planet VALUES (8, 'Exoplanet C', 1000, true, true, 2, 8);
INSERT INTO public.planet VALUES (9, 'Zypheria', 0, false, true, 3, 9);
INSERT INTO public.planet VALUES (10, 'Aqualina', 250, true, true, 4, 10);
INSERT INTO public.planet VALUES (11, 'Terrafirma', 750, true, true, 5, 11);
INSERT INTO public.planet VALUES (12, 'Solitude', 0, false, false, 6, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpha', 10, 1, 1);
INSERT INTO public.star VALUES (2, 'Vega', 200, 1, 2);
INSERT INTO public.star VALUES (3, 'Rigel', 300, 2, 3);
INSERT INTO public.star VALUES (4, 'M31', 400, 1, 4);
INSERT INTO public.star VALUES (5, 'M32', 500, 2, 5);
INSERT INTO public.star VALUES (6, 'M33', 600, 2, 6);


--
-- Name: continents_continents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.continents_continents_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: continents continents_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continents
    ADD CONSTRAINT continents_pkey PRIMARY KEY (continents_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_col_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_col_galaxy UNIQUE (unique_col_galaxy);


--
-- Name: galaxy unique_extra_col_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_extra_col_galaxy UNIQUE (unique_col_galaxy);


--
-- Name: moon unique_extra_column; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_extra_column UNIQUE (extra_column);


--
-- Name: continents unique_extra_column_continents; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continents
    ADD CONSTRAINT unique_extra_column_continents UNIQUE (extra_column);


--
-- Name: planet unique_extra_column_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_extra_column_planet UNIQUE (extra_column);


--
-- Name: star unique_extra_column_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_extra_column_star UNIQUE (extra_column);


--
-- Name: continents fk_continent_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continents
    ADD CONSTRAINT fk_continent_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

