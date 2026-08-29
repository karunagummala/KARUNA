CREATE DATABASE student_db;
USE student_db;

CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    age INT,
    gender VARCHAR(10),
    department VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(15)
);

INSERT INTO students (name, age, gender, department, email, phone) VALUES
('Karuna', 21, 'Female', 'Data Science', 'karuna@gmail.com', '9876543210'),
('Anil', 22, 'Male', 'Computer Science', 'anil@gmail.com', '9876543211'),
('Priya', 20, 'Female', 'Information Technology', 'priya@gmail.com', '9876543212'),
('Rahul', 21, 'Male', 'Data Science', 'rahul@gmail.com', '9876543213'),
('Sneha', 22, 'Female', 'Computer Science', 'sneha@gmail.com', '9876543214');

SELECT * FROM students;

UPDATE students
SET phone = '9999999999'
WHERE student_id = 1;

SELECT * FROM students;

DELETE FROM students
WHERE student_id = 5;

SELECT * FROM students;

SELECT * FROM students
WHERE department = 'Data Science';

SELECT COUNT(*) AS total_students
FROM students;

SELECT department, COUNT(*) AS total_students
FROM students
GROUP BY department;

SELECT * FROM students
ORDER BY name;