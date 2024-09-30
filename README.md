# deploy

ansible script

## Usage

### Requirements

in each hosts need a ssh connection with ssh key (ur computer can be connect with ssh without password), python3 and sudo

in ur local need a venv with ansible : `pip install ansible`

### Launch

in [hosts.yml](./inventory/hosts.yml), change IP to ur ip

```
ansible-playbook -i ./inventory/hosts.yml install.yml
```