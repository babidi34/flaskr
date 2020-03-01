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

- Creation script (python3 flaskr.py) in /etc/init.d/ and symbolic link in /etc/rc3.d to the /etc/init.d/

- Build of Dockerfile with listening on port 5000 + push the image to the dockerhub
	- for use this container when you download the image, you will must redirect the port 5000:8080 (-p 8080:5000)


