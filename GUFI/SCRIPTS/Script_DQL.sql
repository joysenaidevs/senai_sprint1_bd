--USE Gufi;
--GO

--DQL 
-- EXPLICACAO PROFESSOR

SELECT * FROM tipoUsuarios;
SELECT * FROM usuarios;
SELECT * FROM instituicoes;
SELECT * FROM tipoEventos;
SELECT * FROM eventos;
SELECT * FROM presencas;

-- utilizar joins
SELECT idUsuario, tituloTipoUsuario, nomeUsuario,email FROM usuarios
INNER JOIN tipoUsuarios -- JUNTAR COM A TABELA TIPOS USUARIOS
ON usuarios.idTipoUsuario = tipoUsuarios.idTipoUsuario -- A CONDICAO

--FAZER PARA EVENTOS
SELECT idEvento, nomeFantasia AS [Local], nomeEvento, acessoLivre, dataEvento, descricao FROM  eventos AS E -- (ABREVIANDO A TABELA EVENTOS)
INNER JOIN tipoEventos AS TE -- ABREVIANDO TIPOS EVENTOS
ON E.idTipoEvento = TE.idTipoEvento
INNER JOIN instituicoes AS I -- REFERENCIA DA TABELA INSTITUICAO
ON E .idInstituicao = I.idInstituicao;


-- FAZENDO PRESENCAS
SELECT nomeUsuario, email FROM usuarios U
INNER JOIN presencas P
ON P.idUsuario = U.idUsuario
INNER JOIN eventos E
ON P.idEvento = E.idEvento
INNER JOIN tipoEventos TE
ON E.idTipoEvento = TE.idTipoEvento;


-- 
SELECT nomeUsuario, email FROM usuarios U
INNER JOIN tipoUsuarios TU
ON u.idTipoUsuario = TU.idTipoUsuario
WHERE email = 'joyce@hotmail.com' AND senha = 'joyce123';
-- WHERE idUsuario = 3