/*
=====================================================
 ARQUIVO: 01_create_database.sql
 PROJETO: Aprendizado SQL
 OBJETIVO: Criação do banco de dados inicial
=====================================================

 Este script cria o banco de dados que será usado
 ao longo do projeto. O nome escolhido é "AprendizadoSQL",
 mas você pode trocar por outro que faça sentido.

 PASSOS:
 1. Criar o banco de dados.
 2. Definir o banco para uso.
=====================================================
*/

-- 1. Criar o banco de dados
-- A instrução abaixo cria o banco apenas se ele não existir.
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'AprendizadoSQL')
BEGIN
    CREATE DATABASE AprendizadoSQL;
    PRINT 'Banco de dados AprendizadoSQL criado com sucesso!';
END
ELSE
BEGIN
    PRINT 'Banco de dados AprendizadoSQL já existe.';
END
GO

-- 2. Usar o banco de dados recém-criado
USE AprendizadoSQL;
GO
