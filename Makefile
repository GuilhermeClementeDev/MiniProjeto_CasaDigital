DB_NAME = edutech
DB_USER = guizindev
DB_HOST = localhost
VENV = venv
PYTHON = $(VENV)/bin/python3

all: gerar rodar_sql

gerar:
	@echo "🔧 Gerando dados com o script Python..."
	@. $(VENV)/bin/activate && $(PYTHON) python/gerador_dados.py

rodar_sql:
	@echo "💾 Executando scripts SQL no banco $(DB_NAME)..."
	sudo -u $(DB_USER) psql -d $(DB_NAME) -f schema.sql
	sudo -u $(DB_USER) psql -d $(DB_NAME) -f dados.sql
	@echo "✅ Banco atualizado com sucesso!"

clean:
	@echo "🧹 Limpando arquivos temporários..."
	@echo "Feito!"

.PHONY: all gerar rodar_sql clean
