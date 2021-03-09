USE Filmes;

SELECT * FROM Generos;

SELECT * FROM Filmes;

SELECT * FROM Filmes --Tabela 1 
INNER JOIN Generos --Tabela 2
ON Filmes.idGenero = Generos.idGenero

--INNER JOIN
SELECT idFilme, Titulo AS Filmes, Nome AS Genero FROM Filmes
INNER JOIN Generos --Tabela 2
ON Filmes.idGenero = Generos.idGenero

--Left Join - Trazendo filmes
SELECT idFilme, Titulo AS Filmes, Nome AS Genero FROM Filmes -- tabela da esqueda filmes "tudo da esquerda"
INNER JOIN Generos --Tabela 2 , tabela da direita Genero
ON Filmes.idGenero = Generos.idGenero

--Right Join - Trazendo Generos ,  "Quero tudo da direita"
SELECT idFilme, Titulo AS Filmes, Nome AS Genero FROM Filmes 
INNER JOIN Generos --Tabela 2
ON Filmes.idGenero = Generos.idGenero

