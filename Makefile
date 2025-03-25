PL ?= prototype

venv:
	python -m venv .venv
	.venv/bin/pip install --upgrade pip
	.venv/bin/pip install -r requirements.txt

deploy:
	cd roles/hexatransit-app/files/api && ${MAKE} build
	ansible-playbook -i inventories/${PL}/hosts deploy.yml

deploy_app:
	cd roles/hexatransit-app/files/api && ${MAKE} build
	ansible-playbook --limit hexatransit_db,hexatransit_app --check -i inventories/${PL}/hosts deploy.yml