CREATE DATABASE IF NOT EXISTS 'Datamed';

USE 'Datamed';

CREATE TYPE status AS ENUM('Preenchido', 'Em andamento', 'Não iniciado');

CREATE TABLE Paciente (
  id_usuario SERIAL PRIMARY KEY NOT NULL,
  formulario JSONB,
  status_formulario status NOT NULL,
  email VARCHAR (50) UNIQUE NOT NULL,
  senha VARCHAR (50) NOT NULL,
  nome VARCHAR (50) NOT NULL,
  dt_nascimentO DATE NOT NULL,
  criado_em DATE NOT NULL,
  id_responsavel INT,
  CONSTRAINT fk_responsavel
    FOREIGN KEY (id_responsavel)
      REFERENCES Paciente(id_usuario)
);

CREATE TABLE Medico (
  id_usuario SERIAL PRIMARY KEY NOT NULL,
  crm VARCHAR (9) UNIQUE NOT NULL,
  especialidade VARCHAR (50) NOT NULL,
  email VARCHAR (50) NOT NULL,
  senha VARCHAR (50) NOT NULL,
  nome VARCHAR (50) NOT NULL,
  dt_nascimento DATE NOT NULL,
  criado_em DATE NOT NULL
);

CREATE TABLE Exames (
  id_exame SERIAL PRIMARY KEY NOT NULL,
  nome VARCHAR (50),
  arquivo BYTEA NOT NULL,
  data_adicao DATE NOT NULL,
  id_usuario INT NOT NULL,
  CONSTRAINT fk_usuario
    FOREIGN KEY (id_usuario)
      REFERENCES Paciente(id_usuario)
);

CREATE TABLE atende (
  id_medico INT NOT NULL,
  id_paciente INT NOT NULL,
  CONSTRAINT fk_medico
    FOREIGN KEY (id_medico)
      REFERENCES Medico(id_usuario),
  CONSTRAINT fk_paciente
   FOREIGN KEY (id_paciente)
     REFERENCES Paciente(id_usuario)
)
