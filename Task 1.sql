USE practice;

CREATE TABLE course (
    c_id INT,
    c_name VARCHAR(20)
);

DROP TABLE IF EXISTS students;
CREATE TABLE students (
    s_id INT,
    s_name VARCHAR(20)
);

INSERT INTO students VALUES (1, 'Ajel'), (2, 'Jaldeesh'), (3, 'Viji');
INSERT INTO course VALUES (101, 'Java'), (102, 'DotNet'), (103, 'Python');

SELECT * FROM students;
SELECT * FROM course;

SELECT s.s_name AS Student_name, c.c_name AS Course_name
FROM students s CROSS JOIN course c;
