INSERT INTO Usuarios (nome_completo, email, senha, data_nascimento, sexo_biologico)
VALUES 
('João Silva', 'joao.silva@example.com', 'senha123', '1980-01-01', 'M'),
('Maria Oliveira', 'maria.oliveira@example.com', 'senha123', '1990-05-15', 'F'),
('Carlos Souza', 'carlos.souza@example.com', 'senha123', '1985-10-20', 'M');

INSERT INTO Medicos (id_usuario, crm, especialidade)
VALUES 
(1, '123456', 'Cardiologia'),
(2, '654321', 'Pediatria'),
(3, '111222', 'Ortopedia');

INSERT INTO Dependentes (id_usuario, id_dependente, confirmado)
VALUES 
(1, 2, TRUE),
(1, 3, FALSE),
(2, 3, TRUE);

INSERT INTO Exames (id_usuario, nome_exame, url)
VALUES 
(1, 'Hemograma', 'http://example.com/hemograma1.pdf'),
(2, 'Raio-X', 'http://example.com/raiox1.pdf'),
(3, 'Ultrassom', 'http://example.com/ultrassom1.pdf');

INSERT INTO Formularios (id_usuario, peso, altura, imc, tipo_sanguineo, circunferencia_abdominal, alergias, doencas, medicamentos, historico_familiar, notas_importantes, relatorios_imagens, status_formulario)
VALUES 
(1, '70kg', '1.75m', '22.9', 'O+', '85cm', 'Nenhuma', 'Nenhuma', 'Nenhum', 'Histórico de diabetes', 'Nenhuma', 'http://example.com/image1.pdf', 'Preenchido'),
(2, '60kg', '1.65m', '22.0', 'A+', '80cm', 'Nenhuma', 'Nenhuma', 'Nenhum', 'Histórico de hipertensão', 'Nenhuma', 'http://example.com/image2.pdf', 'Em andamento'),
(3, '90kg', '1.80m', '27.8', 'B+', '90cm', 'Alergia a pólen', 'Asma', 'Albuterol', 'Histórico de asma', 'Precisa de acompanhamento', 'http://example.com/image3.pdf', 'Não iniciado');

INSERT INTO DadosSaudeDerivados (id_formulario, id_exame, nome, valor)
VALUES 
(1, 1, 'hemoglobin', '14'),
(2, 2, 'ast', '20'),
(3, 3, 'alt', '25');
