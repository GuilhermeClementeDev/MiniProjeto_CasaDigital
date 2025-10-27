#!/usr/bin/python3
import psycopg2
from psycopg2.extensions import ISOLATION_LEVEL_AUTOCOMMIT
from dotenv import load_dotenv
import os
import gerador_dados

def conectar(inicializando_banco=0):
	if inicializando_banco:
		db_name="postgres"
	else:
		db_name="edutech"
	try:
		conn = psycopg2.connect(
			dbname=db_name,
			user=os.getenv("DB_USER"),
			password=os.getenv("DB_PASSWORD"),
			host="localhost",
			port="5432",
			options='-c client_encoding=UTF8'
		)
	except Exception as e:
		print("Erro ao conectar:", e)
		return None
	return conn

def query_predefinida():
	conn = conectar()
	print("\nEscolha a query:")
	print("1 - Listar todos os cursos com nome da categoria e do instrutor")
	opc = input("-> ")
	cursor = conn.cursor()
	match opc:
		case "1":
			cursor.execute("""
				SELECT cursos.cursoID,
					cursos.name AS curso,
					instrutores.name AS instrutor,
					categorias.name AS categoria
				FROM cursos
				LEFT JOIN instrutores ON cursos.instrutorID = instrutores.instrutorID
				LEFT JOIN categorias_curso ON cursos.cursoID = categorias_curso.cursoID
				LEFT JOIN categorias ON categorias_curso.categoriaID = categorias.categoriaID
				ORDER BY cursos.cursoID, categorias.name;
			""")
		case _:
			print("Opção inválida")
			return
	linhas = cursor.fetchall()
	for linha in linhas:
		print(linha)

# Usei ia para me ajudar com a conexão
def inicializar_banco():
	conn = conectar(1)
	conn.set_isolation_level(ISOLATION_LEVEL_AUTOCOMMIT)
	with conn.cursor() as cur:
		cur.execute("DROP DATABASE IF EXISTS edutech;")
		cur.execute("CREATE DATABASE edutech;")
	conn.close()
	print("\n⚙️ Gerando dados (gerador_dados.py)...")
	gerador_dados.main()
	conn = conectar()
	with conn.cursor() as cur:
		for arquivo in ["./sql/schema.sql", "./sql/dados.sql"]:
			with open(arquivo, "r", encoding="utf-8") as f:
				comandos = f.read().split(";")
				for comando in comandos:
					comando = comando.strip()
					if comando:
						cur.execute(comando)
	conn.commit()
	conn.close()
	print("✅ Banco inicializado com sucesso!")

def menu():
	load_dotenv()
	while True:
		print("=== Gerenciador dudutech v0.1 ===")
		print("0 - Inicializar/Reinicializar banco")
		print("1 - Inserir dados")
		print("2 - Executar queries pré-definidas")
		print("3 - Sair")
		opcao = input("-> ")
		match opcao:
			case "0":
				inicializar_banco()
			case "1":
				print("Recurso futuro (v0.2)...")
			case "2":
				query_predefinida()
			case "3":
				print("Encerrando...")
				break
			case _:
				print("Opção inválida")

if __name__ == "__main__":
	menu()
