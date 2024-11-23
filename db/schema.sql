DROP DATABASE IF EXISTS serenity_db; 

CREATE DATABASE serenity_db;

USE serenity_db;


CREATE TABLE services (
    id INT,
    name VARCHAR(200) NOT NULL
);

INSERT INTO services(id, name)
    VALUES 
    (1, "Hair"),
    (2, "Nails"),
    (3, "Face"),
    (4, "Body");

CREATE TABLE members (
    member_no INT NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(24) NOT NULL,
    last_name VARCHAR(24) NOT NULL,
    gender ENUM ('M', 'F') NOT NULL,
    active_date DATE NOT NULL,
    PRIMARY KEY (member_no)
);