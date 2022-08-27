-- drop table if exists dogs;

CREATE TABLE dogs
(
    id     INTEGER,
    status TEXT,
    age    NUMERIC
) PARTITION BY RANGE (age);

CREATE TABLE dogs_age_small PARTITION OF dogs
    FOR VALUES FROM (MINVALUE) TO (25);

CREATE TABLE dogs_age_medium PARTITION OF dogs
    FOR VALUES FROM (25) TO (75);

CREATE TABLE dogs_age_large PARTITION OF dogs
    FOR VALUES FROM (75) TO (MAXVALUE);


