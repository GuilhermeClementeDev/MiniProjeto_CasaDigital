VENV = venv
PYTHON = $(VENV)/bin/python3
REQS = requirements.txt

all: menu

venv:
	@echo "🔧 Criando virtualenv e instalando dependências..."
	python3 -m venv $(VENV)
	$(PYTHON) -m pip install -r $(REQS)
	@echo "✅ Virtualenv pronta!"

menu:
	@. $(VENV)/bin/activate && $(PYTHON) python/menu.py

clean:
	@echo "🧹 Limpando arquivos temporários..."
	rm -rf python/__pycache__ $(VENV)
	@echo "Feito!"
