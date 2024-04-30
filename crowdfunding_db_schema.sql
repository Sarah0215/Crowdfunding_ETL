-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- PROJECT
-- ETL Mini Project
-- M. Dai, S. Kikuchi, J. Bein

CREATE TABLE Subcategory (
    subcategory_ID VARCHAR(10) PRIMARY KEY,
    subcategory VARCHAR(20)   NOT NULL,
    FOREIGN KEY (subcategory_ID) REFERENCES Campaign(subcategory_id)
);

CREATE TABLE Category (
    category_ID VARCHAR(5) PRIMARY KEY,
    category VARCHAR(20)   NOT NULL,
    FOREIGN KEY (category_ID) REFERENCES Campaign(category_id)
);

CREATE TABLE Contacts (
    contact_ID INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    FOREIGN KEY (contact_ID) REFERENCES Campaign(contact_id)
);

CREATE TABLE Campaign (
    cf_id INT PRIMARY KEY
    contact_id INT   NOT NULL,
    company_name VARCHAR(200)   NOT NULL,
    description VARCHAR(200)   NOT NULL,
    goal FLOAT   NOT NULL,
    pledged FLOAT   NOT NULL,
    outcome VARCHAR(30)   NOT NULL,
    backers_count INT   NOT NULL,
    country VARCHAR(2)   NOT NULL,
    currency VARCHAR(3)   NOT NULL,
    launched_date DATE   NOT NULL,
    end_date DATE   NOT NULL,
    category_id VARCHAR(5)   NOT NULL,
    subcategory_id VARCHAR(10)   NOT NULL,
);

