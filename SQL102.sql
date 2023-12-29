use high_school ;
-- Create a table for outstanding students whose GPA  is higher than 90.
CREATE TABLE ex_students SELECT * FROM
    students_info
WHERE
    PercentageGPA > 90;
    
-- Create a table for Fall students whose GPA is lower than 90.
CREATE TABLE Fall_students SELECT * FROM
    students_info
WHERE
    PercentageGPA < 60;
    
-- Display student names that start with A.
SELECT 
    *
FROM
    students_info
WHERE
    Student_name LIKE 'A%';

-- Display the names of students whose names contain four digits.
SELECT 
    *
FROM
    students_info
WHERE
    Student_name LIKE '____';
    
-- Apply AVG, MAX, MIN (Aggregate functions) to the student's GPA and add a clear label to the result.
SELECT 
    AVG(PercentageGPA) AS AVG_result
FROM
    students_info;
SELECT 
    MAX(percentageGPA) AS MAX_Reuslt
FROM
    students_info;
SELECT 
    MIN(percentageGPA) AS min_Reuslt
FROM
    students_info;

-- List and display the names of outstanding students in the five level who have a GPA average equal to 92.
SELECT 
    student_name AS high_students_GPA
FROM
    students_info
WHERE
    educational_level = 5
        AND percentageGPA > 92;

-- 
SELECT 
    student_name, birth_date
FROM
    students_info
WHERE
    educational_level = 1
        AND YEAR(CURDATE()) - YEAR(birth_date) BETWEEN 17 AND 18;

-- create column for age 
ALTER TABLE students_info
ADD COLUMN age INT;
UPDATE students_info 
SET 
    age = YEAR(CURDATE()) - YEAR(birth_date);

-- display student in educational_level 2. 
SELECT 
    *
FROM
    students_info
WHERE
    Educational_level = 2;
-- Review students' track in school without repetition.
SELECT DISTINCT
    (Track)
FROM
    students_info;

-- Subjects names are displayed and words are displayed in capital letters.

SELECT 
    UPPER(subject_name)
FROM
    Subjects;
-- update subject_name to uppercase 
UPDATE Subjects 
SET 
    Subject_name = UPPER(subject_name);

-- Avg for PercentageGPA round the number to the smallest number using numeric function
SELECT 
    ROUND(AVG(percentageGPA), 0) AS average_PercentageGPA
FROM
    students_info;

-- string function to replace gender F and M to Female and Male
UPDATE students_info 
SET 
    gender = REPLACE(REPLACE(gender, 'F', 'Female'),
        'M',
        'Male');

-- update PercentageGPA for students who less than 60 and increase five 
UPDATE students_info 
SET 
    PercentageGPA = PercentageGPA + 5
WHERE
    PercentageGPA < 60;
