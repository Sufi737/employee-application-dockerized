CREATE TABLE IF NOT EXISTS employee (
	entity_id int NOT NULL AUTO_INCREMENT, 
    firstname varchar (25), 
    lastname varchar (25),
    email varchar (50),
    employee_code varchar(10) UNIQUE,
    password_hash varchar (100),
    manager_employee_id int,
    department_id int,
    role_id int,
    PRIMARY KEY (entity_id)
);

CREATE TABLE IF NOT EXISTS department (
	entity_id int NOT NULL AUTO_INCREMENT,
    department_name varchar(10),
    PRIMARY KEY (entity_id)
);

CREATE TABLE IF NOT EXISTS roles (
	entity_id int NOT NULL AUTO_INCREMENT,
    role_name varchar(25),
    PRIMARY KEY (entity_id)
);

ALTER TABLE employee 
	ADD CONSTRAINT fk_employee_department 
    FOREIGN KEY (department_id) 
    REFERENCES department(entity_id);

ALTER TABLE employee 
	ADD CONSTRAINT fk_employee_role 
    FOREIGN KEY (role_id) 
    REFERENCES roles(entity_id);

-- Inserting data
INSERT INTO roles(role_name) 
    values 
        ('EMPLOYEE'),
        ('ADMIN'),
        ('TECH_SUPPORT');

INSERT INTO department(department_name)
    values ('CMS'), ('Tech'), ('Operations'), ('HR');


INSERT INTO employee(firstname, lastname, email, employee_code, password_hash, manager_employee_id, department_id, role_id)
    values
        ('Sufyan', 'Khot', 'khotsufyan@gmail.com', 'EMP00001', '$2y$10$i4TiD5zEKH4MFrSCffUmTOpTNDW.jyIOj1Dc0dlTwfYkchhHUFR5G', NULL, 2, 2),
        ('Zeeshan', 'Kazi', 'kazizeeshan@gmail.com', 'EMP00002', '$2y$10$i4TiD5zEKH4MFrSCffUmTOpTNDW.jyIOj1Dc0dlTwfYkchhHUFR5G', 1, 2, 1),
        ('Aditya', 'Ladhe', 'ladheaditya@gmail.com', 'EMP00003', '$2y$10$i4TiD5zEKH4MFrSCffUmTOpTNDW.jyIOj1Dc0dlTwfYkchhHUFR5G', 1, 2, 1);