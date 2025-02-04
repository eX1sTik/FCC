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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    number_of_stars integer,
    brightest_star character varying(50)
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years numeric(10,2),
    galaxy_id integer NOT NULL,
    number integer,
    distance integer
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
    name character varying(30) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years numeric(10,2),
    moon_id integer NOT NULL,
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
    name character varying(30) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years numeric(10,2),
    planet_id integer NOT NULL,
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
    name character varying(30) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years numeric(10,2),
    star_id integer NOT NULL,
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


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
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Orion', 'A prominent winter constellation.', 81, 'Rigel');
INSERT INTO public.constellation VALUES (2, 'Ursa Major', 'A large constellation known for the Big Dipper asterism.', 100, 'Dubhe');
INSERT INTO public.constellation VALUES (3, 'Taurus', 'A constellation containing the Pleiades star cluster.', 150, 'Aldebaran');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 'Our home galaxy, a spiral galaxy.', true, true, 13600.00, 1, NULL, 0);
INSERT INTO public.galaxy VALUES ('Andromeda', 'A large spiral galaxy, the closest major galaxy to us.', false, true, 10000.50, 2, NULL, 2500000);
INSERT INTO public.galaxy VALUES ('Triangulum', 'A small spiral galaxy in the Local Group.', false, true, 5000.75, 3, NULL, 3000000);
INSERT INTO public.galaxy VALUES ('Sombrero Galaxy', 'A lenticular galaxy with a bright nucleus and a dark dust lane.', false, true, 9000.25, 4, NULL, 29000000);
INSERT INTO public.galaxy VALUES ('Whirlpool Galaxy', 'A grand-design spiral galaxy interacting with a smaller galaxy.', false, true, 10000.00, 5, NULL, 31000000);
INSERT INTO public.galaxy VALUES ('Cartwheel Galaxy', 'A lenticular and ring galaxy.', false, true, 6000.00, 6, NULL, 500000000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', 'Earths only natural satellite.', false, true, 4530.00, 1, 3);
INSERT INTO public.moon VALUES ('Phobos', 'The larger moon of Mars.', false, false, 4500.00, 2, 4);
INSERT INTO public.moon VALUES ('Deimos', 'The smaller moon of Mars.', false, false, 4500.00, 3, 4);
INSERT INTO public.moon VALUES ('Io', 'The most volcanically active moon of Jupiter.', false, true, 4500.00, 4, 5);
INSERT INTO public.moon VALUES ('Europa', 'Known for its icy surface and potential subsurface ocean.', false, true, 4500.00, 5, 5);
INSERT INTO public.moon VALUES ('Ganymede', 'The largest moon in the Solar System.', false, true, 4500.00, 6, 5);
INSERT INTO public.moon VALUES ('Callisto', 'The second-largest moon of Jupiter.', false, true, 4500.00, 7, 5);
INSERT INTO public.moon VALUES ('Mimas', 'A small moon of Saturn with a large impact crater.', false, true, 4500.00, 8, 6);
INSERT INTO public.moon VALUES ('Enceladus', 'Known for its icy geysers.', false, true, 4500.00, 9, 6);
INSERT INTO public.moon VALUES ('Tethys', 'An icy moon of Saturn with a large canyon system.', false, true, 4500.00, 10, 6);
INSERT INTO public.moon VALUES ('Dione', 'An icy moon of Saturn with bright streaks on its surface.', false, true, 4500.00, 11, 6);
INSERT INTO public.moon VALUES ('Rhea', 'The second-largest moon of Saturn.', false, true, 4500.00, 12, 6);
INSERT INTO public.moon VALUES ('Titan', 'The largest moon of Saturn, with a thick atmosphere.', false, true, 4500.00, 13, 6);
INSERT INTO public.moon VALUES ('Oberon', 'The outermost major moon of Uranus.', false, true, 4500.00, 14, 7);
INSERT INTO public.moon VALUES ('Titania', 'The largest moon of Uranus.', false, true, 4500.00, 15, 7);
INSERT INTO public.moon VALUES ('Umbriel', 'A dark moon of Uranus with few prominent features.', false, true, 4500.00, 16, 7);
INSERT INTO public.moon VALUES ('Ariel', 'A bright, icy moon of Uranus with a relatively smooth surface.', false, true, 4500.00, 17, 7);
INSERT INTO public.moon VALUES ('Miranda', 'A small moon of Uranus with a heavily cratered surface.', false, true, 4500.00, 18, 7);
INSERT INTO public.moon VALUES ('Triton', 'Neptunes largest moon, with a retrograde orbit.', false, true, 4500.00, 19, 8);
INSERT INTO public.moon VALUES ('Nereid', 'One of Neptune outer moons.', false, true, 4500.00, 20, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mercury', 'Closest planet to the Sun, very hot.', false, true, 4503.00, 1, 1);
INSERT INTO public.planet VALUES ('Venus', 'Extremely hot, dense atmosphere.', false, true, 4503.00, 2, 1);
INSERT INTO public.planet VALUES ('Earth', 'Our home planet, supports life.', true, true, 4543.00, 3, 1);
INSERT INTO public.planet VALUES ('Mars', 'Cold, desert planet, evidence of past water.', false, true, 4503.00, 4, 1);
INSERT INTO public.planet VALUES ('Jupiter', 'Largest planet, gas giant.', false, true, 4603.00, 5, 1);
INSERT INTO public.planet VALUES ('Saturn', 'Gas giant with prominent rings.', false, true, 4503.00, 6, 1);
INSERT INTO public.planet VALUES ('Uranus', 'Ice giant, tilted on its side.', false, true, 4503.00, 7, 1);
INSERT INTO public.planet VALUES ('Neptune', 'Ice giant, very cold and windy.', false, true, 4503.00, 8, 1);
INSERT INTO public.planet VALUES ('Proxima Centauri b', 'Exoplanet orbiting Proxima Centauri.', false, true, 5000.00, 9, 5);
INSERT INTO public.planet VALUES ('Proxima Centauri c', 'Candidate exoplanet orbiting Proxima Centauri.', false, true, 5500.00, 10, 5);
INSERT INTO public.planet VALUES ('Vega b', 'Hypothetical planet orbiting Vega', false, true, 100.00, 11, 6);
INSERT INTO public.planet VALUES ('Vega c', 'Hypothetical planet orbiting Vega', false, true, 150.00, 12, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 'The star at the center of our Solar System.', true, true, 4600.00, 1, 1);
INSERT INTO public.star VALUES ('Sirius', 'The brightest star in the night sky.', false, true, 240.50, 2, 1);
INSERT INTO public.star VALUES ('Alpha Andromedae', 'Brightest star in the constellation Andromeda.', false, true, 60.75, 3, 2);
INSERT INTO public.star VALUES ('Betelgeuse', 'A red supergiant star in the constellation Orion.', false, true, 8.25, 4, 1);
INSERT INTO public.star VALUES ('Proxima Centauri', 'The closest known star to the Sun.', false, true, 4850.00, 5, 1);
INSERT INTO public.star VALUES ('Vega', 'The fifth-brightest star in the night sky.', false, true, 455.00, 6, 1);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 3, true);


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
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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

