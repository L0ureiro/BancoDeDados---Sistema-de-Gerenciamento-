-- Criação da tabela Empregado
CREATE TABLE Empregado (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    id_equipe INTEGER,
    nome TEXT NOT NULL,
    cargo TEXT NOT NULL,
    email TEXT,
    FOREIGN KEY (id_equipe) REFERENCES Equipe(id_equipe)
);
-- Criação da tabela Telefone
CREATE TABLE Telefone(
    id_empregado INTEGER,
    telefone INTEGER,
    PRIMARY KEY (id_empregado, telefone),
    FOREIGN KEY (id_empregado) REFERENCES Empregado(id_empregado)
);
-- Criação da tabela Departamento
CREATE TABLE Departamento (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    id_chefe INTEGER NOT NULL,
    nome TEXT NOT NULL,
    descricao TEXT,
    FOREIGN KEY (id_chefe) REFERENCES Empregado(id_empregado)
);
-- Criação da tabela Equipe
CREATE TABLE Equipe (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    id_departamento INTEGER NOT NULL,
    id_lider INTEGER NOT NULL,
    nome TEXT NOT NULL,
    descricao TEXT,
    FOREIGN KEY (id_departamento) REFERENCES Departamento(id_departamento),
    FOREIGN KEY (id_lider) REFERENCES Empregado(id_empregado)
);
-- Criação da tabela Projeto
CREATE TABLE Projeto (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    id_equipe INTEGER NOT NULL,
    nome TEXT NOT NULL,
    orcamento FLOAT NOT NULL,
    descricao TEXT,
    FOREIGN KEY (id_equipe) REFERENCES Equipe(id_equipe)
);
-- Criação da tabela Tarefa
CREATE TABLE Tarefa (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    id_etapa INTEGER NOT NULL,
    nome TEXT NOT NULL,
    descricao TEXT,
    complexidade TEXT NOT NULL DEFAULT 'Media',
    FOREIGN KEY (id_etapa) REFERENCES Etapa(id_etapa)
);
-- Criação da tabela Etapa
CREATE TABLE Etapa (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    id_projeto INTEGER,
    inicio DATE,
    termino_estimado DATE,
    termino_real DATE,
    descricao TEXT,
    FOREIGN KEY (id_projeto) REFERENCES Tarefa(id_projeto)
);
-- Criação da tabela tarefa_empregado
CREATE TABLE Tarefa_Empregado(
    id_tarefa INTEGER NOT NULL,
    id_empregado INTEGER NOT NULL,
    PRIMARY KEY (id_tarefa, id_empregado),
    FOREIGN KEY (id_empregado) REFERENCES Empregado(id_empregado),
    FOREIGN KEY (id_tarefa) REFERENCES Tarefa(id_tarefa)
);
