CREATE TABLE students (
  student_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  age INT,
  grade CHAR(2),
  course VARCHAR(50),
  email VARCHAR(100),
  dob DATE,
  blood_group VARCHAR(5),
  country VARCHAR(50)
);

INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country) VALUES
('John', 'Doe', 20, 'A', 'Math', 'john.doe@example.com', '2004-01-15', 'O+', 'USA'),
('Jane', 'Smith', 21, 'B', 'History', 'jane.smith@example.com', '2003-05-20', 'A-', 'Canada'),
('Alice', 'Johnson', 19, 'A', 'Physics', 'alice.johnson@example.com', '2002-11-08', 'B+', 'UK'),
('Bob', 'Williams', 22, 'C', 'Chemistry', 'bob.williams@example.com', '2001-07-03', 'AB-', 'Australia'),
('Charlie', 'Brown', 20, 'B', 'English', NULL, '2004-03-30', 'A+', 'New Zealand'),
('Emma', 'Jones', 23, 'B', 'Biology', 'emma.jones@example.com', '2000-09-12', 'A-', 'USA'),
('Michael', 'Miller', 21, 'A', 'Physics', 'michael.johnson@example.com', '2002-04-05', 'O-', 'Canada'),
('Olivia', 'Davis', 21, 'A', 'Math', 'olivia.davis@example.com', '2003-12-18', 'B-', 'UK'),
('William', 'Taylor', 20, 'B', 'Chemistry', NULL, '2004-08-30', 'A+', 'Australia'),
('Sophia', 'Brown', 24, 'A', 'English', 'sophia.brown@example.com', '1999-06-25', 'AB+', 'New Zealand'),
('Liam', 'Miller', 19, 'C', 'History', 'liam.miller@example.com', '2002-02-10', 'A-', 'USA'),
('Ava', 'Anderson', 22, 'B', 'Biology', 'ava.anderson@example.com', '2000-11-15', 'B+', 'Canada'),
('Noah', 'Martinez', 21, 'A', 'Physics', NULL, '2001-04-28', 'O+', 'UK'),
('Isabella', 'Clark', 20, 'C', 'Chemistry', 'isabella.clark@example.com', '2003-10-03', 'A-', 'Australia'),
('Ethan', 'Garcia', 23, 'B', 'Math', 'ethan.garcia@example.com', '2000-07-22', 'B-', 'New Zealand'),
('Sophie', 'Moore', 22, 'A', 'English', 'sophie.moore@example.com', '2002-12-05', 'A+', 'USA'),
('Charlotte', 'Thompson', 21, 'A', 'Art', 'charlotte.thompson@example.com', '2003-01-25', 'O-', 'UK'),
('Benjamin', 'White', 19, 'C', 'Economics', 'benjamin.white@example.com', '2005-09-01', 'B-', 'Canada'),
('Amelia', 'Harris', 22, 'B', 'Psychology', 'amelia.harris@example.com', '2002-03-17', 'AB+', 'Australia');

SELECT email, age,blood_group FROM students;

SELECT email as "Student Email", age,blood_group FROM students;

SELECT * FROM students ORDER BY first_name ASC;

SELECT * FROM students ORDER BY first_name DESC;

SELECT * FROM students ORDER BY age DESC;

SELECT country FROM students ORDER BY country ASC;

SELECT DISTINCT country FROM students ;

SELECT DISTINCT blood_group FROM students ;

SELECT * FROM students  
WHERE country = 'Canada' ;

SELECT * FROM students  
WHERE grade = 'A' AND course='Physics';

SELECT * FROM students 
WHERE country IN( 'USA', 'UK', 'Canada') ;

SELECT * FROM students 
WHERE country NOT IN( 'USA', 'UK', 'Canada') ;

SELECT * FROM students 
WHERE age BETWEEN 19 AND 22 ;

SELECT * FROM students 
WHERE dob BETWEEN '2001-01-01' AND '2002-03-30' ORDER BY dob ASC;

SELECT * FROM students 
WHERE first_name LIKE '%am' ;

SELECT * FROM students 
WHERE first_name LIKE 'A%' ;

SELECT * FROM students 
WHERE first_name LIKE '__a%' ;

SELECT * FROM students 
WHERE first_name LIKE '__a' ;

SELECT * FROM students 
WHERE first_name ILIKE 'a%' ;

SELECT * FROM students LIMIT 5 OFFSET 2;

SELECT * FROM students 
WHERE country IN( 'USA', 'UK', 'Canada') LIMIT 5;

SELECT * FROM students LIMIT 5 OFFSET 5*0;
SELECT * FROM students LIMIT 5 OFFSET 5*1;
SELECT * FROM students LIMIT 5 OFFSET 5*2;
SELECT * FROM students LIMIT 5 OFFSET 5*3;

SELECT * FROM students;

DELETE FROM students;

DELETE FROM students 
WHERE grade ='B';

DELETE FROM students 
WHERE grade ='C' AND country= 'USA';