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

def gerar_modulos(file):
	file.write("INSERT INTO modulos (cursoID, name, descricao, ordem) \nVALUES\n")
	modulos = config['CURSOS']
	for i in range(config['CURSOS']):
		cursoID = i + 1
		for k in range(5):
			nome = fake.word()
			descricao = fake.text()
			ordem = k + 1
			if i == modulos - 1 and k == 4:
				file.write(f"({cursoID}, '{nome}', '{descricao}', {ordem})\n")
			else:
				file.write(f"({cursoID}, '{nome}', '{descricao}', {ordem}),\n")
	file.write(";\n")

def gerar_aulas(file, cursoID=0):
	tipo = ['video', 'texto', 'quiz']
	file.write("INSERT INTO aulas (moduloID, titulo, tipo, ordem) \nVALUES\n")
	contador = 0
	contador_modulos = 0
	if cursoID == 0:
		cursos = range(1, config['CURSOS'] + 1)
	else:
		cursos = [cursoID]
	modulos = len(cursos) * 5
	aulas_por_modulo = config['AULAS'] // modulos
	for curso in cursos:
		for i in range(5):
			contador_modulos += 1
			moduloID = contador_modulos
			for ordem in range(aulas_por_modulo):
				contador += 1
				titulo = fake.word()
				type = random.choice(tipo)
				if contador != config['AULAS']:
					file.write(f"({moduloID}, '{titulo}', '{type}', {ordem + 1}),\n")
				else:
					file.write(f"({moduloID}, '{titulo}', '{type}', {ordem + 1});\n")
	file.write(";\n")

def gerar_matriculas(file):
	tipo = ['ativa', 'concluida', 'cancelada']
	file.write("INSERT INTO matriculas (cursoID, alunoID, valorPago, status) \nVALUES\n")
	for i in range(config['ALUNOS']):
		curso = random.randint(1, config['CURSOS'])
		aluno = i + 1
		preco = round(random.uniform(49.90, 499.90), 2)
		type = random.choice(tipo)
		if i != config['ALUNOS'] - 1:
			file.write(f"({curso}, '{aluno}', '{preco}', '{type}'),\n")
		else:
			file.write(f"({curso}, '{aluno}', '{preco}', '{type}');\n")
	file.write(";\n")

def gerar_especialidades(file):
	file.write("INSERT INTO especialidades (name, descricao) \nVALUES\n")
	for i in range(10):
		name = fake.word()
		descricao = fake.text(max_nb_chars=300)
		if i != 9:
			file.write(f"('{name}', '{descricao}'),\n")
		else:
			file.write(f"('{name}', '{descricao}');\n")
	file.write(";\n")

def gerar_especialidades_instrutor(file):
	file.write("INSERT INTO especialidades_instrutor (instrutorID, especialidadeID) \nVALUES\n")
	contador = 0
	for instrutor in range(1, config['INSTRUTORES'] + 1):
		for i in range(random.randint(1, 3)):
			especialidadeID = random.randint(1, 10)
			contador += 1
			if contador != config['INSTRUTORES'] * 3:
				file.write(f"({instrutor}, {especialidadeID}),\n")
			else:
				file.write(f"({instrutor}, {especialidadeID});\n")
	file.write(";\n")

def gerar_categorias(file):
	file.write("INSERT INTO categorias (name, descricao) \nVALUES\n")
	for i in range(5):
		name = fake.word()
		descricao = fake.text(max_nb_chars=300)
		if i != 4:
			file.write(f"('{name}', '{descricao}'),\n")
		else:
			file.write(f"('{name}', '{descricao}');\n")
		file.write(";\n")

def gerar_categorias_curso(file):
	file.write("INSERT INTO categorias_curso (cursoID, categoriaID) \nVALUES\n")
	contador = 0
	for curso in range(1, config['CURSOS'] + 1):
		categoriaID = random.randint(1, 5)
		contador += 1
		if contador != config['CURSOS']:
			file.write(f"({curso}, {categoriaID}),\n")
		else:
			file.write(f"({curso}, {categoriaID});\n")
	file.write(";\n")

def main():
	file = open("dados.sql", "w")
	gerar_alunos(file)
	gerar_instrutores(file)
	gerar_cursos(file)
	gerar_modulos(file)
	gerar_aulas(file)
	gerar_matriculas(file)
	gerar_especialidades(file)
	gerar_especialidades_instrutor(file)
	gerar_categorias_curso(file)
	file.close()

if __name__ == "__main__":
	main()
