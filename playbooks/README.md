# runbook

## prerequisites 
- UTM Ubuntu VM
- SSH key
- passwordless sudo

## How to ping:
ansible servers -m ping

## How to run baseline:
ansible-playbook playbooks/baseline.yml

## How to run tags:
--tags packages
--tags config
--tags verify
