# scripts/connect_sql.py
import os
import subprocess
import logging

# Configuração do logging
logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s [%(levelname)s] %(message)s",
    datefmt="%Y-%m-%d %H:%M:%S"
)

# Caminho da pasta onde estão os scripts SQL
SQL_FOLDER = os.path.join(os.path.dirname(__file__), "..", "sql")

def run_sql(sql_files):
    """
    Executa múltiplos arquivos SQL usando docker e sqlcmd.
    """
    for file_name in sql_files:
        # Garante que file_name é string
        file_path = os.path.join(SQL_FOLDER, file_name)

        # Log de execução
        logging.info(f"Executando: {file_path}")

        # Comando docker para executar o script SQL
        cmd = [
            "docker", "run", "--rm",
            "--network", "sql-learning-project_default",
            "-v", f"{SQL_FOLDER}:/sql",
            "mcr.microsoft.com/mssql-tools",
            "/opt/mssql-tools/bin/sqlcmd",
            "-S", "sqlserver2022",
            "-U", "SA",
            "-P", "SenhaForte123!",
            "-i", f"/sql/{file_name}"
        ]

        # Executa o comando
        result = subprocess.run(cmd, capture_output=True, text=True)

        # Log da saída do comando
        if result.stdout:
            logging.info(result.stdout.strip())
        if result.stderr:
            logging.error(result.stderr.strip())
