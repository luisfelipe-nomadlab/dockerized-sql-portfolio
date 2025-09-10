USE AprendizadoSQL;
GO

-- Inserindo clientes
INSERT INTO Clientes (Nome, Email, Telefone)
VALUES 
('Ana Silva', 'ana.silva@email.com', '11999990001'),
('Carlos Souza', 'carlos.souza@email.com', '11999990002'),
('Beatriz Lima', 'beatriz.lima@email.com', '11999990003'),
('Pedro Alves', 'pedro.alves@email.com', '11999990004'),
('Fernanda Costa', 'fernanda.costa@email.com', '11999990005');
GO

-- Inserindo produtos
INSERT INTO Produtos (Nome, Categoria, Preco, Estoque)
VALUES 
('Camiseta', 'Roupas', 49.90, 100),
('Caneca', 'Acessórios', 25.00, 50),
('Agenda', 'Papelaria', 35.00, 30),
('Mochila', 'Acessórios', 150.00, 20),
('Caderno', 'Papelaria', 20.00, 80);
GO

-- Inserindo vendas
INSERT INTO Vendas (ClienteID, ProdutoID, Quantidade)
VALUES 
(1, 1, 2),
(2, 2, 3),
(3, 3, 1),
(1, 3, 5),
(4, 4, 1),
(5, 5, 2);
GO
