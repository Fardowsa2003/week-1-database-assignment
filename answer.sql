-- School Management Database
-- Week 1 Database Assignment

-- Create the database for the school
CREATE DATABASE school_management_db;

-- Select the database so the next commands run inside it
USE school_management_db;

-- Table to store student information
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,  -- unique ID, increases automatically
    first_name VARCHAR(50) NOT NULL,            -- required
    last_name VARCHAR(50) NOT NULL,             -- required
    email VARCHAR(100),
    date_of_birth DATE
);

-- Table to store teacher information
CREATE TABLE teachers (
    teacher_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    subject VARCHAR(50)
);

-- Table to store courses; each course is taught by one teacher
CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    teacher_id INT,
    -- Links each course to a teacher in the teachers table
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
);

-- Add a sample student
INSERT INTO students (first_name, last_name, email, date_of_birth)
VALUES ('Amina', 'Otieno', 'amina@example.com', '2008-03-12');

-- Add a sample teacher
INSERT INTO teachers (first_name, last_name, subject)
VALUES ('John', 'Kamau', 'Mathematics');

-- Add a sample course taught by teacher 1 (John Kamau)
INSERT INTO courses (course_name, teacher_id)
VALUES ('Algebra I', 1);

-- Check that the data was saved
SELECT * FROM students;