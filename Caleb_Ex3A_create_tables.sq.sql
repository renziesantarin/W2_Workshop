DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

CREATE TABLE Customer (
customer_id VARCHAR(20) PRIMARY KEY,
customer_name VARCHAR(100) NOT NULL,
phone_number INT
);

CREATE TABLE Dog (
dog_id VARCHAR(20) PRIMARY KEY,
dog_name VARCHAR(100) NOT NULL,
customer_id VARCHAR(20),
FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);
CREATE TABLE Service (
service_id VARCHAR(20) PRIMARY KEY,
service_name VARCHAR(100) NOT NULL,
price INT
);