# deploy

ansible script

## Usage

### Requirements

in each hosts need a ssh connection with ssh key (ur computer can be connect with ssh without password), python3 and sudo

in ur local need a venv with ansible : `pip install ansible`

### Launch

in [prod.yml](./inventory/prod.yml), change IP to ur ip

```
$ ansible-playbook -i inventories/prototype/hosts install.yml
```
