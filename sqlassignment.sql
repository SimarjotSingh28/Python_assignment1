create database assignment;

use assignment;

CREATE TABLE employees (
    emp_id INT NOT NULL PRIMARY KEY,
    emp_name VARCHAR(255) NOT NULL,
    age INT CHECK (age >= 18),
    email VARCHAR(255) UNIQUE,
    salary DECIMAL(10, 2) DEFAULT 30000
);


CREATE TABLE products (
 product_id INT,
 product_name VARCHAR(50),
 price DECIMAL(10, 2));
 
ALTER TABLE products
ADD PRIMARY KEY (product_id),
MODIFY price DECIMAL(10, 2) DEFAULT 50.00;


CREATE TABLE students(
    student_id INT NOT NULL PRIMARY KEY,
    student_name VARCHAR(255) NOT NULL,
    class_id INT
);

insert into students value(1,"Alice",101);
insert into students value(2,"Bob",102);
insert into students value(3,"Charlie",101);

select * from students;

CREATE TABLE classes(
    class_id INT NOT NULL PRIMARY KEY,
    class_name VARCHAR(255) NOT NULL
);

SELECT student_id,class_name
FROM students
INNER JOIN classes
ON students.class_id = classes.class_id;



