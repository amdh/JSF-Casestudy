--
-- PostgreSQL database dump
--

-- Started on 2014-07-24 00:20:03

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
-- TOC entry 1557 (class 1259 OID 90670)
-- Dependencies: 3
-- Name: userdetails; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE userdetails (
    userid character varying(255) NOT NULL,
    password character varying(255),
    firstname character varying(255),
    lastname character varying(255),
    email character varying(255),
    street1 character varying(255),
    street2 character varying(255),
    state character varying(255),
    country character varying(255),
    phoneno character varying(255),
    gender character varying(255),
    birthdate timestamp without time zone,
    guardianfirstname character varying(255),
    guardianlastname character varying(255),
    state_id integer,
    account_accountid bigint
);


ALTER TABLE public.userdetails OWNER TO postgres;

--
-- TOC entry 1840 (class 0 OID 90670)
-- Dependencies: 1557
-- Data for Name: userdetails; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO userdetails (userid, password, firstname, lastname, email, street1, street2, state, country, phoneno, gender, birthdate, guardianfirstname, guardianlastname, state_id, account_accountid) VALUES ('amrutadh', 'p@ssw0rd', 'amruta', 'dh', 'amrudh@tcs.com', 'sinhgad road', '', NULL, 'US', '2123313231', 'female', '1995-01-26 00:07:00', '', '', 1, 1406140399272);


--
-- TOC entry 1837 (class 2606 OID 90677)
-- Dependencies: 1557 1557
-- Name: userdetails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY userdetails
    ADD CONSTRAINT userdetails_pkey PRIMARY KEY (userid);


--
-- TOC entry 1839 (class 2606 OID 90698)
-- Dependencies: 1556 1557
-- Name: fk67f5cff71031a207; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY userdetails
    ADD CONSTRAINT fk67f5cff71031a207 FOREIGN KEY (state_id) REFERENCES statedetails(state_id);


--
-- TOC entry 1838 (class 2606 OID 90693)
-- Dependencies: 1557 1554
-- Name: fk67f5cff73cb70c76; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY userdetails
    ADD CONSTRAINT fk67f5cff73cb70c76 FOREIGN KEY (account_accountid) REFERENCES account(accountid);


-- Completed on 2014-07-24 00:20:03

--
-- PostgreSQL database dump complete
--

