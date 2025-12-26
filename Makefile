ENV ?= dev
INV = inventories/$(ENV)/hosts.ini

ping:
	ansible -i $(INV) servers -m ping

site:
	ansible-playbook -i $(INV) playbooks/site.yml

verify:
	ansible-playbook -i $(INV) playbooks/site.yml --tags verify
