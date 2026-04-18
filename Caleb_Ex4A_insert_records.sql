USE lana_dog_walking;
CREATE DATABASE IF NOT EXISTS lana_dog_walking;
USE lana_dog_walking;

DROP TABLE IF EXISTS Dog;
DROP TABLE IF EXISTS Service;
DROP TABLE IF EXISTS Customer;

CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    phone BIGINT
);

CREATE TABLE Dog (
    dog_id INT PRIMARY KEY,
    dog_name VARCHAR(100) NOT NULL,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

CREATE TABLE Service (
    service_id INT PRIMARY KEY,
    service_name VARCHAR(100) NOT NULL,
    price INT
);

INSERT INTO Customer (customer_id, customer_name, phone) VALUES
(201, 'Nji', 5551234567),
(202, 'John Smith', 5552345678),
(203, 'Mary Johnson', 5553456789),
(204, 'David Brown', 5554567890),
(205, 'Sarah Davis', 5555678901),
(206, 'James Wilson', 5556789012),
(207, 'Linda Martinez', 5557890123),
(208, 'Michael Garcia', 5558901234),
(209, 'Patricia Anderson', 5559012345),
(210, 'Robert Thomas', 5550123456),
(211, 'Jennifer White', 5551112222);

INSERT INTO Dog (dog_id, dog_name, customer_id) VALUES
(401, 'Boo', 201),
(402, 'Max', 202),
(403, 'Bella', 203),
(404, 'Charlie', 204),
(405, 'Lucy', 205),
(406, 'Rocky', 206),
(407, 'Daisy', 207),
(408, 'Milo', 208),
(409, 'Luna', 209),
(410, 'Buddy', 210),
(411, 'Coco', 211);

INSERT INTO Service (service_id, service_name, price) VALUES
(11, 'Vet Visit', 20),
(12, '30-Minute Walk', 15),
(13, '1-Hour Walk', 25),
(14, 'Group Walk', 18),
(15, 'Puppy Walk', 20),
(16, 'Pet Sitting', 40),
(17, 'Overnight Stay', 75),
(18, 'Dog Park Visit', 22),
(19, 'Feeding Service', 10),
(20, 'Medication Visit', 15),
(21, 'Grooming Service', 30);
