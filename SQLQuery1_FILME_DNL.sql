USE Filmes;


		-- Tabela, COLUNA
INSERT INTO Generos (Nome)
VALUES				('A��o')
					,('Aventura');

-- VAMOS CADASTRAR OS FILMES

INSERT INTO Filmes  (Titulo, idGenero)
VALUES				('Rambo', 1)
					,('Tropa de Elite', 1)
					,('Rei Le�o', 2);