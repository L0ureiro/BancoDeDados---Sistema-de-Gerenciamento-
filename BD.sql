-- Criação da tabela Projeto
CREATE TABLE Projeto (
    id_projeto INT PRIMARY KEY,
    nome_projeto VARCHAR(255) NOT NULL,
    orcamento FLOAT,
    descricao_projeto TEXT,
);
-- Criação da tabela Cronograma
CREATE TABLE Cronograma (
    id_cronograma INT PRIMARY KEY,
    id_tarefa INT,
    id_projeto INT,
    data_inicio DATE,
    data_fim DATE,
    Duracao_estimada DATE,
    FOREIGN KEY (id_tarefa) REFERENCES Tarefa(id_tarefa),
    FOREIGN KEY (id_projeto) REFERENCES Tarefa(id_projeto)
);
-- Criação da tabela Equipe
CREATE TABLE Equipe (
    id_equipe INT PRIMARY KEY,
    nome_equipe VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    id_departamento INT,
    FOREIGN KEY (id_departamento) REFERENCES Departamento(id_departamento)
);
-- Criação da tabela Departamento
CREATE TABLE Departamento (
    id_departamento INT PRIMARY KEY,
    nome_departamento VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);
-- Criação da tabela Tarefa
CREATE TABLE Tarefa (
    id_tarefa INT PRIMARY KEY,
    descricao_tarefa VARCHAR(255) NOT NULL,
    nome VARCHAR(255) NOT NULL,
    complexidade VARCHAR(255) NOT NULL,
    id_projeto INT,
    FOREIGN KEY (id_projeto) REFERENCES Projeto(id_projeto)
);
-- Criação da tabela tarefa_empregado
CREATE TABLE Tarefa_Empregado(
    id_tarefa INT,
    id_empregado INT,
    FOREIGN KEY (id_empregado) REFERENCES Empregado(id_empregado),
    FOREIGN KEY (id_tarefa) REFERENCES Tarefa(id_tarefa)
);
-- Criação da tabela Empregado
CREATE TABLE Empregado (
    id_empregado INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    id_tarefa INT,
    id_equipe INT,
    FOREIGN KEY (id_tarefa) REFERENCES Tarefa(id_tarefa),
    FOREIGN KEY (id_equipe) REFERENCES Equipe(id_equipe)
);
-- Criação da tabela Contato
CREATE TABLE Contato(
    id_empregado INT,
    telefone INT,
    email VARCHAR(255),
    FOREIGN KEY (id_empregado) REFERENCES Empregado(id_empregado)
)

