-- Creation of the Users table
CREATE TABLE Users (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    birth_date DATE NOT NULL,
    biological_sex VARCHAR(1) CHECK (biological_sex IN ('M', 'F')),
    creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Creation of the Doctors table
CREATE TABLE Doctors (
    user_id INT PRIMARY KEY,
    crm VARCHAR(50) NOT NULL,
    specialty VARCHAR(255) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(id)
);

-- Creation of the Dependents table
CREATE TABLE Dependents (
    user_id INT,
    dependent_id INT,
    confirmed BOOLEAN DEFAULT FALSE,
    PRIMARY KEY (user_id, dependent_id),
    FOREIGN KEY (user_id) REFERENCES Users(id),
    FOREIGN KEY (dependent_id) REFERENCES Users(id)
);

-- Creation of the Exams table
CREATE TABLE Exams (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    exam_name VARCHAR(255) NOT NULL,
    url VARCHAR(255) NOT NULL,
    submission_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(id)
);

-- Creation of the Forms table
CREATE TABLE Forms (
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
    reports_images VARCHAR(255),
    form_status VARCHAR(20) CHECK (form_status IN ('Filled', 'In progress', 'Not started')) DEFAULT 'Not started',
    FOREIGN KEY (user_id) REFERENCES Users(id)
);

-- Creation of the DerivedHealthData table
CREATE TABLE DerivedHealthData (
    id SERIAL PRIMARY KEY,
    form_id INT NOT NULL,
    exam_id INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    value VARCHAR(255) NOT NULL,
    FOREIGN KEY (form_id) REFERENCES Forms(id),
    FOREIGN KEY (exam_id) REFERENCES Exams(id)
);
