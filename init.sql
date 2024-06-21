DROP TABLE IF EXISTS "DerivedHealthData" CASCADE;
DROP TABLE IF EXISTS "Forms" CASCADE;
DROP TABLE IF EXISTS "Tests" CASCADE;
DROP TABLE IF EXISTS "Dependents" CASCADE;
DROP TABLE IF EXISTS "Doctors" CASCADE;
DROP TABLE IF EXISTS "Users" CASCADE;

CREATE TABLE "Users" (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(2048) NOT NULL,
    birth_date DATE NOT NULL,
    biological_sex VARCHAR(1) CHECK (biological_sex IN ('M', 'F')),
    creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "Doctors" (
    user_id INT PRIMARY KEY,
    crm VARCHAR(50) NOT NULL,
    specialty VARCHAR(255) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES "Users"(id)
);

CREATE TABLE "Dependents" (
    user_id INT,
    dependent_id INT,
    confirmed BOOLEAN DEFAULT FALSE,
    PRIMARY KEY (user_id, dependent_id),
    FOREIGN KEY (user_id) REFERENCES "Users"(id),
    FOREIGN KEY (dependent_id) REFERENCES "Users"(id)
);

CREATE TABLE "Tests" (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    test_name VARCHAR(255) NOT NULL,
    url VARCHAR(400) NOT NULL,
    test_date TIMESTAMP DEFAULT NULL,
    submission_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES "Users"(id)
);

CREATE TABLE "Forms" (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    weight VARCHAR(255),
    height VARCHAR(255),
    bmi VARCHAR(255),
    blood_type VARCHAR(255),
    abdominal_circumference VARCHAR(255),
    allergies VARCHAR(255),
    diseases VARCHAR(255),
    medications VARCHAR(255),
    family_history VARCHAR(255),
    important_notes VARCHAR(255),
    images_reports VARCHAR(255),
    form_status VARCHAR(20) CHECK (form_status IN ('Filled', 'In progress', 'Not started')) DEFAULT 'Not started',
    latest_red_blood_cell VARCHAR(255),
    latest_hemoglobin VARCHAR(255),
    latest_hematocrit VARCHAR(255),
    latest_glycated_hemoglobin VARCHAR(255),
    latest_ast VARCHAR(255),
    latest_alt VARCHAR(255),
    latest_urea VARCHAR(255),
    latest_creatinine VARCHAR(255),
    FOREIGN KEY (user_id) REFERENCES "Users"(id)
);

CREATE TABLE "DerivedHealthData" (
    id SERIAL PRIMARY KEY,
    form_id INT NOT NULL,
    test_id INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    value VARCHAR(255) NOT NULL,
    FOREIGN KEY (form_id) REFERENCES "Forms"(id),
    FOREIGN KEY (test_id) REFERENCES "Tests"(id)
);