install:
	ansible-galaxy install -r requirements.yml

prepare:
	ansible-playbook -i inventory.ini playbook.yml --tags prepare

deploy:
	ansible-playbook -i inventory.ini playbook.yml --tags deploy --ask-vault-pass

monitoring:
	ansible-playbook -i inventory.ini playbook.yml --tags monitoring --ask-vault-pass

setup: install
