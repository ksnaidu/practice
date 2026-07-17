#!/bin/bash
component=$1
dnf install ansible -y
#ansible-pull -U https://github.com/ksnaidu/practice.git//ansible-roboshop-roles  -e component=$1 -e env=$2 main.yaml

ansible-pull \
  -U https://github.com/ksnaidu/practice.git \
  -e component=$1 \
  -e env=$2 \
  ansible-roboshop-roles/main.yaml