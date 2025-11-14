
--------Insert Statement (sample data) ----------------------------------


INSERT INTO customers (name, phone_number, CNIC) VALUES
('Ali Raza', '03001234567', '42101-1234567-1'),
('Manjeet Kumar', '03363706715', '44302-9876543-2'),
('Sara Khan', '03211223344', '61101-5555555-9'),
('Bilal Ahmed', '03005553322', '37405-1122334-7'),
('Ayesha Malik', '03152229988', '35201-6677889-0');


INSERT INTO cars (model, brand, reg_number, type, daily_price, availability) VALUES
('Civic', 'Honda', 'ABC-123', 'Sedan', 7000, TRUE),
('Corolla', 'Toyota', 'DEF-456', 'Sedan', 6500, TRUE),
('Sportage', 'KIA', 'GHI-789', 'SUV', 12000, TRUE),
('Vitz', 'Toyota', 'JKL-321', 'Hatchback', 4500, TRUE),
('Aqua', 'Toyota', 'MNO-654', 'Hybrid', 5500, TRUE),
('Alto', 'Suzuki', 'PQR-987', 'Hatchback', 3500, TRUE);


INSERT INTO bookings (customer_id, car_id, start_date, end_date, total_amount, booking_status) VALUES
(1, 1, '2025-01-05', '2025-01-07', 14000, 'completed'),
(2, 3, '2025-02-01', '2025-02-03', 24000, 'completed'),
(3, 4, '2025-03-10', '2025-03-12', 9000, 'completed'),
(4, 2, '2025-03-20', '2025-03-25', 32500, 'active'),
(5, 6, '2025-04-01', '2025-04-02', 3500, 'cancelled'),
(1, 5, '2025-04-10', '2025-04-12', 11000, 'active'),
(3, 1, '2025-05-01', '2025-05-03', 14000, 'active'),
(2, 4, '2025-05-05', '2025-05-06', 4500, 'completed');


INSERT INTO payments (booking_id, amount_paid, payment_date) VALUES
(1, 7000, '2025-01-05'),
(1, 7000, '2025-01-07'),
(2, 24000, '2025-02-03'),
(3, 9000, '2025-03-12'),
(4, 20000, '2025-03-22'),
(4, 12500, '2025-03-25'),
(5, 3500, '2025-04-01'),
(6, 11000, '2025-04-12'),
(7, 7000, '2025-05-01'),
(8, 4500, '2025-05-06');


INSERT INTO maintenance (car_id, maintenance_date, description, type, cost) VALUES
(1, '2025-01-15', 'Oil change and tuning', 'Routine Service', 3000),
(3, '2025-02-10', 'Brake pads replaced', 'Repair', 8000),
(4, '2025-03-08', 'Engine check-up', 'Routine Service', 5000),
(5, '2025-03-30', 'Hybrid battery inspection', 'Special Service', 12000),
(6, '2025-04-15', 'Tires replaced', 'Repair', 15000);
