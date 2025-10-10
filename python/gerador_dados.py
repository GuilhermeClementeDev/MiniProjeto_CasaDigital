from faker import Faker
import random
import json

fake = Faker("pt_BR")
with open("python/config.json", "r", encoding="utf-8") as file:
	config = json.load(file)

def gerar_alunos(file):
	file.write("INSERT INTO alunos (name, email, data_aniversario, updated_at, created_at) \nVALUES\n")
	for i in range(config['ALUNOS']):
		nome = fake.first_name() + " " + fake.last_name()
		email = fake.unique.email()
		niver = fake.date_of_birth(minimum_age=18, maximum_age=100)
		created = fake.date_time_between(start_date='-2y', end_date='now')
		updated = fake.date_time_between(start_date=created, end_date='now')
		file.write(f"('{nome}', '{email}', '{niver}', '{updated}', '{created}')")
		if i != config['ALUNOS'] - 1:
			file.write(",\n")
	file.write(";\n")

def gerar_instrutores(file):
	file.write("INSERT INTO instrutores (name, email, biografia, updated_at, created_at) \nVALUES\n")
	for i in range(config['INSTRUTORES']):
		nome = fake.first_name() + " " + fake.last_name()
		email = fake.unique.email()
		biografia = fake.text()
		created = fake.date_time_between(start_date='-2y', end_date='now')
		updated = fake.date_time_between(start_date=created, end_date='now')
		file.write(f"('{nome}', '{email}', '{biografia}', '{updated}', '{created}')")
		if i != config['INSTRUTORES'] - 1:
			file.write(",\n")
		i += 1
	file.write(";\n")

def gerar_cursos(file):
	niveis = ['iniciante', 'intermediario', 'avancado']
	i = 0
	file.write("INSERT INTO cursos (name, descricao, nivel, preco, carga_horaria, instrutorID, updated_at, created_at) \nVALUES\n")
	for i in range(config['CURSOS']):
		nome = fake.word()
		descricao = fake.text()
		nvl = random.choice(niveis)
		preco = round(random.uniform(49.90, 499.90), 2)
		carga_hr = random.randint(1, 300)
		instrutorid = random.randint(1, config['INSTRUTORES'])
		created = fake.date_time_between(start_date='-2y', end_date='now')
		updated = fake.date_time_between(start_date=created, end_date='now')
		file.write(f"('{nome}', '{descricao}', '{nvl}', '{preco}', '{carga_hr}', '{instrutorid}','{updated}', '{created}')")
		if i != config['CURSOS'] - 1:
			file.write(",\n")
	file.write(";\n")

def main():
	file = open("dados.sql", "w")
	gerar_alunos(file)
	gerar_instrutores(file)
	gerar_cursos(file)
	file.close()

if __name__ == "__main__":
	main()
