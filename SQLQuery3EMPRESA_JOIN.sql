USE Empresas;

SELECT * FROM Empresa;

SELECT * FROM Veiculos;

SELECT * FROM Cliente;

SELECT * FROM Empresa
INNER JOIN Veiculos
ON Empresa.idEmpresa = Veiculos.idVeiculos

SELECT * FROM Cliente
RIGHT JOIN Veiculos
ON Cliente.idCliente = Veiculos.idVeiculos

SELECT * FROM Empresa
INNER JOIN Cliente
ON Empresa.idEmpresa = Cliente.idCliente


