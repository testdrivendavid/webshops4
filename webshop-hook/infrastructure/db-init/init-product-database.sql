CREATE ROLE admin WITH LOGIN PASSWORD 'admin';

CREATE ROLE productadmin WITH LOGIN PASSWORD 'productadmin' NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;
CREATE DATABASE products_database;
GRANT ALL PRIVILEGES ON DATABASE products_database TO productadmin;
GRANT ALL PRIVILEGES ON DATABASE products_database TO admin;