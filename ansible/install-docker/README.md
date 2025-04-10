# Ansible

## install-docker (Ansible playbook for installing Docker on Debian 11 or 12)

### Prerequisites

Install Ansible:

- Fedora
```
sudo dnf install -y ansible
```

- CentOS
```
sudo yum install -y ansible
```

- Ubuntu/Debian
```
sudo apt install -y ansible
```


Install Python3:

- Fedora
```
sudo dnf install python3
```

- CentOS
```
sudo yum install python3
```

- Ubuntu/Debian
```
sudo apt install python3
```


Before executing the Ansible role, you must set the following environment variables so that Ansible can log in to the instance:

```
export PRIVATE_KEY_FILE_PATH=xxxxxxxxxx
export SSH_USER=xxxxxxxxxx
export AWS_ACCESS_KEY_ID=xxxxxxxxxx
export AWS_SECRET_ACCESS_KEY=xxxxxxxxxx
export AWS_REGION=xxxxxxxxxx
```

Change the value of the filter to search in tags.Name: [groups](inventory/aws_ec2.yml#L16).


`Note: If you want execute ansible role on debian 11 or debian 12, just comment out the role you don't want to execute in` [main.yml](main.yml).


### Run ansible playbook

Run it in dry run mode:

```
ansible-playbook -i inventory/aws_ec2.yml main.yml --check
```

Run it in production mode:

```
ansible-playbook -i inventory/aws_ec2.yml main.yml
```

### Usefull commands

Check if the inventory is working correctly:

```
ansible-inventory -i inventory/aws_ec2.yml --graph
```

```
ansible-inventory -i inventory/aws_ec2.yml --list
```