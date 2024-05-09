-- Inserting fake data into TB_Usuario
INSERT INTO "TB_Usuario" ("nome") VALUES
  ('John Doe'),
  ('Jane Smith'),
  ('Michael Johnson'),
  ('Emily Brown'),
  ('William Taylor');

-- Inserting fake data into TB_Paciente
INSERT INTO "TB_Paciente" ("id_usuario") VALUES
  (1),
  (2),
  (3),
  (4),
  (5);

-- Inserting fake data into TB_Medico
INSERT INTO "TB_Medico" ("id_usuario", "crm") VALUES
  (3, 'CRM12345'),
  (4, 'CRM67890');

-- Inserting fake data into RL_DEPENDENTE
INSERT INTO "RL_DEPENDENTE" ("id_responsavel", "id_dependente") VALUES
  (1, 2),
  (2, 3),
  (2, 4);

-- Inserting fake data into RL_MEDICO_DEPENDENTE
INSERT INTO "RL_MEDICO_DEPENDENTE" ("id_medico", "id_paciente") VALUES
  (1, 2),
  (2, 3),
  (2, 4);

-- Inserting fake data into TB_Exame
INSERT INTO "TB_Exame" ("idExame", "name", "url", "id_Paciente") VALUES
  (1, 'Blood Test', 'http://example.com/bloodtest', 2),
  (2, 'MRI Scan', 'http://example.com/mri', 3),
  (3, 'X-Ray', 'http://example.com/xray', 4);

-- Inserting fake data into TB_Dados_Saude
INSERT INTO "TB_Dados_Saude" ("nome") VALUES
  ('Blood Pressure'),
  ('Heart Rate'),
  ('Cholesterol Levels');

-- Inserting fake data into RL_Dados_Saude_Exame
INSERT INTO "RL_Dados_Saude_Exame" ("id_rl_dados_saude_exame", "id_Exame", "id_Dados_Saude") VALUES
  (1, 1, 1),
  (2, 1, 2),
  (3, 2, 1),
  (4, 2, 3),
  (5, 3, 1),
  (6, 3, 2);
