USE lana_dog_walking;

INSERT INTO Customers (customer_id, first_name, last_name, phone, email, address) VALUES
(101, 'Jan', 'Ignacio' '619-751-9122' 'janignacio@email.com', '24 Conch St'),
(102, 'Emily', 'Clark', '302-555-5551', 'emily@email.com', '789 Pine St'),
(103, 'Michael', 'Brown', '302-555-5552', 'michael@email.com', '101 Maple St'),
(104, 'Olivia', 'Davis', '302-555-5553', 'olivia@email.com', '202 Birch St'),
(105, 'Daniel', 'Wilson', '302-555-5554', 'daniel@email.com', '303 Cedar St'),
(106, 'Sophia', 'Moore', '302-555-5555', 'sophia@email.com', '404 Elm St'),
(107, 'James', 'Taylor', '302-555-5556', 'james@email.com', '505 Walnut St'),
(108, 'Isabella', 'Anderson', '302-555-5557', 'isabella@email.com', '606 Ash St'),
(109, 'Benjamin', 'Thomas', '302-555-5558', 'ben@email.com', '707 Cherry St'),
(110, 'Mia', 'Jackson', '302-555-5559', 'mia@email.com', '808 Spruce St');

INSERT INTO Walkers (walker_id, first_name, last_name, phone, email) VALUES
(201, 'Julius', 'Ramos', '619-344-2371', 'jramos@email.com'),
(202, 'Alex', 'Green', '302-555-6001', 'alex@email.com'),
(203, 'Chris', 'Hall', '302-555-6002', 'chris@email.com'),
(204, 'Taylor', 'Young', '302-555-6003', 'taylor@email.com'),
(205, 'Jordan', 'King', '302-555-6004', 'jking@email.com'),
(206, 'Morgan', 'Scott', '302-555-6005', 'morgan@email.com'),
(207, 'Casey', 'Adams', '302-555-6006', 'casey@email.com'),
(208, 'Riley', 'Baker', '302-555-6007', 'riley@email.com'),
(209, 'Drew', 'Nelson', '302-555-6008', 'drew@email.com'),
(210, 'Jamie', 'Carter', '302-555-6009', 'jamie@email.com');

INSERT INTO Dogs (dog_id, customer_id, dog_name, breed, age, notes) VALUES
(301, 101, 'Bumi', 'Dachshund', 2, 'Friendly'),
(302, 102, 'Rocky', 'Bulldog', 5, 'Calm'),
(303, 103, 'Luna', 'Husky', 2, 'Energetic'),
(304, 104, 'Charlie', 'Beagle', 6, 'Loves treats'),
(305, 105, 'Lucy', 'Boxer', 4, 'Playful'),
(306, 106, 'Cooper', 'Labrador', 3, 'Friendly'),
(307, 107, 'Daisy', 'Shih Tzu', 7, 'Gentle'),
(308, 108, 'Milo', 'Terrier', 2, 'Very active'),
(309, 109, 'Lola', 'Chihuahua', 5, 'Small but loud'),
(310, 110, 'Buddy', 'Golden Retriever', 4, 'Loyal');

INSERT INTO Walks (walk_id, dog_id, walker_id, walk_date, start_time, duration_minutes, status) VALUES
(401, 301, 201, '2026-04-01', '03:00:00', 30, 'Completed'),
(402, 302, 202, '2026-04-22', '09:00:00', 30, 'Scheduled'),
(403, 303, 203, '2026-04-22', '10:30:00', 45, 'Completed'),
(404, 304, 204, '2026-04-23', '11:00:00', 30, 'Scheduled'),
(405, 305, 205, '2026-04-23', '12:00:00', 60, 'Completed'),
(406, 306, 206, '2026-04-24', '09:30:00', 30, 'Scheduled'),
(407, 307, 207, '2026-04-24', '01:00:00', 45, 'Completed'),
(408, 308, 208, '2026-04-25', '10:00:00', 30, 'Scheduled'),
(409, 309, 209, '2026-04-25', '02:00:00', 60, 'Completed'),
(410, 310, 210, '2026-04-26', '11:30:00', 30, 'Scheduled');

INSERT INTO Payments (payment_id, customer_id, walk_id, amount, payment_date, payment_method) VALUES
(501, 101, 401, 40.00, '2026-04-01', 'Card'),
(502, 102, 402, 25.00, '2026-04-22', 'Card'),
(503, 103, 403, 30.00, '2026-04-22', 'Cash'),
(504, 104, 404, 20.00, '2026-04-23', 'Card'),
(505, 105, 405, 35.00, '2026-04-23', 'Cash'),
(506, 106, 406, 25.00, '2026-04-24', 'Card'),
(507, 107, 407, 30.00, '2026-04-24', 'Cash'),
(508, 108, 408, 20.00, '2026-04-25', 'Card'),
(509, 109, 409, 40.00, '2026-04-25', 'Cash'),
(510, 110, 410, 25.00, '2026-04-26', 'Card');

SELECT * FROM Customers;
SELECT * FROM Walkers;
SELECT * FROM Dogs;
SELECT * FROM Walks;
SELECT * FROM Payments;