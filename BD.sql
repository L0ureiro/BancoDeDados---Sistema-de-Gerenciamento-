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
