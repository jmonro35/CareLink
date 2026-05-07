CREATE TABLE provider (
    provider_ID INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50)  NOT NULL,
    last_name VARCHAR(50)  NOT NULL,
    specialty VARCHAR(100) NOT NULL,
    clinic_location VARCHAR(100) NOT NULL
);

CREATE TABLE patient (
    patient_ID INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50)  NOT NULL,
    last_name  VARCHAR(50)  NOT NULL,
    date_of_birth DATE NOT NULL,
    phone_number BIGINT,
    insurance_provider VARCHAR(100)
);

CREATE TABLE appointment (
    appointment_ID INT AUTO_INCREMENT PRIMARY KEY,
    appointment_date DATE,
    appointment_time TIME,
    appointment_status VARCHAR(20),
    patient_ID INT,
    provider_ID INT,
    FOREIGN KEY (patient_ID)  REFERENCES patient(patient_ID),
    FOREIGN KEY (provider_ID) REFERENCES provider(provider_ID)
);

CREATE TABLE visit (
    visit_ID INT AUTO_INCREMENT PRIMARY KEY,
    visit_date DATE,
    diagnosis VARCHAR(150),
    treatment_notes TEXT,
    appointment_ID INT,
    FOREIGN KEY (appointment_ID) REFERENCES appointment(appointment_ID)
);

CREATE TABLE service (
    service_ID INT AUTO_INCREMENT PRIMARY KEY,
    service_name VARCHAR(100),
    service_description TEXT,
    service_cost DECIMAL(10,2)
);

CREATE TABLE billing (
    billing_ID INT AUTO_INCREMENT PRIMARY KEY,
    visit_ID INT,
    service_ID INT,
    total_amount DECIMAL(10,2),
    payment_status VARCHAR(20),
    FOREIGN KEY (visit_ID) REFERENCES visit(visit_ID),
    FOREIGN KEY (service_ID) REFERENCES service(service_ID)
);