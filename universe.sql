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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    distance_light_years numeric,
    size numeric,
    has_life boolean,
    galaxy_center boolean
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    galaxy_types character varying(20),
    description text,
    diameter_in_light_years integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    planet_id integer,
    radius_in_km integer,
    parent character varying(64)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    planet_types character varying(20),
    age_in_millions_of_years integer,
    star_id integer,
    diameter_in_km integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    galaxy_id integer,
    distance_from_earth numeric,
    constellation character varying(64)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'Gaia-BH3', 1, 2000, 33, NULL, NULL);
INSERT INTO public.black_hole VALUES (2, 'Sagittarius A*', 1, 26000, 4100000, NULL, NULL);
INSERT INTO public.black_hole VALUES (3, 'NGC 224', 4, 2537000, 100000000, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Canis Major Dwarf', 'Irregular', 'Satellite of Milky Way (accretion by Milky Way)', 5000);
INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Barred spiral galaxy', 'Home galaxy of Earth. Barred spiral galaxy.', 87400);
INSERT INTO public.galaxy VALUES (3, 'Sagittarius Dwarf Spheroidal Galaxy', 'dSph/E7', 'Satellite of Milky Way (partial accretion by Milky Way)', 10000);
INSERT INTO public.galaxy VALUES (5, 'Antennae Galaxies', 'SB(s)m/SA(s)m', 'Two colliding galaxies', 500000);
INSERT INTO public.galaxy VALUES (4, 'Andromeda Galaxy', 'barred spiral galaxy', 'Closest to Milky Way and will collide with it in 4.5 billion years', 152000);
INSERT INTO public.galaxy VALUES (6, 'Backwards Galaxy', 'SA(r)ab', 'It appears to rotate backwards', 100000);
INSERT INTO public.galaxy VALUES (7, 'Large Magellanic Cloud', 'Irregular', 'The Large Magellanic Cloud (LMC) is a dwarf galaxy and satellite galaxy of the Milky Way', 14000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 3, 1738, 'Earth');
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 11, 'Mars');
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 6, 'Mars');
INSERT INTO public.moon VALUES (4, 'Io', 5, 1821, 'Jupiter');
INSERT INTO public.moon VALUES (5, 'Europa', 5, 1560, 'Jupiter');
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, 2634, 'Jupiter');
INSERT INTO public.moon VALUES (7, 'Callisto', 5, 2410, 'Jupiter');
INSERT INTO public.moon VALUES (8, 'Amalthea', 5, 84, 'Jupiter');
INSERT INTO public.moon VALUES (9, 'Himalia', 5, 70, 'Jupiter');
INSERT INTO public.moon VALUES (10, 'Elara', 5, 43, 'Jupiter');
INSERT INTO public.moon VALUES (11, 'Mimas', 6, 198, 'Saturn');
INSERT INTO public.moon VALUES (12, 'Enceladus', 6, 252, 'Saturn');
INSERT INTO public.moon VALUES (13, 'Tethys', 6, 533, 'Saturn');
INSERT INTO public.moon VALUES (14, 'Dione', 6, 561, 'Saturn');
INSERT INTO public.moon VALUES (15, 'Rhea', 6, 763, 'Saturn');
INSERT INTO public.moon VALUES (16, 'Titan', 6, 2574, 'Saturn');
INSERT INTO public.moon VALUES (17, 'Ariel', 7, 578, 'Uranus');
INSERT INTO public.moon VALUES (18, 'Umbriel', 7, 584, 'Uranus');
INSERT INTO public.moon VALUES (19, 'Titania', 7, 789, 'Uranus');
INSERT INTO public.moon VALUES (20, 'Triton', 8, 1353, 'Neptune');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'Earth', 'Terrestrial', 4543, 1, 12742);
INSERT INTO public.planet VALUES (1, 'Mercury', 'terrestrial', 4503, 1, 4880);
INSERT INTO public.planet VALUES (2, 'Venus', 'terrestrial', 4503, 1, 12104);
INSERT INTO public.planet VALUES (4, 'Mars', 'terrestrial', 4503, 1, 6779);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Gas Giant', 4503, 1, 139820);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Gas Giant', 4503, 1, 116460);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Ice Giant', 4503, 1, 50724);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Ice Giant', 4503, 1, 49244);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', 'Super Earth', 4850, 7, 13105);
INSERT INTO public.planet VALUES (10, 'Kepler-90b', 'Super Earth', 2000, 8, 16692);
INSERT INTO public.planet VALUES (11, 'Kepler-90c', 'Super Earth', 2000, 8, 15035);
INSERT INTO public.planet VALUES (12, 'Kepler-90d', 'Ice Giant', 2000, 8, 36697);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 1, 0.0000114155, 'NA');
INSERT INTO public.star VALUES (2, 'UY Scuti', 1, 9500, 'Scutum');
INSERT INTO public.star VALUES (3, 'Sirius', 1, 8.6, 'Canis Major');
INSERT INTO public.star VALUES (4, 'M31-V1', 4, 2537000, 'Andromeda');
INSERT INTO public.star VALUES (5, 'RSGC1 F01', 1, 23000, 'Scutum');
INSERT INTO public.star VALUES (6, 'WOH G64', 7, 163000, 'Dorado');
INSERT INTO public.star VALUES (7, 'Proxima Centauri', 1, 4.2465, 'Centaurus');
INSERT INTO public.star VALUES (8, 'Kepler-90', 1, 2790, 'Draco');


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


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
-- Name: black_hole unq_black_hole_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT unq_black_hole_id UNIQUE (black_hole_id);


--
-- Name: galaxy unq_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unq_galaxy_id UNIQUE (galaxy_id);


--
-- Name: moon unq_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unq_moon_id UNIQUE (moon_id);


--
-- Name: planet unq_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unq_planet_id UNIQUE (planet_id);


--
-- Name: star unq_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unq_star_id UNIQUE (star_id);


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

