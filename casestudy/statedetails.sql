--
-- PostgreSQL database dump
--

-- Started on 2014-07-24 00:19:18

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 1556 (class 1259 OID 90665)
-- Dependencies: 3
-- Name: statedetails; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE statedetails (
    state_id integer NOT NULL,
    state_name character varying(255)
);


ALTER TABLE public.statedetails OWNER TO postgres;

--
-- TOC entry 1838 (class 0 OID 90665)
-- Dependencies: 1556
-- Data for Name: statedetails; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO statedetails (state_id, state_name) VALUES (2, 'Texas');
INSERT INTO statedetails (state_id, state_name) VALUES (3, 'Pennisylvania');
INSERT INTO statedetails (state_id, state_name) VALUES (1, 'California');


--
-- TOC entry 1837 (class 2606 OID 90669)
-- Dependencies: 1556 1556
-- Name: statedetails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY statedetails
    ADD CONSTRAINT statedetails_pkey PRIMARY KEY (state_id);


-- Completed on 2014-07-24 00:19:19

--
-- PostgreSQL database dump complete
--

