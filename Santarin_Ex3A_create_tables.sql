DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100) UNIQUE,
    address VARCHAR(150)
);

CREATE TABLE Walkers (
	walker_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100) UNIQUE
);
    
CREATE TABLE Dogs (
	dog_id INT PRIMARY KEY AUTO_INCREMENT,
	customer_id INT NOT NULL,
	dog_name VARCHAR(50) NOT NULL,
	breed VARCHAR(50),
	age INT,
	notes TEXT,
	CONSTRAINT fk_dogs_customer
		FOREIGN KEY (customer_id)
		REFERENCES Customers(customer_id)
);
    
CREATE TABLE Walks (
	walk_id INT PRIMARY KEY AUTO_INCREMENT,
	dog_id INT NOT NULL,
	walker_id INT NOT NULL,
	walk_date DATE NOT NULL,
	start_time TIME,
	duration_minutes INT,
	status ENUM('Scheduled', 'Completed', 'Cancelled'),
	CONSTRAINT fk_walks_dog
		FOREIGN KEY (dog_id)
		REFERENCES Dogs(dog_id),
	CONSTRAINT fk_walks_walker
		FOREIGN KEY (walker_id)
		REFERENCES Walkers(walker_id)
);

CREATE TABLE Payments (
	payment_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    walk_id INT NOT NULL,
    amount DECIMAL(6,2) NOT NULL,
    payment_date DATE,
    payment_method VARCHAR(30),
    CONSTRAINT fk_payments_customer
		FOREIGN KEY (customer_id)
        REFERENCES Customers(customer_id),
	CONSTRAINT fk_payments_walk
		FOREIGN KEY (walk_id)
        REFERENCES Walks(walk_id)
);
