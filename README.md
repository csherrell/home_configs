# home_configs
Ansible playbook for setting up my home directory 

```
export HOME_CONFIGS_VAULT=<PATH TO VAULT FILE>
ansible-playbook --connection=local --inventory 127.0.0.1, --ask-vault-pass home.yml
```
