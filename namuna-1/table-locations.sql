CREATE SEQUENCE IF NOT EXISTS my_locations_id_seq;

-- DROP TABLE clearbank.account_balance;

CREATE TABLE IF NOT EXISTS public.my_locations
(
    id        bigint NOT NULL default nextval('my_locations_id_seq'::regclass),
    latitute  double precision,
    longitude double precision,
    red_date  timestamp without time zone default now(),
    CONSTRAINT pk_my_locations_id PRIMARY KEY (id)
);

comment on table public.my_locations is 'My GPS Locations';

