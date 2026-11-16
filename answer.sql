CREATE DATABASE school_management_db;
USE school_management_db;

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    date_of_birth DATE
);

CREATE TABLE teachers (
    teacher_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    subject VARCHAR(50)
);

CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
);

INSERT INTO students (first_name, last_name, email, date_of_birth)
VALUES ('Amina', 'Otieno', 'amina@example.com', '2008-03-12');

INSERT INTO teachers (first_name, last_name, subject)
VALUES ('John', 'Kamau', 'Mathematics');

INSERT INTO courses (course_name, teacher_id)
VALUES ('Algebra I', 1);