CREATE DATABASE employee_portfolio;

USE employee_portfolio;

CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    role VARCHAR(100),
    bio TEXT
);

CREATE TABLE skills (
    id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT,
    skill_name VARCHAR(100) NOT NULL,

    FOREIGN KEY (employee_id)
    REFERENCES employees(id)
);

CREATE TABLE projects (
    id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT,
    title VARCHAR(150) NOT NULL,
    description TEXT,

    FOREIGN KEY (employee_id)
    REFERENCES employees(id)
);