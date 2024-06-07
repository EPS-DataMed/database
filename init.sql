-- Criação da tabela de usuário
CREATE TABLE Usuarios (
    id SERIAL PRIMARY KEY,
    nome_completo VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL,
    data_nascimento DATE NOT NULL,
    sexo_biologico CHAR(1) CHECK (sexo_biologico IN ('M', 'F')),
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Criação da tabela de médico
CREATE TABLE Medicos (
    id_usuario INT PRIMARY KEY,
    crm VARCHAR(50) NOT NULL,
    especialidade VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id)
);

-- Criação da tabela de dependentes
CREATE TABLE Dependentes (
    id_usuario INT,
    id_dependente INT,
    confirmado BOOLEAN DEFAULT FALSE,
    PRIMARY KEY (id_usuario, id_dependente),
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id),
    FOREIGN KEY (id_dependente) REFERENCES Usuarios(id)
);

-- Criação da tabela de exames
CREATE TABLE Exames (
    id SERIAL PRIMARY KEY,
    id_usuario INT NOT NULL,
    nome_exame VARCHAR(255) NOT NULL,
    url VARCHAR(255) NOT NULL,
    data_submissao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id)
);

-- Criação da tabela de formulários
CREATE TABLE Formularios (
    id SERIAL PRIMARY KEY,
    id_usuario INT NOT NULL,
    peso VARCHAR(255) NOT NULL,
    altura VARCHAR(255) NOT NULL,
    imc VARCHAR(255) NOT NULL,
    tipo_sanguineo VARCHAR(255) NOT NULL,
    circunferencia_abdominal VARCHAR(255) NOT NULL,
    alergias VARCHAR(255),
    doencas VARCHAR(255),
    medicamentos VARCHAR(255),
    historico_familiar VARCHAR(255),
    notas_importantes VARCHAR(255),
    relatorios_imagens VARCHAR(255),
    status_formulario VARCHAR(20) CHECK (status_formulario IN ('Preenchido', 'Em andamento', 'Não iniciado')) DEFAULT 'Não iniciado',
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id)
);

-- Criação da tabela para dados de saúde derivados de exames
CREATE TABLE DadosSaudeDerivados (
    id SERIAL PRIMARY KEY,
    id_formulario INT NOT NULL,
    id_exame INT NOT NULL,
    nome VARCHAR(255) NOT NULL,
    valor VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_formulario) REFERENCES Formularios(id),
    FOREIGN KEY (id_exame) REFERENCES Exames(id)
);
