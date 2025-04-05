#!/bin/bash

####

USERNAME="shinobi"

PASSWORD="shinobi"

####

useradd -m "$USERNAME"

echo "$USERNAME:$PASSWORD" | chpasswd

echo "User '$USERNAME' created with password '$PASSWORD' (set non-interactively)."

chown -R $USERNAME: /home/$USERNAME 

chmod -R 770 /home/$USERNAME 

ls -lha /home/$USERNAME 

##

yum install openssh-server net-tools -y

## 

cat /etc/issue;

echo "Shinobi Alma 24.04" > /etc/issue;

cat /etc/issue;

##