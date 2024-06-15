INSERT INTO Users (full_name, email, password, birth_date, biological_sex) VALUES
('John Doe', 'john.doe@example.com', 'password123', '1980-01-01', 'M'),
('Jane Smith', 'jane.smith@example.com', 'password123', '1990-02-02', 'F'),
('Alice Johnson', 'alice.johnson@example.com', 'password123', '1985-03-03', 'F'),
('Bob Brown', 'bob.brown@example.com', 'password123', '1975-04-04', 'M');

INSERT INTO Doctors (user_id, crm, specialty) VALUES
(1, 'CRM12345', 'Cardiology'),
(2, 'CRM67890', 'Dermatology');

INSERT INTO Dependents (user_id, dependent_id, confirmed) VALUES
(1, 3, TRUE),
(2, 4, FALSE);

INSERT INTO Tests (user_id, test_name, url) VALUES
(1, 'Blood Test', 'http://example.com/test1'),
(2, 'Urea Test', 'http://example.com/test2'),
(3, 'Creatinine Test', 'http://example.com/test3');

INSERT INTO Forms (user_id, weight, height, bmi, blood_type, abdominal_circumference, allergies, diseases, medications, family_history, important_notes, images_reports, form_status) VALUES
(1, '70kg', '170cm', '24.2', 'O+', '80cm', 'None', 'Hypertension', 'Aspirin', 'Heart disease in family', 'N/A', 'http://example.com/report1', 'Filled'),
(2, '60kg', '160cm', '23.4', 'A+', '70cm', 'Peanuts', 'Asthma', 'Inhaler', 'No history', 'N/A', 'http://example.com/report2', 'In progress');

INSERT INTO DerivedHealthData (form_id, test_id, name, value) VALUES
(1, 1, 'hemoglobin', '14.0g/dL'),
(2, 2, 'Urea', '40mg/dL');
