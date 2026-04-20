DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

-- Parent tables (no dependencies)
CREATE TABLE Owners (
    owner_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255)
);

CREATE TABLE Walkers (
    walker_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100)
);

-- Child tables
CREATE TABLE Dogs (
    dog_id INT AUTO_INCREMENT PRIMARY KEY,
    owner_id INT NOT NULL,
    dog_name VARCHAR(50) NOT NULL,
    breed VARCHAR(50),
    age INT,
    notes TEXT,
    FOREIGN KEY (owner_id) REFERENCES Owners(owner_id)
);

CREATE TABLE Walks (
    walk_id INT AUTO_INCREMENT PRIMARY KEY,
    dog_id INT NOT NULL,
    walker_id INT NOT NULL,
    walk_date DATE NOT NULL,
    start_time TIME,
    duration_minutes INT,
    status ENUM('Scheduled', 'Completed', 'Cancelled', 'No-Show') DEFAULT 'Scheduled',
    FOREIGN KEY (dog_id) REFERENCES Dogs(dog_id),
    FOREIGN KEY (walker_id) REFERENCES Walkers(walker_id)
);

CREATE TABLE Payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    walk_id INT NOT NULL,
    amount DECIMAL(6,2) NOT NULL,
    payment_date DATE,
    payment_method VARCHAR(30),
    FOREIGN KEY (walk_id) REFERENCES Walks(walk_id)
);
