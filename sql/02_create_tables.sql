USE AprendizadoSQL;
GO

-- ========================================
-- Tabela: Clientes
-- Armazena informações dos clientes
-- ========================================
IF OBJECT_ID('Clientes', 'U') IS NULL
BEGIN
    CREATE TABLE Clientes (
        ClienteID INT IDENTITY(1,1) PRIMARY KEY,
        Nome NVARCHAR(100) NOT NULL,
        Email NVARCHAR(100),
        Telefone NVARCHAR(20),
        DataCadastro DATETIME DEFAULT GETDATE()
    );
END
GO

-- ========================================
-- Tabela: Produtos
-- Armazena informações dos produtos
-- ========================================
IF OBJECT_ID('Produtos', 'U') IS NULL
BEGIN
    CREATE TABLE Produtos (
        ProdutoID INT IDENTITY(1,1) PRIMARY KEY,
        Nome NVARCHAR(100) NOT NULL,
        Categoria NVARCHAR(50),
        Preco DECIMAL(10,2) NOT NULL,
        Estoque INT DEFAULT 0
    );
END
GO

-- ========================================
-- Tabela: Vendas
-- Armazena informações das vendas
-- ========================================
IF OBJECT_ID('Vendas', 'U') IS NULL
BEGIN
    CREATE TABLE Vendas (
        VendaID INT IDENTITY(1,1) PRIMARY KEY,
        ClienteID INT NOT NULL,
        ProdutoID INT NOT NULL,
        Quantidade INT NOT NULL,
        DataVenda DATETIME DEFAULT GETDATE(),
        CONSTRAINT FK_Vendas_Clientes FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID),
        CONSTRAINT FK_Vendas_Produtos FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID)
    );
END
GO
