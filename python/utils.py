import json

def json_verification(config):
	campos = ["ALUNOS", "INSTRUTORES", "CURSOS", "AULAS", "MATRICULAS", "CATEGORIAS"]
	for campo in campos:
		if campo not in config:
			print(f"Erro: campo '{campo}' está faltando no JSON.")
			exit(1)
	for valor in config.values():
		# isisntance True se o objeto for do tipo esperado, caso contrário False.
		if not isinstance(valor, int) or valor < 1:
			print(f"Erro: o valor deve ser um número inteiro positivo. (atual: {valor})")
			exit(1)

def carregar_config(caminho):
	try:
		with open(caminho, "r", encoding="utf-8") as file:
			config = json.load(file)
	except FileNotFoundError:
		print("Error: Arquivo de 'config.json' não encontrado.")
		exit(1)
	except json.JSONDecodeError:
		print("Error: Erro ao ler o json.")
		exit(1)
	json_verification(config)
	return config
