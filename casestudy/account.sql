--
-- PostgreSQL database dump
--

-- Started on 2014-07-24 00:20:23

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
-- TOC entry 1554 (class 1259 OID 90655)
-- Dependencies: 3
-- Name: account; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE account (
    accountid bigint NOT NULL,
    balance double precision,
    userid character varying(255)
);


ALTER TABLE public.account OWNER TO postgres;

--
-- TOC entry 1839 (class 0 OID 90655)
-- Dependencies: 1554
-- Data for Name: account; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO account (accountid, balance, userid) VALUES (1406140399272, 900, 'amrutadh');


--
-- TOC entry 1837 (class 2606 OID 90659)
-- Dependencies: 1554 1554
-- Name: account_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY account
    ADD CONSTRAINT account_pkey PRIMARY KEY (accountid);


--
-- TOC entry 1838 (class 2606 OID 90678)
-- Dependencies: 1554 1557
-- Name: fke49f160d3cf93670; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY account
    ADD CONSTRAINT fke49f160d3cf93670 FOREIGN KEY (userid) REFERENCES userdetails(userid);


-- Completed on 2014-07-24 00:20:23

--
-- PostgreSQL database dump complete
--

