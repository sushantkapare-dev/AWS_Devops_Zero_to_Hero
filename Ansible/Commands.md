## ad-hoc commands
ansible all -m ping 

## Basic command to run Ansible tasks.
ansible <inventory> -m <module> -a "<module_arguments>"

## Execute Ansible playbooks, which are YAML files defining a set of tasks.
ansible-playbook <playbook.yml>

## Manage Ansible roles, which are reusable units of playbooks
ansible-galaxy install <role_name>

## Display or change the configuration settings for Ansible.
ansible-config view
ansible-config dump

## Display documentation for Ansible modules.
ansible-doc <module_name>

## Pulls a playbook from a VCS repository and executes it on the local machine.
ansible-pull -U <repository_url>

## Initialize a new Ansible role directory structure.
ansible-galaxy init <role_name>

## Display documentation for Ansible modules.
ansible-doc <module_name>


## Display or manipulate Ansible's inventory
ansible-inventory --list
ansible-inventory --graph

## Check Ansible playbooks for practices and behavior that could potentially be improved.
ansible-lint <playbook.yml>

## dummy run on playbook demo.yml nothing will be executed
ansible-playbook --check demo.yml 

--diff

--list-hosts

--list-tasks

--syntax-check

## ansible-vault to encrypt data
ansible-vault create creds.yml

## ansible-vault to view data
ansible-vault view creds.yml


## ansible-vault to decrypt data
ansible-vault decrypt creds.yml

## Encrypt and decrypt sensitive data in Ansible playbooks
ansible-vault encrypt <file>
ansible-vault decrypt <file>


## tools for validate and testing playbooks
1. Ansible lint
2. Ansibel Review
3. Molecule
4. yamllint





