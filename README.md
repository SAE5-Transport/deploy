# deploy

ansible script

## Usage

### Requirements

in each hosts need a ssh connection with ssh key (ur computer can be connect with ssh without password), python3 and sudo

in ur local need a venv with ansible : `pip install ansible`

### Launch

in [prod.yml](./inventory/prod.yml), change IP to ur ip

```
ansible-playbook -i ./inventory/prod.yml install.yml
```

### Feat:

#### Lemonldap : Auth

#### Lemonldap : scopes

+ Openid
+ address : 
    * [ ] street_address
    * [ ] locality
    * [ ] region
    * [ ] postal_code
    * [ ] country
+ email : 
    * [x] email 
    * [x] email_verified
+ phone : 
    * [ ] phone_number 
    * [ ] phone_number_verified
+ profile : 
    * [x] name 
    * [x] family_name 
    * [x] given_name 
    * [x] middle_name 
    * [x] nickname 
    * [x] preferred_username 
    * [x] profile 
    * [x] picture 
    * [x] website 
    * [x] gender 
    * [x] birthdate 
    * [x] zoneinfo 
    * [x] locale 
    * [x] updated_at