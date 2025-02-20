venv:
	python -m venv .venv
	.venv/bin/pip install --upgrade pip
	.venv/bin/pip install -r requirements.txt

prod:
	cd roles/hexatransit-app/files/api && ${MAKE} build
	ansible-playbook -i inventories/prototype/hosts install.yml

deploy:
	cd roles/hexatransit-app/files/api && ${MAKE} build
	ansible-playbook -i inventories/prototype/hosts deploy_hexatransit.yml