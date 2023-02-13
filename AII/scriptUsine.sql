


-- Role: coutaudu
-- DROP ROLE IF EXISTS coutaudu;

CREATE ROLE coutaudu WITH
  LOGIN
  SUPERUSER
  INHERIT
  CREATEDB
  CREATEROLE
  REPLICATION;


-- Database: Usine

-- DROP DATABASE IF EXISTS "Usine";

CREATE DATABASE "Usine"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_Europe.1252'
    LC_CTYPE = 'English_Europe.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
	
	
	
	
	
	