-- Criação da tabela de usuário
CREATE TABLE Usuario (
    id SERIAL PRIMARY KEY,
    nome_completo VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL,
    data_nascimento DATE NOT NULL,
    sexo_biologico CHAR(1) CHECK (sexo_biologico IN ('M', 'F')),
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    formulario JSONB,
    status_formulario VARCHAR(20) CHECK (status_formulario IN ('Preenchido', 'Em andamento', 'Não iniciado')) DEFAULT 'Não iniciado'
);

-- Criação da tabela de médico
CREATE TABLE Medico (
    id_usuario INT PRIMARY KEY,
    crm VARCHAR(50) NOT NULL,
    especialidade VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id)
);

-- Criação da tabela de dependentes
CREATE TABLE Dependente (
    id_usuario INT,
    id_dependente INT,
    confirmado BOOLEAN DEFAULT FALSE,
    PRIMARY KEY (id_usuario, id_dependente),
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id),
    FOREIGN KEY (id_dependente) REFERENCES Usuario(id)
);

-- Criação da tabela de exames
CREATE TABLE Exame (
    id SERIAL PRIMARY KEY,
    id_usuario INT NOT NULL,
    nome_exame VARCHAR(255) NOT NULL,
    url VARCHAR(255) NOT NULL,
    data_submissao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id)
);