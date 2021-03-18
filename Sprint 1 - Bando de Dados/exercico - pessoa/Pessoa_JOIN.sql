USE PESSOAS;

SELECT * FROM Pessoa;

SELECT * FROM Telefone;

SELECT * FROM Email;

-- INNER JOIN
SELECT * FROM Pessoa --Tabela 1 
INNER JOIN Email --Tabela 2
ON Pessoa.idPessoa = Email.idEmail


