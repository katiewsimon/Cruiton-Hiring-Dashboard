

DROP TABLE IF EXISTS reference_s;

CREATE TABLE reference_s (
reference_id INT AUTO_INCREMENT,
name VARCHAR(40),
email VARCHAR(40),
address_id INT,
phone INT,
PRIMARY KEY (reference_id)
);

DROP TABLE IF EXISTS hr_contacts;

CREATE TABLE hr_contacts (
p_key INT AUTO_INCREMENT,
name VARCHAR(40),
email VARCHAR(40),
phone INT,
PRIMARY KEY (p_key)
);

DROP TABLE IF EXISTS benefits;

CREATE TABLE benefits (
p_key INT,
401k CHAR(1),
health_insurance CHAR(1),
gym_membership CHAR(1),
snacks CHAR(1),
PRIMARY KEY (p_key)
);

DROP TABLE IF EXISTS addresses;


CREATE TABLE addresses (
p_key INT AUTO_INCREMENT,
city VARCHAR(30),
state CHAR(2),
country VARCHAR(30),
PRIMARY KEY (p_key),
FOREIGN KEY (country) REFERENCES countries(country),
FOREIGN KEY (state) REFERENCES states(abbrev)
);



DROP TABLE IF EXISTS companies;

CREATE TABLE companies (
name VARCHAR(40),
website VARCHAR(40),
num_employees INT,
address_id INT,
login VARCHAR(20),
password VARCHAR(20),
PRIMARY KEY (name),
FOREIGN KEY (address_id) REFERENCES addresses(p_key)
);

DROP TABLE IF EXISTS jobs;

CREATE TABLE jobs (
job_id INT AUTO_INCREMENT,
image VARCHAR(50), 
title VARCHAR(40),
company VARCHAR(40),
job_type INT,
job_descrip TEXT,
date_posted DATE,
deadline DATE,
PRIMARY KEY (job_id),
FOREIGN KEY (company) REFERENCES companies(name),
FOREIGN KEY (job_type) REFERENCES job_types(type_id)
);


DROP TABLE IF EXISTS applicants;

CREATE TABLE applicants (
applicant_id INT AUTO_INCREMENT,
name VARCHAR(40),
email VARCHAR(40),
address_id INT,
school_ref INT,
gpa FLOAT,
resume_link VARCHAR(100),
login VARCHAR(20),
password VARCHAR(20),
PRIMARY KEY (applicant_id),
FOREIGN KEY (address_id) REFERENCES addresses(p_key),
FOREIGN KEY (school_ref) REFERENCES schools(school_id)
);

DROP TABLE IF EXISTS applications;

CREATE TABLE applications (
application_id INT AUTO_INCREMENT,
applicant_id INT,
reference_id INT,
cover_letter TEXT,
PRIMARY KEY (application_id),
FOREIGN KEY (applicant_id) REFERENCES applicants(applicant_id),
FOREIGN KEY (reference_id) REFERENCES reference_s(reference_id)
);



DROP TABLE IF EXISTS offers;

CREATE TABLE offers (
p_key INT AUTO_INCREMENT,
offer_date DATE,
job_id INT,
hr_contact INT,
salary FLOAT,
signing_bonus FLOAT,
relocation_fee FLOAT,
year_end_bonus FLOAT,
equity FLOAT,
vacation_days INT,
benefits_id INT,
start_date DATE,
more_info TEXT,
PRIMARY KEY (p_key),
FOREIGN KEY (job_id) REFERENCES jobs(job_id),
FOREIGN KEY (hr_contact) REFERENCES hr_contacts(p_key),
FOREIGN KEY (benefits_id) REFERENCES benefits(p_key)
);





