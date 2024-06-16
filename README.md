# home_configs
Ansible playbook for setting up my home directory 

```
export HOME_CONFIGS_VAULT=<PATH TO VAULT FILE>

```

Different options are for the playbook.

```
ansible-playbook --connection=local --inventory 127.0.0.1, home.yml
ansible-playbook --connection=local --inventory 127.0.0.1, --ask-become home.yml
ansible-playbook --connection=local --inventory 127.0.0.1, --ask-become --ask-vault-pass home.yml
ansible-playbook --connection=local --inventory 127.0.0.1, --ask-become --ask-vault-pass home.yml --check
ansible-playbook --connection=local --inventory 127.0.0.1, --ask-vault-pass home.yml --check --diff
ansible-playbook --connection=local --inventory 127.0.0.1, --ask-become --ask-vault-pass common.yml --check --extra-vars="{'debug':True}"
```
