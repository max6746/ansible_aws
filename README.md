# ansible_aws
# Illustration by: KUMAR MAYANK
Ansible can be used to define, deploy, and manage a wide variety of AWS services.
Even the most complicated of AWS environments can be easily described in Ansible playbooks.
Ansible has nearly 100 modules supporting AWS capabilities. 
This project describes an demo to configure an ec2 instance with httpd service ( apache server).

Set up:
1. Use "aws.sh" while launching driver EC2 instance.

![ScreenShot](https://github.com/max6746/ansible_aws/blob/master/Screenshot%20(543).png)

2. Edit and place .boto in ~ as ~/.boto

3. Find ansible codes in ansible directory.

4. hosts is used by playbook as Inventory to group hosts. Later it is used as dynamic Inventory, which stores public IP of EC2 instance created, along with user and path to private key file.

5. Run ansible/site.yml as $ ansible-playbook site.yml

6. site.yml when executed does performs following tasks:
   1. Create AWS EC2 instance
   2. Create security group
   3. Create an EC2 key
   4. save private key
   5. Create an EC2 instance
   6. Add newly EC2 instance to hosts group. [IP, user and path of private key]

Elaboration:
1. this playbook uses two roles - create and http
2. role "create" [ansbile/create] is being used to create a new EC2 instance. 
3. Edit group_vars/all to configure region, ami, subnet instance type, project_name, env, hostpath, documentroot, app_code_user
4. role "http" [ansible/roles/http] is being used to install and configure httpd service over node (newly created EC2 instance).
5. role "http" uses Directory strucutre. 
     1. files [ansible/roles/http/files/index.html] contains the webpages to be deployed. (example index.html)
     2. handlers [ansible/roles/http/handlers/main.yml] conatins all the handler used in tasks.
     3. meta [ansible/roles/http/meta/main.yml] can be used to define dependencies used in playbook.
     4. tasks [ansible/roles/http/tasks/main.yml] conatins all the tasks under http role.
     5. templates [ansible/roles/http/templates/testing.conf.j2] conatins templates which can support usage of variables, loops. This demo includes http conf file.
     6. vars [ansible/roles/http/vars/main.yml] contains all the variables used in role "http".
     
P.S. Report on illustration: #Ansible - Orchestration of EC2 Instance.pdf
