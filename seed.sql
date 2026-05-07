INSERT INTO provider (first_name, last_name, specialty, clinic_location)
VALUES
    ('Alice', 'Morgan', 'Family Medicine','Atlanta Medical Center'),
    ('Brian','Nguyen', 'Cardiology','Piedmont Heart Clinic'),
    ('Catherine', 'Walsh','Dermatology','Midtown Skin Institute'),
    ('Derek','Osei','Orthopedics','Northside Ortho Group'),
    ('Fatima','Hassan', 'Neurology','Emory Neurology Center');

INSERT INTO patient (first_name, last_name, date_of_birth, phone_number, insurance_provider)
VALUES
    ('James','Carter','1959-12-28', 4045555506,'Cigna'),
    ('Maria','Lopez','1970-01-10',6785552679,'Molina'),
    ('David','Kim''1957-10-19',4705551520,'Blue Cross'),
    ('Sarah','Nguyen','1958-05-29',6785554811,'Molina'),
    ('Robert','Patel','2004-01-04',4045554257,'Molina');

INSERT INTO appointment (appointment_date, appointment_time, appointment_status, patient_ID, provider_ID)
VALUES
    ('2024-01-26','09:00','Completed',3,4),
    ('2024-02-25','11:15','Completed',1,2),
    ('2024-03-12','14:15','Completed',2,1),
    ('2024-08-08','13:45','Completed',4,5),
    ('2024-08-30','14:15','Completed',5,3);

INSERT INTO service (service_name, service_description, service_cost)
VALUES
    ('Office Visit','Routine outpatient visit for an established patient',150.00),
    ('ECG','Electrocardiogram to evaluate heart rhythm and function',200.00),
    ('X-Ray Extremity','Radiographic imaging of a limb or joint',175.00),
    ('Neurological Evaluation','Comprehensive neurological examination and assessment',300.00),
    ('Skin Biopsy','Excision and pathological analysis of a skin lesion',250.00);

INSERT INTO visit (visit_date, diagnosis, treatment_notes, appointment_ID)
VALUES
    ('2024-01-26','Right Knee Strain','Patient reports right knee pain after fall. X-ray ordered. Recommended physical therapy and NSAIDs for four weeks.',1),
    ('2024-02-25','Atrial Fibrillation','Patient reports palpitations and shortness of breath. ECG confirms AFib. Anticoagulation therapy initiated. Follow-up in four weeks.',2),
    ('2024-03-12', 'Acute Upper Respiratory Infection','Patient presents with cough and congestion for five days. Viral etiology suspected. Supportive care and rest recommended.',3),
    ('2024-08-08', 'Migraine with Aura','Recurrent migraines with visual disturbance reported. Sumatriptan prescribed. MRI ordered to rule out secondary causes.',4),
    ('2024-08-30', 'Suspicious Nevus Left Arm','Irregular pigmented lesion noted on left forearm. Skin biopsy performed and sent to pathology. Follow-up scheduled.',5);

INSERT INTO billing (visit_ID, service_ID, total_amount, payment_status)
VALUES
    (1,1,150.00,'Paid'),
    (1,3,175.00,'Paid'),
    (2,1,150.00,'Paid'),
    (2,2,200.00,'Pending'),
    (3,1,150.00,'Paid'),
    (4,1,150.00,'Paid'),
    (4,4,300.00,'Pending'),
    (5,1,150.00,'Paid'),
    (5,5,250.00,'Pending');

