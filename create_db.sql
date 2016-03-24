DROP TABLE IF EXISTS Companies;
DROP TABLE IF EXISTS Acquisitions;
DROP TABLE IF EXISTS Competitors;
DROP TABLE IF EXISTS Products;
DROP TABLE IF EXISTS CompanyProducts;
DROP TABLE IF EXISTS Rounds;
DROP TABLE IF EXISTS CompanyRounds;
DROP TABLE IF EXISTS Stakeholders;
DROP TABLE IF EXISTS People;
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS CompanyEmployees;

CREATE TABLE Companies(
    id INT,
    permalink VARCHAR(500),
    name VARCHAR(500),
    cb_url VARCHAR(1000),
    url VARCHAR(1000),
    blog_url VARCHAR(1000),
    twitter_username VARCHAR(500),
    category_code VARCHAR(100),
    n_employees INT,
    founded_year INT,
    founded_month INT,
    founded_day INT,
    deadpooled_year INT,
    alias_list VARCHAR(1000),
    email_addr VARCHAR(500),
    phone_num VARCHAR(100),
    description VARCHAR(1000),
    overview VARCHAR(2000),
    total_money_raised INT,
    PRIMARY KEY (permalink)
);

CREATE TABLE Acquisitions(
    acquirer_permalink VARCHAR(500),
    acquiree_permalink VARCHAR(500),
    price_amt INT,
    price_curr_code VARCHAR(100),
    term_code VARCHAR(500),
    source_url VARCHAR(1000),
    source_desc VARCHAR(1000),
    year INT,
    month INT,
    day INT,
    PRIMARY KEY (acquirer_permalink, acquiree_permalink)
);

CREATE TABLE Competitors(
    cmp1_permalink VARCHAR(500),
    cmp2_permalink VARCHAR(500),
    PRIMARY KEY (cmp1_permalink, cmp2_permalink)
);

CREATE TABLE Products(
    permalink VARCHAR(500) PRIMARY KEY,
    name VARCHAR(500)
);

CREATE TABLE CompanyProducts(
    cmp_permalink VARCHAR(500),
    product_permalink VARCHAR(500),
    PRIMARY KEY(cmp_permalink, product_permalink)
);

CREATE TABLE Rounds(
    id INT PRIMARY KEY,
    round_code VARCHAR(100),
    source_url VARCHAR(1000),
    raised_amt INT,
    raised_curr_code VARCHAR(100),
    year INT,
    month INT,
    day INT
);

CREATE TABLE CompanyRounds(
    cmp_permalink VARCHAR(500),
    round_id INT,
    PRIMARY KEY (cmp_permalink, round_id)
);

CREATE TABLE Stakeholders(
    permalink VARCHAR(500) PRIMARY KEY,
    category VARCHAR(100)
);

CREATE TABLE People(
    permalink VARCHAR(500) PRIMARY KEY,
    first_name VARCHAR(500),
    last_name VARCHAR(500),
    employee_flag BOOLEAN,
    investor_flag BOOLEAN
);

CREATE TABLE Employees(
    permalink VARCHAR(500) PRIMARY KEY,
    first_name VARCHAR(500),
    last_name VARCHAR(500)
);

CREATE TABLE CompanyEmployees(
    cmp_permalink VARCHAR(500),
    employee_permalink VARCHAR(500),
    title VARCHAR(500),
    is_past BOOLEAN,
    PRIMARY KEY(cmp_permalink, employee_permalink, title)
);
