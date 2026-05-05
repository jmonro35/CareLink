CREATE TABLE provider (
	provider_ID int auto_increment primary key,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    specialty varchar(100) not null,
    clinic_location varchar(50) not null
);

CREATE TABLE patient (
	patient_ID int auto_increment primary key, 
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    date_of_birth date not null,
    phone_number int,
    insurance_provider varchar(100)
);

CREATE TABLE appointment (
	appointment_ID int auto_increment primary key,
    appointment_date date,
    appointmnet_time time,
    appointment_status varchar(20),
    patient_ID int, foreign key (patient_ID) references patient(patient_ID),
    provider_ID int, foreign key (provider_ID) references provider(provider_ID)
);

CREATE TABLE visit (
	visit_ID int auto_increment primary key,
    visit_date date,
    diagnosis varchar(50),
    treatment_notes text,
    appointment_ID int, foreign key (appointment_ID) references appointment(appointment_ID)
);

CREATE TABLE service (
	service_ID int auto_increment primary key,
    service_name varchar(50),
    service_description text, 
    service_cost int
);

CREATE TABLE billing (
	billing_ID int auto_increment primary key,
    visit_ID int, foreign key (visit_ID) references visit(visit_ID),
    service_ID int, foreign key (service_ID) references service (service_ID),
    total_amount int,
    payment_status varchar(20)
);