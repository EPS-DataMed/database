INSERT INTO Usuario (nome_completo, email, senha, data_nascimento, sexo_biologico, formulario, status_formulario)
VALUES
('Maria Silva', 'maria.silva@example.com', 'senha123', '1990-05-14', 'F', '{"questao1": "resposta1"}', 'Preenchido'),
('João Souza', 'joao.souza@example.com', 'senha123', '1985-08-21', 'M', '{"questao1": "resposta1"}', 'Em andamento'),
('Ana Costa', 'ana.costa@example.com', 'senha123', '1992-11-30', 'F', '{"questao1": "resposta1"}', 'Não iniciado');

INSERT INTO Medico (id_usuario, crm, especialidade)
VALUES
(1, 'CRM123456', 'Cardiologia'),
(2, 'CRM654321', 'Neurologia'),
(3, 'CRM112233', 'Pediatria');

INSERT INTO Dependente (id_usuario, id_dependente, confirmado)
VALUES
(1, 2, TRUE),
(1, 3, FALSE),
(2, 3, TRUE);

INSERT INTO Exame (id_usuario, nome_exame, url)
VALUES
(1, 'Hemograma Completo', 'http://example.com/exames/hemograma1.pdf'),
(2, 'Ressonância Magnética', 'http://example.com/exames/rm2.pdf'),
(3, 'Ultrassonografia', 'http://example.com/exames/us3.pdf');
