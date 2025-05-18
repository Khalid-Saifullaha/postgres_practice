SELECT * FROM students;

SELECT country, COUNT(*) FROM students 
GROUP BY country;
SELECT country,COUNT(*), avg(age) FROM students 
GROUP BY country;

SELECT country, avg(age) FROM students 
GROUP BY country
HAVING avg(age)> 20
;