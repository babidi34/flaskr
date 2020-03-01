# flaskr

PHASE 1 :
- Build the VM Ubuntu server 16.04 LTS

- Add the target (here is the Ubuntu VM) on /etc/hosts of the node manager Ansible

- Install openssh-server on Ubuntu VM

- Copy the key ssh on Ubuntu VM

- Create Inventory.ini on the ansible server

- Test the communication Ansible --> Target with the module ping

- Creation playbook for the requirements (python3, git, pip)

- Creation playbook install flaskr

- Creation script (python3 flaskr.py) in /etc/init.d/ and symbolic link in /etc/rc3.d to the /etc/init.d/ for launch flaskr at boot

- Build of Dockerfile with listening on port 5000 + push the image to the dockerhub
	- for use this container when you download the image, you will must redirect the port 5000:8080 (-p 8080:5000)


PHASE 2:

- For publish this application with the HTTPS :
	- install apache server
	- configure flaskr on the apache server with WSGI and virtualenv with a file requirements
	- take a domain name
	- use Certbot for create a let's Encrypt certificat and install the certificat on the server Apache then redirect the port 80 to the 443
- For the security:
	- use ssh-key only for the connection SSH
	- use a script for update all application and put it in cron
	- use a tool for the supervision
	- put "ServerTokens Prod \n ServerSignature Off" in security.conf of apache server

- For deploy the application with a minimal customer impact :
	- deploy the application on a container
	- create a container with a bdd and connect the 2 servers

- The possibilities for backup:
	- take a snapshot of the VM
	- save the partition with tools like Clonezilla
	- On server redhat/centos use Rear
	- stock project on private repository like github or gitlab

