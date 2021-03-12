--USE Gufi;
--GO

-- DML, EXPLICACAO PROFESSOR


INSERT INTO tipoUsuarios (tituloTipoUsuario)
VALUES					('Administrador')
						,('Comum');
GO

INSERT INTO usuarios (idTipoUsuario, nomeUsuario, email, senha)
VALUES				 (1, 'Administrador', 'adm@adm.com', 'adm132')
					,(2, 'Joyce', 'joyce@hotmail.com', 'joyce123')
					,(2, 'Saulo', 'saulo@email.com', 'saulo345');
GO

INSERT INTO instituicoes (cnpj, nomeFantasia, endereco)
VALUES					 ('98374232333333', 'Escola Senai Informatica', 'Av. Barão de Limeira, 538' );

GO

INSERT INTO	tipoEventos (tituloTipoEvento)
VALUES					('C#')
						,('.NET')
						,('SQL');
GO


INSERT INTO eventos (idTipoEvento, idInstituicao, nomeEvento, acessoLivre, dataEvento,descricao)
VALUES				(1, 1, 'Orientação a objeto', 1, '07/09/2021','Conceito sobre pilares de programação orientada a objetos')
					,(2,1, 'Ciclo de vida', 0, '08/04/2021', 'Como utilizar os ciclos de vida com biblioteca REACTjs' )
					,(3,1, 'Introdução a SQL', 1, '10/11/2021', 'Comandos básicos utilizando SQL server');
GO

INSERT INTO presencas (idUsuario, idEvento, situacao)
VALUES					(2,2, 'Não Confirmada')
						,(2,3, 'Confirmada')
						,(3,1, 'Confirmada')
GO

