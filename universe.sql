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
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric NOT NULL,
    unique_number integer NOT NULL,
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
    moon_type character varying(50),
    unique_id integer,
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
    name character varying(50) NOT NULL,
    star_id integer,
    planet_type character varying(50),
    unique_id integer
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
    galaxy_id integer NOT NULL,
    no_data character varying(50),
    unique_id integer
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
-- Name: test; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.test (
    name character varying(50) NOT NULL,
    test_id integer NOT NULL,
    unique_id integer
);


ALTER TABLE public.test OWNER TO freecodecamp;

--
-- Name: test_test_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.test_test_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_test_id_seq OWNER TO freecodecamp;

--
-- Name: test_test_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.test_test_id_seq OWNED BY public.test.test_id;


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
-- Name: test test_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test ALTER COLUMN test_id SET DEFAULT nextval('public.test_test_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 1300, 2.537, 123456, 'Spiral galaxy nearest to Milky Way', false, true);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 13000, 0, 789012, 'Our home galaxy', true, true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 500, 3.073, 345678, 'Spiral galaxy in Local Group', false, true);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 9000, 28.07, 901234, 'Unusual appearance resembling a sombrero hat', false, true);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 600, 31.29, 567890, 'Classic spiral galaxy with visible spiral arms', false, true);
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 6500, 53.5, 234567, 'Home to the first image of a black hole', false, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (21, 'Luna', 'Natural Satellite', 12345, 23);
INSERT INTO public.moon VALUES (22, 'Phobos', 'Irregular', 23456, 24);
INSERT INTO public.moon VALUES (23, 'Deimos', 'Irregular', 34567, 25);
INSERT INTO public.moon VALUES (24, 'Io', 'Volcanic', 45678, 26);
INSERT INTO public.moon VALUES (25, 'Europa', 'Ice-covered', 56789, 27);
INSERT INTO public.moon VALUES (26, 'Ganymede', 'Ice-covered', 67890, 28);
INSERT INTO public.moon VALUES (27, 'Callisto', 'Ice-covered', 78901, 29);
INSERT INTO public.moon VALUES (28, 'Titan', 'Thick Atmosphere', 89012, 30);
INSERT INTO public.moon VALUES (29, 'Enceladus', 'Cryovolcanic', 90123, 31);
INSERT INTO public.moon VALUES (30, 'Mimas', 'Cratered', 11223, 32);
INSERT INTO public.moon VALUES (31, 'Triton', 'Retrograde Orbit', 22334, 33);
INSERT INTO public.moon VALUES (32, 'Charon', 'Dwarf Planet Moon', 33445, 34);
INSERT INTO public.moon VALUES (33, 'Phoebe', 'Irregular', 44556, 23);
INSERT INTO public.moon VALUES (34, 'Hyperion', 'Irregular', 55667, 24);
INSERT INTO public.moon VALUES (35, 'Rhea', 'Ice-covered', 66778, 25);
INSERT INTO public.moon VALUES (36, 'Dione', 'Cratered', 77889, 26);
INSERT INTO public.moon VALUES (37, 'Ariel', 'Ice-covered', 88990, 27);
INSERT INTO public.moon VALUES (38, 'Umbriel', 'Ice-covered', 99001, 28);
INSERT INTO public.moon VALUES (39, 'Miranda', 'Irregular', 10012, 29);
INSERT INTO public.moon VALUES (40, 'Iapetus', 'Two-toned', 11123, 30);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (23, 'Earth', 2, 'Terrestrial', 123456);
INSERT INTO public.planet VALUES (24, 'Mars', 3, 'Terrestrial', 234567);
INSERT INTO public.planet VALUES (25, 'Jupiter', 5, 'Gas Giant', 345678);
INSERT INTO public.planet VALUES (26, 'Venus', 3, 'Terrestrial', 456789);
INSERT INTO public.planet VALUES (27, 'Saturn', 6, 'Gas Giant', 567890);
INSERT INTO public.planet VALUES (28, 'Mercury', 4, 'Terrestrial', 678901);
INSERT INTO public.planet VALUES (29, 'Neptune', 7, 'Ice Giant', 789012);
INSERT INTO public.planet VALUES (30, 'Uranus', 2, 'Ice Giant', 890123);
INSERT INTO public.planet VALUES (31, 'Pluto', 4, 'Dwarf', 901234);
INSERT INTO public.planet VALUES (32, 'Kepler-186f', 3, 'Exoplanet', 123);
INSERT INTO public.planet VALUES (33, 'HD 209458 b', 6, 'Exoplanet', 456);
INSERT INTO public.planet VALUES (34, 'TRAPPIST-1d', 7, 'Exoplanet', 567);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Sun', 2, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 1, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Alpha Centauri A', 2, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Sirius', 5, NULL, NULL);
INSERT INTO public.star VALUES (7, 'Antares', 4, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 6, NULL, NULL);


--
-- Data for Name: test; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.test VALUES ('Record 1', 1, 101);
INSERT INTO public.test VALUES ('Record 2', 2, 102);
INSERT INTO public.test VALUES ('Record 3', 3, 103);
INSERT INTO public.test VALUES ('Record 4', 4, 104);
INSERT INTO public.test VALUES ('Record 5', 5, 105);
INSERT INTO public.test VALUES ('Record 6', 6, 106);
INSERT INTO public.test VALUES ('Record 7', 7, 107);
INSERT INTO public.test VALUES ('Record 8', 8, 108);
INSERT INTO public.test VALUES ('Record 9', 9, 109);
INSERT INTO public.test VALUES ('Record 10', 10, 110);
INSERT INTO public.test VALUES ('Record 11', 11, 111);
INSERT INTO public.test VALUES ('Record 12', 12, 112);
INSERT INTO public.test VALUES ('Record 13', 13, 113);
INSERT INTO public.test VALUES ('Record 14', 14, 114);
INSERT INTO public.test VALUES ('Record 15', 15, 115);
INSERT INTO public.test VALUES ('Record 16', 16, 116);
INSERT INTO public.test VALUES ('Record 17', 17, 117);
INSERT INTO public.test VALUES ('Record 18', 18, 118);
INSERT INTO public.test VALUES ('Record 19', 19, 119);
INSERT INTO public.test VALUES ('Record 20', 20, 120);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 40, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 34, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: test_test_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.test_test_id_seq', 20, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique_number_key UNIQUE (unique_number);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique_id_key UNIQUE (unique_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique_id_key UNIQUE (unique_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique_id_key UNIQUE (unique_id);


--
-- Name: test test_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_pkey PRIMARY KEY (test_id);


--
-- Name: test test_unique_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_unique_id_key UNIQUE (unique_id);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

