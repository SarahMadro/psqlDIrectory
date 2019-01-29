CREATE DATABASE navy_schema;

\c navy_schema;

CREATE TABLE fleet(
  id BIGSERIAL PRIMARY KEY,
  fleet_name VARCHAR(20),
);

CREATE TABLE ships(
  id INTEGER REFERENCES fleet,
  ship_name VARCHAR(20),
  date_built DATE,
  fleet_id INTEGER
);

CREATE TABLE assignment(
  id BIGSERIAL PRIMARY KEY,
  a_name VARCHAR(20),
  a_rank INTEGER,
  startdate date,
  enddate date
);

CREATE TABLE sailor(
  id BIGSERIAL PRIMARY KEY,
  sailor_name VARCHAR(20),
  birthday date,
  assignment VARCHAR(50)
);

CREATE TABLE rank(
  id BIGSERIAL PRIMARY KEY,
  rank_name VARCHAR(20)
);