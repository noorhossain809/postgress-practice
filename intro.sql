-- CREATE DATABASE
-- CREATE DATABASE db1;

-- --rename DATABASE
-- ALTER DATABASE db1 RENAME TO db2;

--delete DATABASE
-- DROP DATABASE db1



-- create a student TABLE
-- CREATE TABLE student (
--     student_id INT,
--     first_name VARCHAR(50),
--     last_name VARCHAR(50),
--     cgpa NUMERIC(1,2)
-- )

--rename TABLE
-- ALTER TABLE student RENAME TO learners

--delete TABLE
-- DROP TABLE learners


--## create a table with CONSTRAINTS
-- CREATE TABLE "user" (
--     user_id SERIAL PRIMARY KEY,
--     username VARCHAR(255) UNIQUE NOT NULL,
--     email VARCHAR(255) UNIQUE NOT NULL,
--     age INT DEFAULT 18
-- )

-- CREATE TABLE "user1" (
--     user_id SERIAL PRIMARY KEY,
--     username VARCHAR(255) UNIQUE NOT NULL,
--     email VARCHAR(255) UNIQUE NOT NULL,
--     age INT DEFAULT 18
-- )

-- delete all rows in a table without deleting the TABLE
TRUNCATE TABLE user1;

insert into user1 (username, email) VALUES 
('user3', 'user3@gmail.com'),
('user4', 'user4@gmail.com');

CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(255) NOT NULL,
    description VARCHAR(255)
);

insert into courses (course_name, description) 
VALUES
('english', 'sdf safd szdfj akd adfv'),
('bangla', NULL),
('math', 'sdf safd szdfj'),
('arabic', 'sdf safd szdfj akd adfv');

UPDATE courses
set
course_name = 'spoken english'
WHERE course_id = 1;

DELETE FROM courses
WHERE course_id = 1;

CREATE TABLE departments (
    deptId SERIAL PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

INSERT INTO departments (dept_name)
VALUES
    ('Sales'),
    ('Marketing'),
    ('Engineering'),
    ('Human Resources'),
    ('Finance'),
    ('Operations'),
    ('Research and Development'),
    ('Customer Service'),
    ('IT'),
    ('Administration'),
    ('Production'),
    ('Quality Assurance'),
    ('Design'),
    ('Legal'),
    ('Supply Chain'),
    ('Public Relations'),
    ('Training and Development'),
    ('Health and Safety'),
    ('Facilities Management'),
    ('Project Management'),
    -- ... continue adding more department names ...
    ('E-commerce'),
    ('Data Science'),
    ('Retail'),
    ('Logistics'),
    ('Product Management'),
    ('Consulting'),
    ('Analytics'),
    ('Education'),
    ('Nonprofit'),
    ('Real Estate'),
    ('Media'),
    ('Telecommunications'),
    ('Energy'),
    ('Aerospace'),
    ('Biotechnology'),
    ('Pharmaceuticals'),
    ('Hospitality'),
    ('Tourism'),
    ('Automotive'),
    ('Fashion'),
    ('Environmental'),
    ('Insurance'),
    ('Government'),
    ('Utilities'),
    ('Entertainment'),
    ('Music'),
    ('Publishing');


CREATE TABLE employees (
    emptId SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    salary INT,
    joining_date DATE,
    deptId INT,
    CONSTRAINT fk_constraint_dept
        FOREIGN KEY (deptId)
        REFERENCES departments(deptId)

);

INSERT INTO employees (name, email, salary, joining_date, deptId)
VALUES
     ('John Doe', 'john.doe@example.com', 60000, '2023-01-15', 1),
    ('Jane Smith', 'jane.smith@example.com', 55000, '2022-09-20', 2),
    ('Michael Johnson', 'michael.johnson@example.com', 70000, '2021-03-10', 1),
    ('Emily Williams', 'emily.williams@example.com', 62000, '2023-05-05', 3),
    ('Robert Brown', 'robert.brown@example.com', 58000, '2022-11-18', 2),
    ('Jessica Davis', 'jessica.davis@example.com', 75000, '2020-07-01', 3),
    ('William Wilson', 'william.wilson@example.com', 65000, '2023-02-28', 1),
    ('Linda Anderson', 'linda.anderson@example.com', 60000, '2021-08-12', 2),
    ('David Martinez', 'david.martinez@example.com', 68000, '2022-04-25', 3),
    ('Jennifer Thomas', 'jennifer.thomas@example.com', 70000, '2020-12-05', 1),
    -- ... continue adding more data entries ...
    ('Daniel Lee', 'daniel.lee@example.com', 62000, '2023-06-10', 2),
    ('Michelle White', 'michelle.white@example.com', 55000, '2021-09-22', 3),
    ('Ryan Hall', 'ryan.hall@example.com', 75000, '2022-10-30', 1),
    ('Sarah King', 'sarah.king@example.com', 61000, '2023-03-15', 2),
    ('Kevin Rodriguez', 'kevin.rodriguez@example.com', 70000, '2021-01-18', 3),
    -- ... continue adding more data entries ...
    ('Amanda Campbell', 'amanda.campbell@example.com', 60000, '2022-08-08', 1),
    ('Christopher Young', 'christopher.young@example.com', 67000, '2023-04-12', 2),
    ('Stephanie Mitchell', 'stephanie.mitchell@example.com', 55000, '2021-07-25', 3),
    ('Jason Scott', 'jason.scott@example.com', 72000, '2020-11-05', 1),
    ('Laura Walker', 'laura.walker@example.com', 63000, '2022-12-18', 2),
    ('Matthew Perez', 'matthew.perez@example.com', 69000, '2023-08-20', 3);



select * from employees ORDER BY name ASC LIMIT 10 OFFSET 2;

SELECT * FROM employees ORDER BY salary DESC;

SELECT * FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees);

SELECT * FROM employees ORDER BY salary DESC LIMIT 1 OFFSET 2

