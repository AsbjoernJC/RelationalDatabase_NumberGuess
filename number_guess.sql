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

DROP DATABASE salon;
--
-- Name: salon; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE salon WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE salon OWNER TO freecodecamp;

\connect salon

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


CREATE TABLE public.games (
    game_id SERIAL PRIMARY KEY NOT NULL,
    secret_number INT NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;



CREATE TABLE public.users (
    user_id SERIAL PRIMARY KEY NOT NULL,
    name character varying(30) NOT NULL UNIQUE
);


ALTER TABLE public.users OWNER TO freecodecamp;


CREATE TABLE public.usergames (
    user_game_id SERIAL PRIMARY KEY NOT NULL,
    game_id INT NOT NULL,
    user_id INT NOT NULL
);


ALTER TABLE public.usergames OWNER TO freecodecamp;


ALTER TABLE ONLY public.usergames
    ADD CONSTRAINT user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);
ALTER TABLE ONLY public.usergames
    ADD CONSTRAINT game_id_fkey FOREIGN KEY (game_id) REFERENCES public.games(game_id);

