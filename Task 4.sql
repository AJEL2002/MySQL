CREATE DATABASE College;
USE College;

CREATE TABLE student (
    studid INT,
    name VARCHAR(30),
    course VARCHAR(20),
    marks DECIMAL(5,2),
    city VARCHAR(30)
);

INSERT INTO student VALUES
(1,'Ajel','Maths',85,'Chennai'),
(2,'Viji','Science',90,'Coimbatore'),
(3,'Jaideesh','Maths',70,'Chennai'),
(4,'Ramya','English',60,'Theni'),
(5,'Ebi','Science',95,'Salem'),
(6,'Alban','Maths',88,'Dindugal'),
(7,'Prethi','English',75,'Madurai');

SELECT * FROM student
WHERE name LIKE 'A%';

SELECT * FROM student
WHERE name LIKE '%vi%';

SELECT * FROM student
WHERE name LIKE '%i';

SELECT * FROM student
WHERE city LIKE '%i';

SELECT course,
       COUNT(*) AS student_count,
       AVG(marks) AS avg_marks
FROM student
GROUP BY course
HAVING COUNT(*) > 2
ORDER BY avg_marks DESC;
