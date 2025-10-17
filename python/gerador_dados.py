from faker import Faker
import random
from utils import carregar_config

fake = Faker("pt_BR")
config = carregar_config("python/config.json")

#dados gerados a partir da quantidade estabelecida no json

# gera alunos personalizado
def gerar_alunos(file):
	file.write("INSERT INTO alunos (name, email, data_aniversario, updated_at, created_at) \nVALUES\n")
	for i in range(config['ALUNOS']):
		nome = fake.first_name() + " " + fake.last_name()
		email = (nome.replace(" ", "") + str(i + 1) + "@gmail.com").lower()
		niver = fake.date_of_birth(minimum_age=18, maximum_age=100)
		created = fake.date_time_between(start_date='-2y', end_date='now')
		updated = fake.date_time_between(start_date=created, end_date='now')
		file.write(f"('{nome}', '{email}', '{niver}', '{updated}', '{created}')")
		if i != config['ALUNOS'] - 1:
			file.write(",\n")
	file.write(";\n")

# gera instrutores personalizado
def gerar_instrutores(file):
	file.write("INSERT INTO instrutores (name, email, biografia, updated_at, created_at) \nVALUES\n")
	for i in range(config['INSTRUTORES']):
		nome = fake.first_name() + " " + fake.last_name()
		email = (nome.replace(" ", "") + str(i + 1) + "@edutech.com").lower()
		biografia = fake.text()
		created = fake.date_time_between(start_date='-2y', end_date='now')
		updated = fake.date_time_between(start_date=created, end_date='now')
		file.write(f"('{nome}', '{email}', '{biografia}', '{updated}', '{created}')")
		if i != config['INSTRUTORES'] - 1:
			file.write(",\n")
		i += 1
	file.write(";\n")

# gera cursos "realistas"
def gerar_cursos(file):
	niveis = ['iniciante', 'intermediario', 'avancado']
	cursos = [ "Matemática", "Python", "Física", "Química Orgânica", "Biologia Celular", "História do Brasil",
	"Geografia Mundial", "Programação Web", "Banco de Dados", "Inteligência Artificial", "Machine Learning", "Redes de Computadores",
	"Engenharia de Software", "Marketing Digital", "Design Gráfico", "Economia", "Empreendedorismo", "Fotografia", "Inglês", "Espanhol"]
	file.write("INSERT INTO cursos (name, descricao, nivel, preco, carga_horaria, instrutorID, updated_at, created_at) \nVALUES\n")
	for i in range(config['CURSOS']):
		nome = cursos[i % len(cursos)]
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

# gera 5 modulos para quantidade de cursos existentes
def gerar_modulos(file):
	file.write("INSERT INTO modulos (cursoID, name, descricao, ordem) \nVALUES\n")
	modulos = config['CURSOS']
	for i in range(config['CURSOS']):
		cursoID = i + 1
		for k in range(5):
			nome = f"modulo {k}"
			descricao = fake.text()
			ordem = k + 1
			if i == modulos - 1 and k == 4:
				file.write(f"({cursoID}, '{nome}', '{descricao}', {ordem})\n")
			else:
				file.write(f"({cursoID}, '{nome}', '{descricao}', {ordem}),\n")
	file.write(";\n")

#gera aulas a partir da quantidade estabelecida dividindo entre os modulos
def gerar_aulas(file, cursoID=0):
	tipo = ['video', 'texto', 'quiz']
	if config['AULAS'] == 0:
		return  # nada a fazer
	contador = 0
	contador_modulos = 0
	if cursoID == 0:
		cursos = range(1, config['CURSOS'] + 1)
	else:
		cursos = [cursoID]
	modulos = len(cursos) * 5
	aulas_por_modulo = max(1, config['AULAS'] // modulos)  # garante pelo menos 1 aula por modulo
	valores = []
	for curso in cursos:
		for i in range(5):
			contador_modulos += 1
			moduloID = contador_modulos
			for ordem in range(aulas_por_modulo):
				contador += 1
				titulo = "aula " + str(ordem + 1)
				tipo_aula = random.choice(tipo)
				valores.append(f"({moduloID}, '{titulo}', '{tipo_aula}', {ordem + 1})")
				if contador >= config['AULAS']:
					break
			if contador >= config['AULAS']:
				break
		if contador >= config['AULAS']:
			break

	if valores:
		file.write("INSERT INTO aulas (moduloID, titulo, tipo, ordem) \nVALUES\n")
		file.write(",\n".join(valores) + ";\n")

#gera de maneira aleatorio matriculas para alunos (podendo gerar mais de uma matricula para um mesmo aluno)
def gerar_matriculas(file):
	tipo = ['ativa', 'concluida', 'cancelada']
	matriculas_geradas = set()  # coleção de elementos únicos, ignorando retetidos
	#verificação para ver quantas combinações possiveis tem e não ficar em looping infinito
	new_mat = config['ALUNOS'] * config['CURSOS']
	if config['MATRICULAS'] > new_mat:
		print(f"Atenção: Número de matrículas ({config['MATRICULAS']}) maior que o máximo possível baseado na quantidade de alunos. Ajustando para", new_mat)
		config['MATRICULAS'] = new_mat
	file.write("INSERT INTO matriculas (cursoID, alunoID, valorPago, status) \nVALUES\n")
	for i in range(config['MATRICULAS']):
		while True:
			curso = random.randint(1, config['CURSOS'])
			aluno = random.randint(1, config['ALUNOS'])
			if (aluno, curso) not in matriculas_geradas:
				matriculas_geradas.add((aluno, curso))
				break
		preco = round(random.uniform(49.90, 499.90), 2)
		status = random.choice(tipo)
		if i != config['MATRICULAS'] - 1:
			file.write(f"({curso}, {aluno}, {preco}, '{status}'),\n")
		else:
			file.write(f"({curso}, {aluno}, {preco}, '{status}');\n")

#gera as especialidades de maneira personalizadas
def gerar_especialidades(file):
	especialidades = [ "Programação Python", "Desenvolvimento Web", "Inteligência Artificial", "Machine Learning",
	"Engenharia de Software", "Matemática Avançada", "Marketing Digital",
	"Design Gráfico", "Fotografia Digital", "Economia e Finanças"]
	file.write("INSERT INTO especialidades (name, descricao) \nVALUES\n")
	for i in range(10):
		name = especialidades[i]
		descricao = fake.text(max_nb_chars=300)
		if i != 9:
			file.write(f"('{name}', '{descricao}'),\n")
		else:
			file.write(f"('{name}', '{descricao}');\n")

# adiciona 2 especialidades a cada instrutor
def gerar_especialidades_instrutor(file):
	contador = 0
	file.write("INSERT INTO especialidades_instrutor (instrutorID, especialidadeID) \nVALUES\n")
	for instrutor in range(1, config['INSTRUTORES'] + 1):
		primeira_espec = random.randint(1, 10)
		segunda_espec = primeira_espec
		while segunda_espec == primeira_espec:
			segunda_espec = random.randint(1, 10)
		for espec in [primeira_espec, segunda_espec]:
			contador += 1
			if contador != config['INSTRUTORES'] * 2:
				file.write(f"({instrutor}, {espec}),\n")
			else:
				file.write(f"({instrutor}, {espec});\n")

def gerar_categorias(file):
	categorias = [ "Tecnologia", "Negócios", "Artes", "Ciências", "Saúde"]
	file.write("INSERT INTO categorias (name, descricao) \nVALUES\n")
	for i in range(5):
		name = categorias[i]
		descricao = fake.text(max_nb_chars=150)
		if i != 4:
			file.write(f"('{name}', '{descricao}'),\n")
		else:
			file.write(f"('{name}', '{descricao}');\n")

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

def gerar_avaliacoes(file):
	file.write("INSERT INTO avaliacoes (cursoID, matriculaID, nota, comentario, data_avl) \nVALUES\n")
	for i in range(20):
		cursoID = random.randint(1, config['CURSOS'])
		matriculaID = random.randint(1, config['MATRICULAS'])
		nota = random.randint(1, 5)
		comentario = fake.text(max_nb_chars=200)
		data_avl = fake.date_between(start_date='-1y', end_date='today')
		file.write(f"({cursoID}, {matriculaID}, {nota}, '{comentario}', '{data_avl}')")
		if i != 19:
			file.write(",\n")
		else:
			file.write(";\n")

def gerar_progresso_aulas(file):
	# Primeiro, pegar a quantidade real de aulas geradas
	total_aulas = config['AULAS']  # pode ajustar se quiser pegar do banco real
	total_matriculas = config['MATRICULAS']
	if total_aulas == 0 or total_matriculas == 0:
		return  # nada a gerar
	file.write("INSERT INTO progresso_aulas (matriculaID, aulaID, concluida, finished_at, time_watched) \nVALUES\n")
	valores = []
	for aulaID in range(1, total_aulas + 1):
		matriculaID = random.randint(1, total_matriculas)
		concluida = random.choice([True, False])
		if concluida:
			finished_at = fake.date_time_between(start_date='-6M', end_date='now')
			time_watched = random.randint(300, 600)
			valores.append(f"({matriculaID}, {aulaID}, {concluida}, '{finished_at}', {time_watched})")
		else:
			time_watched = random.randint(0, 300)
			valores.append(f"({matriculaID}, {aulaID}, {concluida}, NULL, {time_watched})")
	if valores:
		file.write(",\n".join(valores) + ";\n")

def main():
	file = open("sql/dados.sql", "w")
	gerar_alunos(file)
	gerar_instrutores(file)
	gerar_cursos(file)
	gerar_modulos(file)
	gerar_aulas(file)
	gerar_matriculas(file)
	gerar_especialidades(file)
	gerar_especialidades_instrutor(file)
	gerar_categorias(file)
	gerar_categorias_curso(file)
	gerar_avaliacoes(file)
	gerar_progresso_aulas(file)
	file.close()

if __name__ == "__main__":
	main()
