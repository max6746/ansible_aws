#!/bin/bash
yum update -y
yum install python2-pip -y
pip install boto -y
yum install ansible -y