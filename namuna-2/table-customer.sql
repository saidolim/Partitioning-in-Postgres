-- drop table customers;

CREATE TABLE customers
(
    id     SERIAL,
    status TEXT,
    arr    NUMERIC
) PARTITION BY LIST (status);

CREATE TABLE cust_active PARTITION OF customers
    FOR VALUES IN
        (
        'ACTIVE'
        );

CREATE TABLE cust_archived PARTITION OF customers
    FOR VALUES IN (
        'EXPIRED'
        );

CREATE TABLE cust_others PARTITION OF customers
    DEFAULT;

