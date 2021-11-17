drop DATABASE IF EXISTS Employee-tracker_db;
CREATE DATABASE Employee-tracker_db;

USE Employee-tracker_db;

CREATE TABLE    departments (
    id INT NOT NULL AUTO_INCREAMENT,
    department varchar(40) not NULL,
    PRIMARY KEY(id)
)
CREATE TABLE roles (
    id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INT,
    FOREIGN KEY (department_id)
    REFERENCES departments(id),
    PRIMARY KEY (id)
);

CREATE TABLE employees (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT,
    manager_id INT,
    FOREIGN KEY (role_id) 
    REFERENCES roles(id),
    FOREIGN KEY (manager_id) 
    REFERENCES employees(id)
);