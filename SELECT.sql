-- (1)   Consulta Simples: recuperação de todos os registros de uma tabela específica.
SELECT *
    FROM Empregado;

-- (2)   Consulta de Junção: combinação de informações de duas ou mais tabelas.
SELECT
    Empregado.nome AS 'Empregado',
    Telefone.telefone AS 'Telefone'
FROM Empregado
JOIN Telefone ON Empregado.id = Telefone.id_empregado;

-- (3)   Consulta de Agregação: utilização de funções de agregação para calcular estatísticas ou totalizações.
SELECT SUM(orcamento) AS 'Orçamento total'
    FROM Projeto;

-- (4)   Consulta com Filtro: seleção de registros com base em condições específicas.
SELECT nome AS Empregado, email AS 'E-mail'
    FROM Empregado
    WHERE email LIKE '%@hotmail.com%';

-- (5)   Consulta com Ordenação: ordenação dos resultados com base em critérios específicos.
SELECT nome AS Empregado, email AS 'E-mail'
    FROM Empregado
    ORDER BY nome ASC;

-- (6)   Consulta com Subconsulta: incorporação de uma subconsulta para obter informações mais detalhadas.
SELECT Projeto.nome as 'Projeto', Equipe.nome as Equipe, orcamento as 'Orçamento'
    FROM Projeto
    JOIN (SELECT id, nome FROM Equipe) AS Equipe
    ON Projeto.id_equipe = Equipe.id
    ORDER BY orcamento DESC;

-- (7)   Consulta com União: combinação de resultados de duas consultas.
SELECT id AS 'Id original', nome AS 'Nome', descricao AS 'Descrição' FROM Projeto
UNION
SELECT id AS 'Id original', nome AS 'Nome', descricao as 'Descrição' FROM Departamento;

-- (8)   Consulta com Agrupamento: agrupamento de registros com base em critérios específicos.
SELECT AVG(orcamento) AS 'Orçamento médio', equipe.nome AS 'Equipe'
    FROM Projeto
    JOIN (SELECT id, nome FROM Equipe) AS equipe
    ON Projeto.id_equipe = equipe.id
    GROUP BY equipe.nome;

-- (9)   Consulta com Limite: restrição do número de resultados retornados.
SELECT nome as Nome FROM Empregado
    ORDER BY nome DESC
    LIMIT 5;

-- (10)  Consulta Complexa: desenvolvimento de uma consulta mais complexa que envolva múltiplas tabelas e condições.
SELECT Empregado.nome AS 'Duplo líder' FROM Empregado
    WHERE Empregado.id IN (SELECT id_lider FROM Equipe WHERE id_lider IS NOT NULL)
    AND Empregado.id IN (SELECT id_chefe FROM Departamento WHERE id_chefe IS NOT NULL)
    ORDER BY Empregado.nome ASC;
