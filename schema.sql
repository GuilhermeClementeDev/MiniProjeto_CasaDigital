\c postgres;
DROP DATABASE IF EXISTS edutech;
CREATE DATABASE edutech;
\c edutech;

CREATE TABLE alunos(
	alunoID SERIAL PRIMARY KEY,
	name VARCHAR(150) NOT NULL,
	email VARCHAR(254) UNIQUE NOT NULL,
	data_aniversario DATE NOT NULL,
	updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
	created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE instrutores(
	instrutorID SERIAL PRIMARY KEY,
	name VARCHAR(150) NOT NULL,
	email VARCHAR(254) UNIQUE NOT NULL,
	biografia TEXT,
	updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
	created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE especialidades(
	especialidadeID SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	descricao VARCHAR(300)
);

CREATE TABLE especialidades_instrutor(
	id SERIAL PRIMARY KEY,
	instrutorID INT REFERENCES instrutores(instrutorID) ON DELETE CASCADE,
	especialidadeID INT REFERENCES especialidades(especialidadeID) ON DELETE CASCADE
);

CREATE TABLE categorias(
	categoriaID SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	descricao VARCHAR(150)
);

CREATE TYPE NIVEL_CURSO AS ENUM ('iniciante', 'intermediario', 'avancado');

CREATE TABLE cursos(
	cursoID SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	descricao VARCHAR(300),
	nivel NIVEL_CURSO NOT NULL,
	preco DECIMAL (5,2) NOT NULL CHECK (preco >= 49.90 AND preco <= 499.90) DEFAULT 49.90,
	carga_horaria INT,
	instrutorID INT REFERENCES instrutores(instrutorID),
	updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
	created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE categorias_curso(
	id SERIAL PRIMARY KEY,
	cursoID INT REFERENCES cursos(cursoID),
	categoriaID INT REFERENCES categorias(categoriaID)
);

CREATE TABLE modulos(
	modulo_id SERIAL PRIMARY KEY,
	cursoID INT REFERENCES cursos(cursoID),
	name VARCHAR(40) NOT NULL,
	ordem INT,
	descricao VARCHAR(300)
);

CREATE TYPE AULA_TIPO AS ENUM ('video', 'texto', 'quiz');

CREATE TABLE aulas(
	aulaID SERIAL PRIMARY KEY,
	ordem INT,
	tipo AULA_TIPO NOT NULL,
	modulo_id INT REFERENCES modulos(modulo_id),
	updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
	created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TYPE MATRICULA_STATUS AS ENUM ('ativa', 'concluida', 'cancelada');

CREATE TABLE matriculas(
	matriculaID SERIAL PRIMARY KEY,
	curso_id INT REFERENCES cursos(curso_id),
	aluno_id INT REFERENCES alunos(aluno_id),
	valor_pago DECIMAL (5,2) NOT NULL DEFAULT 0.00,
	status MATRICULA_STATUS NOT NULL DEFAULT 'ativa',
	updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
	created_at TIMESTAMP NOT NULL DEFAULT NOW(),
	finished_at TIMESTAMP
);

CREATE TABLE avaliacoes(
	id SERIAL PRIMARY KEY,
	curso_id  INT REFERENCES cursos(curso_id),
	matriculaID INT REFERENCES matriculas(matriculaID),
	nota INT CHECK (nota > 0 AND nota < 6),
	comentario VARCHAR(300),
	data_avl DATE
);

CREATE TABLE progresso_aulas(
	id SERIAL PRIMARY KEY,
	matriculaID INT REFERENCES matriculas(matriculaID),
	aulaID INT REFERENCES aulas(aulaID),
	concluida BOOLEAN NOT NULL DEFAULT FALSE,
	finished_at TIMESTAMP,
	time_watched int
);
