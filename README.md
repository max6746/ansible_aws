# ansible_aws
Ansible can be used to define, deploy, and manage a wide variety of AWS services.
Even the most complicated of AWS environments can be easily described in Ansible playbooks.
Ansible has nearly 100 modules supporting AWS capabilities. 
This project describes an demo to configure an ec2 instance with httpd service ( apache server).

Set up:
1. Use "aws.sh" while launching driver EC2 instance.

![ScreenShot](https://github.com/max6746/ansible_aws/blob/master/Screenshot%20(543).png)

2. Edit and place .boto in ~ as ~/.boto

3. Run ansible/site.yml as $ ansible-playbook site.yml
