CREATE OR REPLACE FUNCTION locations_insert_trigger()
    RETURNS TRIGGER AS
$$
BEGIN
    IF (NEW.reg_date >= DATE '2022-06-01' AND
        NEW.reg_date < DATE '2022-07-01') THEN
        INSERT INTO locations_y2022m06 VALUES (NEW.*);
    ELSIF (NEW.reg_date >= DATE '2022-07-01' AND
           NEW.reg_date < DATE '2022-08-01') THEN
        INSERT INTO locations_y2022m07 VALUES (NEW.*);
    ELSIF (NEW.reg_date >= DATE '2022-08-01' AND
           NEW.reg_date < DATE '2022-09-01') THEN
        INSERT INTO locations_y2022m08 VALUES (NEW.*);
    ELSE
        INSERT INTO locations_y2023 VALUES (NEW.*);
    END IF;
    RETURN NULL;
END;
$$
    LANGUAGE plpgsql;


CREATE TRIGGER insert_measurement_trigger
    BEFORE INSERT ON locations
    FOR EACH ROW EXECUTE FUNCTION locations_insert_trigger();