-- Inserção de dados na tabela Empregado
INSERT INTO Empregado (id_equipe, nome, cargo, email) VALUES
(1, 'João Silva', 'Desenvolvedor', 'joao.silva@hotmail.com'),
(2, 'Maria Oliveira', 'Analista de Negócios', 'maria.oliveira@yahoo.com'),
(3, 'Carlos Souza', 'Gerente de Projetos', 'carlos.souza@yahoo.com'),
(1, 'José Santos', 'Desenvolvedor Sênior', 'jose.santos@gmail.com'),
(2, 'Ana Pereira', 'Analista de Negócios', 'ana.pereira@gmail.com'),
(3, 'Paulo Costa', 'Gerente de Projetos', 'paulo.costa@gmail.com'),
(NULL, 'Pedro Rodrigues', 'Gerente de Projetos', 'pedro.rodrigues@hotmail.com'),
(NULL, 'Ziraldo Zonildo', 'Analista de Negócios', 'ziraldo.zonildo@hotmail.com.br');

-- Inserção de dados na tabela Telefone
INSERT INTO Telefone (id_empregado, telefone) VALUES
(1, 123456789),
(2, 987654321),
(2, 546372819),
(2, 192837465),
(3, 555555555),
(4, 111111111),
(4, 999999999),
(5, 222222222),
(6, 333333333),
(7, 444444444);

-- Inserção de dados na tabela Departamento
INSERT INTO Departamento (id_chefe, nome, descricao) VALUES
(1, 'TI', 'Departamento de Tecnologia da Informação'),
(2, 'Finanças', 'Departamento Financeiro'),
(3, 'RH', 'Recursos Humanos');

-- Inserção de dados na tabela Equipe
INSERT INTO Equipe (id_departamento, id_lider, nome, descricao) VALUES
(1, 1, 'Equipe de Desenvolvimento', 'Responsável pelo desenvolvimento de software'),
(1, 1, 'Equipe de Testes', 'Responsável por testar o software'),
(1, 4, 'Equipe de Design', 'Responsável pelo design do software'),
(2, 2, 'Equipe de Recrutamento', 'Responsável por recrutar novos talentos'),
(2, 5, 'Equipe de Contas a Pagar', 'Responsável por pagar as contas'),
(2, 6, 'Equipe de Contas a Receber', 'Responsável por receber as contas'),
(2, 1, 'Equipe de Contabilidade', 'Responsável pela contabilidade e finanças'),
(3, 3, 'Equipe de Recursos Humanos', 'Responsável por gerenciar os recursos humanos'),
(3, 3, 'Equipe de Treinamento', 'Responsável por treinar os funcionários');

-- Inserção de mais dados na tabela Projeto
INSERT INTO Projeto (id_equipe, nome, orcamento, descricao) VALUES
(1, 'Sistema Legal', 100000, 'Desenvolvimento de um novo sistema'),
(1, 'Sistema Bacana', 200000, 'Desenvolvimento de um velho sistema'),
(1, 'Conserto', 30000, 'Conserto de um sistema quebrado'),
(2, 'Recrutamento', 50000, 'Recrutamento de novos talentos'),
(2, 'Contas', 10000, 'Contas a pagar e receber'),
(2, 'Contabilidade', 20000, 'Contabilidade e finanças'),
(3, 'Recursos Humanos', 10000, 'Gerenciamento dos recursos humanos'),
(3, 'Treinamento', 20000, 'Treinamento de funcionários'),
(3, 'Melhoria', 30000, 'Melhoria dos processos financeiros'),
(3, 'Expansão', 40000, 'Expansão da equipe de Recrutamento');

-- Inserção de dados na tabela Etapa
INSERT INTO Etapa (id_projeto, inicio, termino_estimado, termino_real, descricao) VALUES
-- Projeto A
(1, '2023-01-01', '2023-02-01', '2023-02-15', 'Etapa 1 - Desenvolvimento do novo sistema'),
(1, '2023-02-16', '2023-03-01', '2023-03-10', 'Etapa 2 - Testes do novo sistema'),
(1, '2023-03-11', '2023-03-15', '2023-03-20', 'Etapa 3 - Implantação do novo sistema'),
(1, '2023-03-21', '2023-04-01', '2023-04-05', 'Etapa 4 - Treinamento dos usuários'),

-- Projeto B
(2, '2023-03-01', '2023-03-15', '2023-03-20', 'Etapa 1 - Expansão da equipe de Recrutamento'),
(2, '2023-03-21', '2023-04-01', '2023-04-05', 'Etapa 2 - Treinamento de Novos Recrutas'),
(2, '2023-04-06', '2023-04-15', '2023-04-20', 'Etapa 3 - Entrevistas com Fornecedores'),

-- Projeto C
(3, '2023-04-01', '2023-04-15', '2023-04-20', 'Etapa 1 - Melhoria dos processos financeiros'),
(3, '2023-04-21', '2023-05-01', '2023-05-05', 'Etapa 2 - Implementação de Melhorias nos Processos');


-- Inserção de dados na tabela Tarefa
INSERT INTO Tarefa (id_etapa, nome, descricao, complexidade) VALUES
(1, 'Análise de Requisitos', 'Realizar análise de requisitos para o novo sistema', 'Média'),
(1, 'Design de Interface', 'Criar o design da interface do novo sistema', 'Alta'),
(2, 'Desenvolvimento do Back-end', 'Implementar a lógica do back-end do sistema', 'Alta'),
(2, 'Desenvolvimento do Front-end', 'Implementar a interface do usuário', 'Alta'),
(3, 'Entrevistas com Fornecedores', 'Realizar entrevistas com fornecedores de recrutamento', 'Baixa'),
(4, 'Treinamento de Novos Recrutas', 'Conduzir treinamento para novos recrutas', 'Baixa'),
(5, 'Análise de Custos', 'Analisar custos do projeto C', 'Alta'),
(5, 'Relatório de Desempenho', 'Elaborar relatório de desempenho do projeto C', 'Baixa'),
(6, 'Levantamento de Processos Atuais', 'Realizar levantamento dos processos financeiros atuais', 'Média'),
(6, 'Implementação de Melhorias', 'Implementar melhorias nos processos financeiros', 'Alta');

-- Inserção de dados na tabela Tarefa_Empregado
INSERT INTO Tarefa_Empregado (id_tarefa, id_empregado) VALUES
-- Projeto A
(1, 1),
(1, 2),
(2, 3),
(3, 1),
(3, 2),

-- Projeto B
(4, 4),
(4, 5),
(5, 6),
(6, 4),
(6, 5),

-- Projeto C
(7, 6),
(7, 7),
(8, 1),
(9, 6),
(10, 7);

