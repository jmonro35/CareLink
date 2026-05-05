INSERT INTO provider(first_name, last_name, specialty, clinic_location)
VALUES
("Alice", "Morgan", "Family Medicine", "Atlanta Medical Center"),
("Brian", "Nguyen", "Cardiology", "Piedmont Heart Clinic"),
("Catherine", "Walsh", "Dermatology","Midtown Skin Institute"),
("Derek","Osei","Orthopedics","Northside Ortho Group"),
("Fatima", "Hassan","Neurology","Emory Neurology Center");

INSERT INTO patient (first_name, last_name, date_of_birth, phone_number, insurance_provider)
VALUES
('James', 'Carter', '1959-12-28', 4045555506, 'Cigna'),
('Maria', 'Lopez', '1970-01-10', 6785552679, 'Molina'),
('David', 'Kim', '1957-10-19', 4705551520, 'Blue Cross'),
('Sarah', 'Nguyen', '1958-05-29', 6785554811, 'Molina'),
('Robert', 'Patel', '2004-01-04', 4045554257, 'Molina');

INSERT INTO appointment (appointment_date, appointment_time, appointment_status)
VALUES
('2024-08-30', '14:15','Completed'),
('2024-08-08','13:45','Completed'),
('2024-01-26','09:00','Completed'),
('2024-02-25','11:15','Completed'),
('2024-03-12','14:15','Completed');