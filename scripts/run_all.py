from .connect_sql import run_sql

# Lista de arquivos SQL em ordem
sql_files = [
    "01_create_database.sql",
    "02_create_tables.sql",
    "03_insert_data.sql"
]

# Executa todos
run_sql(sql_files)
