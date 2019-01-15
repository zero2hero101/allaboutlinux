#!/bin/bash
useradd -m -s /bin/bash userone  -c "This is UserOne # you can replace this with a name you want"
usermod -aG sudo userone
mkdir /home/userone/.ssh
echo -e "user ssh key here" > /home/userone/.ssh/authorized_keys
chown userone:userone /home/userone/.ssh -R
chmod 700 /home/userone/.ssh -R
chmod 600 /home/userone/.ssh/authorized_keys
sed -i '33 s/^#//' /etc/ssh/sshd_config             # all numbers of lines are depends on your ssh config 
sed -i '52 s/yes/no/' /etc/ssh/sshd_config
sed -i '28 s/yes/no/' /etc/ssh/sshd_config
