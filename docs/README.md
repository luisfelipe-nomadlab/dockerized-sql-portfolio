# SQL Learning Project 

Aprendizado prático de **SQL Server** com **Docker** e **Python**, automatizando a execução de scripts SQL e visualização de resultados.  

---

##  Estrutura do Projeto

```text
sql-learning-project/
├── sql/                     # Scripts SQL
│   ├── 01_create_database.sql
│   ├── 02_create_tables.sql
│   └── 03_insert_data.sql
├── scripts/                 # Scripts Python
│   ├── connect_sql.py       # Funções para executar scripts SQL via Docker
│   └── run_all.py           # Executa todos os SQLs
├── venv/                    # Ambiente virtual Python
└── docker-compose.yml       # Configuração do container SQL Server

## Requisitos

* Docker
* Python 3.10+ (venv)
* VS Code com extensão SQL Server (mssql)

## Executando o SQL Server
docker-compose up -d
docker ps


Container sqlserver2022 ativo na porta 1433.

##Executando todos os scripts SQL

Use um único comando Python para rodar todos os scripts em ordem:

source venv/bin/activate
python -m scripts.run_all