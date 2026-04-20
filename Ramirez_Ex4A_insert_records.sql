-- Exercise 4.A: Insert sample records for Lana's Dog-Walking Business
-- Author: Cris Santamaria
-- Records are inserted in dependency order (parent tables first)

USE lana_dog_walking;

-- =====================================================
-- OWNERS (10 records)
-- =====================================================
INSERT INTO Owners (first_name, last_name, phone, email, address) VALUES
('Maria', 'Hernandez', '908-555-0142', 'maria.hernandez@email.com', '214 Chestnut St'),
('James', 'Carter', '973-555-0188', 'jcarter@email.com', '57 Oak Ave'),
('Aisha', 'Khan', '908-555-0201', 'aisha.k@email.com', '89 Maple Dr'),
('Michael', 'OBrien', '201-555-0117', 'mike.obrien@email.com', '12 Pine Rd'),
('Sofia', 'Rossi', '908-555-0163', 'sofia.rossi@email.com', '430 Walnut St'),
('Darnell', 'Washington', '973-555-0199', 'dwashington@email.com', '76 Elm Ct'),
('Priya', 'Patel', '908-555-0175', 'priya.patel@email.com', '311 Birch Ln'),
('Kevin', 'Sullivan', '201-555-0134', 'ksullivan@email.com', '18 Cedar Way'),
('Elena', 'Morales', '908-555-0156', 'elena.m@email.com', '92 Willow Pl'),
('Tom', 'Nakamura', '973-555-0182', 'tom.nakamura@email.com', '265 Spruce St');

-- =====================================================
-- WALKERS (10 records)
-- =====================================================
INSERT INTO Walkers (first_name, last_name, phone, email) VALUES
('Lana', 'Thompson', '908-555-0100', 'lana@lanadogwalking.com'),
('Jasmine', 'Reyes', '908-555-0110', 'jasmine.r@lanadogwalking.com'),
('Marcus', 'Bell', '973-555-0120', 'marcus.b@lanadogwalking.com'),
('Chloe', 'Nguyen', '201-555-0130', 'chloe.n@lanadogwalking.com'),
('Isaiah', 'Foster', '908-555-0140', 'isaiah.f@lanadogwalking.com'),
('Natalia', 'Ivanov', '973-555-0150', 'natalia.i@lanadogwalking.com'),
('Devon', 'Parker', '908-555-0160', 'devon.p@lanadogwalking.com'),
('Ruby', 'Cohen', '201-555-0170', 'ruby.c@lanadogwalking.com'),
('Andre', 'Jackson', '973-555-0180', 'andre.j@lanadogwalking.com'),
('Lily', 'Chen', '908-555-0190', 'lily.chen@lanadogwalking.com');

-- =====================================================
-- DOGS (10 records)
-- owner_id references Owners(owner_id) 1-10
-- Owner #1 (Maria) has two dogs; others have one each
-- =====================================================
INSERT INTO Dogs (owner_id, dog_name, breed, age, notes) VALUES
(1, 'Buddy', 'Golden Retriever', 4, 'Very friendly, loves fetch'),
(1, 'Luna', 'Golden Retriever', 2, 'Buddy\'s sister, a bit shy with strangers'),
(2, 'Max', 'German Shepherd', 6, 'High energy, needs long walks'),
(3, 'Bella', 'French Bulldog', 3, 'Gets tired quickly, short walks only'),
(4, 'Charlie', 'Labrador', 5, 'Afraid of thunder, keep indoors if storming'),
(5, 'Daisy', 'Beagle', 7, 'Senior dog, slower pace please'),
(6, 'Rocky', 'Pit Bull Mix', 4, 'Great with people, nervous around other dogs'),
(7, 'Coco', 'Poodle', 2, 'Energetic, enjoys playing with others'),
(8, 'Zeus', 'Great Dane', 5, 'Gentle giant, use harness not collar'),
(9, 'Mochi', 'Shiba Inu', 3, 'Loves winter walks, hates the rain');

-- =====================================================
-- WALKS (10 records)
-- dog_id references Dogs(dog_id) 1-10
-- walker_id references Walkers(walker_id) 1-10
-- Mix of past completed walks and upcoming scheduled ones
-- =====================================================
INSERT INTO Walks (dog_id, walker_id, walk_date, start_time, duration_minutes, status) VALUES
(1, 1, '2026-04-15', '09:00:00', 30, 'Completed'),
(2, 1, '2026-04-15', '09:35:00', 30, 'Completed'),
(3, 2, '2026-04-16', '10:00:00', 45, 'Completed'),
(4, 3, '2026-04-17', '14:00:00', 20, 'Completed'),
(5, 4, '2026-04-18', '08:30:00', 40, 'Completed'),
(6, 5, '2026-04-19', '11:00:00', 30, 'Cancelled'),
(7, 2, '2026-04-20', '15:00:00', 35, 'Scheduled'),
(8, 6, '2026-04-21', '09:00:00', 45, 'Scheduled'),
(9, 7, '2026-04-22', '13:30:00', 40, 'Scheduled'),
(10, 8, '2026-04-23', '10:00:00', 30, 'Scheduled');

-- =====================================================
-- PAYMENTS (10 records)
-- walk_id references Walks(walk_id) 1-10
-- =====================================================
INSERT INTO Payments (walk_id, amount, payment_date, payment_method) VALUES
(1, 25.00, '2026-04-15', 'Venmo'),
(2, 25.00, '2026-04-15', 'Venmo'),
(3, 35.00, '2026-04-16', 'Cash'),
(4, 20.00, '2026-04-17', 'Zelle'),
(5, 30.00, '2026-04-18', 'Credit Card'),
(6, 0.00, '2026-04-19', 'N/A - Cancelled'),
(7, 30.00, '2026-04-20', 'Venmo'),
(8, 35.00, '2026-04-21', 'Cash'),
(9, 30.00, '2026-04-22', 'Credit Card'),
(10, 25.00, '2026-04-23', 'Zelle');

-- =====================================================
-- Verification
-- =====================================================

USE lana_dog_walking;
SELECT COUNT(*) FROM Owners;
SELECT COUNT(*) FROM Walkers;
SELECT COUNT(*) FROM Dogs;
SELECT COUNT(*) FROM Walks;
SELECT COUNT(*) FROM Payments;
