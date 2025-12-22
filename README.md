# Ansible Foundation Project
“One-Command Linux Server Bootstrap”

## Objective:
From a fresh Linux machine, you should be able to run one Ansible command and end up with a fully configured server.

You are not allowed to:
- copy full playbooks from tutorials
- use ChatGPT for solutions
- skip steps

You are allowed to:
- read docs
- search errors
- think

## What This Project Will Teach You
By the end, you will naturally understand:
- inventories
- ad-hoc commands
- playbooks
- modules
- idempotency
- variables
- handlers
- roles
- privilege escalation
- SSH usage
- debugging failures

## Project Rules
- Your Mac is the control node
- Linux machines are managed nodes
- All automation must use Ansible
- Manual SSH is allowed only for debugging

## Project Name
ansible-bootstrap

## Project Taks 
### Phase 0 — Environment Setup 
- Create one Linux virtual machine
- Ensure the machine:
    - is reachable over the network
    - has SSH enabled
    - has a non-root user
- Verify you can:
    - log in via SSH
    - log in without a password (key-based)
#### Exit Criteria
You can log in with ssh user@ip without being asked for a password

### Phase 1 — Ansible Connectivity
- Create an Ansible project directory
- Create an inventory file
- Define at least one host
- Test connectivity using:
    - an Ansible ad-hoc command
    - a built-in module
#### Constraints
- Do NOT use playbooks yet
- Do NOT use shell or command
#### Exit Criteria
Ansible confirms the host is reachable

### Phase 2 — Your First Playbook
- Create your first playbook file
- Target all hosts from your inventory
- Add tasks that:
    - gather system facts
    - install at least one package
    - ensure a service is running
#### Constraints
- Use only official Ansible modules
- Playbook must be idempotent
#### Exit Criteria
Running the playbook twice produces no changes the second time

### Phase 3 — User & Access Management
- Create a new system user
- Grant the user sudo access
- Configure SSH access for that user
- Disable direct root login via SSH
#### Constraints
- No manual file editing on the server
- Use Ansible only
#### Exit Criteria
- You can SSH as the new user
- Root SSH access is disabled

### Phase 4 — Security Baseline
- Enable a firewall
- Allow only required ports
- Ensure firewall persists after reboot
#### Constraints
- Firewall must be managed by Ansible
- Configuration must be reproducible
#### Exit Criteria
Server is reachable only on allowed ports

### Phase 5 — Variables & Templates
- Introduce variables
- Use variables to:
    - control package names
    - control service configuration
- Create a configuration file from a template
#### Constraints
- No hard-coded values in tasks
- At least one Jinja2 template
#### Exit Criteria
Changing a variable changes server behavior

### Phase 6 — Handlers & Change Management
- Add handlers to your playbook
- Trigger handlers only when configuration changes
- Restart services safely
#### Constraints
- No unconditional restarts
- Handlers must be meaningful
#### Exit Criteria
Services restart only when needed

### Phase 7 — Refactor into Roles
- Split your playbook into roles
- Create at least:
    - a common role
    - a security role
    - an application role
- Rebuild your main playbook using roles
#### Constraints
- Follow standard role directory structure
- Roles must be reusable
#### Exit Criteria
One main playbook runs all roles cleanly

### Phase 8 — Secrets Management
- Introduce sensitive data (passwords, keys)
- Encrypt them
- Ensure secrets are not visible in plaintext
#### Constraints
- No secrets in git
- Use Ansible’s built-in tools
#### Exit Criteria
Playbook runs successfully with encrypted data

### Phase 9 — Destruction & Rebuild (MOST IMPORTANT)
- Destroy your Linux VM
- Recreate it from scratch
- Run ONE Ansible command
#### Exit Criteria
Server returns to the exact same state

### Phase 10 — Validation & Debugging
- Intentionally break something
- Run Ansible
- Read the error
- Fix it properly
#### Exit Criteria
You can explain why it failed

### Final Self-Assessment (Be Honest)
You should be able to explain:
    - what an inventory is
    - why idempotency matters
    - why handlers exist
    - when to use roles
    - how Ansible connects to hosts
    - why SSH keys matter