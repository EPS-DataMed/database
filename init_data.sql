INSERT INTO Users (full_name, email, password, birth_date, biological_sex)
VALUES 
('João Silva', 'joao.silva@example.com', 'senha123', '1980-01-01', 'M'),
('Maria Oliveira', 'maria.oliveira@example.com', 'senha123', '1990-05-15', 'F'),
('Carlos Souza', 'carlos.souza@example.com', 'senha123', '1985-10-20', 'M');

INSERT INTO Doctors (user_id, crm, specialty)
VALUES 
(1, '123456', 'Cardiology'),
(2, '654321', 'Pediatrics'),
(3, '111222', 'Orthopedics');

INSERT INTO Dependents (user_id, dependent_id, confirmed)
VALUES 
(1, 2, TRUE),
(1, 3, FALSE),
(2, 3, TRUE);

INSERT INTO Exams (user_id, exam_name, url)
VALUES 
(1, 'Complete Blood Count', 'http://example.com/complete_blood_count1.pdf'),
(2, 'X-Ray', 'http://example.com/xray1.pdf'),
(3, 'Ultrasound', 'http://example.com/ultrasound1.pdf');

INSERT INTO Forms (user_id, weight, height, bmi, blood_type, abdominal_circumference, allergies, diseases, medications, family_history, important_notes, reports_images, form_status)
VALUES 
(1, '70kg', '1.75m', '22.9', 'O+', '85cm', 'None', 'None', 'None', 'Diabetes history', 'None', 'http://example.com/image1.pdf', 'Filled'),
(2, '60kg', '1.65m', '22.0', 'A+', '80cm', 'None', 'None', 'None', 'Hypertension history', 'None', 'http://example.com/image2.pdf', 'In progress'),
(3, '90kg', '1.80m', '27.8', 'B+', '90cm', 'Pollen allergy', 'Asthma', 'Albuterol', 'Asthma history', 'Needs follow-up', 'http://example.com/image3.pdf', 'Not started');

INSERT INTO DerivedHealthData (form_id, exam_id, name, value)
VALUES 
(1, 1, 'hemoglobin', '14'),
(2, 2, 'ast', '20'),
(3, 3, 'alt', '25');
