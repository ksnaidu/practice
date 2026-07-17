#!/bin/bash
component=$1
dnf install ansible -y
ansible-pull -u https://github.com/ksnaidu/11AM.git//ansible-roboshop-roles  -e component=$1 -e env=$2 main.yaml
