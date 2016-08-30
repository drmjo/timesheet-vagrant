#!/bin/bash

sudo apt-get update
sudo apt-get install -y nginx \
samba \
git \

echo ubuntu:ubuntu | sudo chpasswd
(echo ubuntu; echo ubuntu) | sudo smbpasswd -a ubuntu
sudo mv /home/ubuntu/smb.conf /etc/samba/smb.conf
sudo systemctl restart smbd.service

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.6/install.sh | bash

source /home/ubuntu/.nvm/nvm.sh

nvm install 6.5

# cp /vagrant/vagrant.apache.conf /etc/apache2/sites-enabled/000-default.conf
# service apache2 reload
