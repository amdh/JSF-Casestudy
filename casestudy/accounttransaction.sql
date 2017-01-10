--
-- PostgreSQL database dump
--

-- Started on 2014-07-24 00:20:42

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
-- TOC entry 1555 (class 1259 OID 90660)
-- Dependencies: 3
-- Name: accounttransaction; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE accounttransaction (
    transactionid bigint NOT NULL,
    transactiondate timestamp without time zone,
    transactiontype character varying(255),
    amount double precision,
    balance double precision,
    account_accountid bigint,
    accountid bigint
);


ALTER TABLE public.accounttransaction OWNER TO postgres;

--
-- TOC entry 1840 (class 0 OID 90660)
-- Dependencies: 1555
-- Data for Name: accounttransaction; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO accounttransaction (transactionid, transactiondate, transactiontype, amount, balance, account_accountid, accountid) VALUES (1, '2014-07-24 00:04:37.117', 'deposit', 1000, 1000, 1406140399272, 1406140399272);
INSERT INTO accounttransaction (transactionid, transactiondate, transactiontype, amount, balance, account_accountid, accountid) VALUES (2, '2014-07-24 00:04:47.662', 'withdraw', 100, 900, 1406140399272, 1406140399272);


--
-- TOC entry 1837 (class 2606 OID 90664)
-- Dependencies: 1555 1555
-- Name: accounttransaction_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY accounttransaction
    ADD CONSTRAINT accounttransaction_pkey PRIMARY KEY (transactionid);


--
-- TOC entry 1838 (class 2606 OID 90683)
-- Dependencies: 1554 1555
-- Name: fkfa30f6913cb70c76; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY accounttransaction
    ADD CONSTRAINT fkfa30f6913cb70c76 FOREIGN KEY (account_accountid) REFERENCES account(accountid);


--
-- TOC entry 1839 (class 2606 OID 90688)
-- Dependencies: 1554 1555
-- Name: fkfa30f69152d39c08; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY accounttransaction
    ADD CONSTRAINT fkfa30f69152d39c08 FOREIGN KEY (accountid) REFERENCES account(accountid);


-- Completed on 2014-07-24 00:20:42

--
-- PostgreSQL database dump complete
--

