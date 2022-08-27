CREATE SEQUENCE IF NOT EXISTS locations_id_seq;

DROP TABLE if exists locations_y2022m06;
DROP TABLE if exists locations_y2022m07;
DROP TABLE if exists locations_y2022m08;
DROP TABLE if exists locations_y2023;
DROP TABLE if exists locations;

CREATE TABLE IF NOT EXISTS locations
(
    id        bigint NOT NULL default nextval('locations_id_seq'::regclass),
    latitute  double precision,
    longitude double precision,
    reg_date  timestamp without time zone default now(),
    CONSTRAINT pk_locations_id PRIMARY KEY (id)
);

comment on table locations is 'My GPS Locations';

CREATE TABLE locations_y2022m06 (
    CHECK ( reg_date >= DATE '2022-06-01' AND reg_date < DATE '2022-07-01' )
) INHERITS (locations);

CREATE TABLE locations_y2022m07 (
    CHECK ( reg_date >= DATE '2022-07-01' AND reg_date < DATE '2022-08-01' )
) INHERITS (locations);

CREATE TABLE locations_y2022m08 (
    CHECK ( reg_date >= DATE '2022-08-01' AND reg_date < DATE '2022-09-01' )
) INHERITS (locations);

CREATE TABLE locations_y2023 (
    CHECK ( reg_date >= DATE '2022-09-01' )
) INHERITS (locations);

-- create index

drop index if exists index_locations_y2022m06;
drop index if exists index_locations_y2022m07;
drop index if exists index_locations_y2022m08;
drop index if exists index_locations_y2023;

CREATE INDEX index_locations_y2022m06 ON locations_y2022m06 (reg_date);
CREATE INDEX index_locations_y2022m07 ON locations_y2022m07 (reg_date);
CREATE INDEX index_locations_y2022m08 ON locations_y2022m08 (reg_date);
CREATE INDEX index_locations_y2023 ON locations_y2023 (reg_date);


