INSERT INTO students(student_id, full_name, gender, age, course)

VALUES
(1, "Deng Jok", "Male", 18, "Data Analytics"),
(2, "Ruben Guardiola", "Male", 45, "Data Analytics"),
(3, "Aluel Mary", "Female", 21, "Eccomerce"),
(4, "Ronda Rowdy", "Female", 30, "Full Stack Development")
;
-- Select all columns
SELECT distinct * FROM students;

-- sellect full_name and course
SELECT full_name, course 
FROM students;

-- Retrieve a list of unique courses
SELECT DISTINCT course
FROM students;

-- Rename full_name as "Full Name"
SELECT DISTINCT full_name AS "Full Name"
FROM students;

-- Concatenate full_name and courses as "Student Details"
SELECT DISTINCT concat(full_name,'-', course) AS Student_Details
FROM students;