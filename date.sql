SHOW timezone;

SELECT now();

CREATE TABLE timeZ (ts TIMESTAMP without time zone, tsz TIMESTAMP with time zone);

SELECT * FROM timeZ;

INSERT into timeZ VALUES('2024-01-12 10:45:00', '2024-01-12 10:45:00');

SELECT now()::date;

SELECT now()::time;

SELECT CURRENT_DATE;

SELECT to_char(now(), 'dd/mm/yyyy');