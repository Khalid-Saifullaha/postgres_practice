SHOW timezone;

SELECT now();

CREATE TABLE timeZ (ts TIMESTAMP without time zone, tsz TIMESTAMP with time zone);

SELECT * FROM timeZ;

INSERT into timeZ VALUES('2024-01-12 10:45:00', '2024-01-12 10:45:00');

SELECT now()::date;

SELECT now()::time;

SELECT CURRENT_DATE;

SELECT to_char(now(), 'dd/mm/yyyy');

SELECT CURRENT_DATE - INTERVAL '1 year 2 month';

SELECT age(CURRENT_DATE, '1996-07-29');

SELECT * FROM students;

SELECT *, age(CURRENT_DATE, dob) FROM students;

SELECT extract(YEAR FROM '2025-01-25'::date);

SELECT extract(MONTH FROM '2025-01-25'::date);

SELECT 'n'::BOOLEAN;