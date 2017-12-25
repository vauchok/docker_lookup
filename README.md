# Docker_lookup

### Docker installation:
```
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo yum-config-manager --add-repo \
      https://download.docker.com/linux/centos/docker-ce.repo
sudo yum-config-manager --enable docker-ce-edge
sudo yum install docker-ce
sudo usermod -aG docker <your_user>
```

### Docker-compose installation:
```
sudo yum install python-pip
sudo pip install docker-compose
sudo docker-compose --version
```

### Ansible installation:
```
sudo pip install ansible
```

### How to use:
```
To install nginx + tomcat + deploy sample.war:
ansible-playbook playbook.yml -e key=up
To stop all containers:
ansible-playbook playbook.yml -e key=down
```
