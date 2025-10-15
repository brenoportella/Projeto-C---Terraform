#!/bin/bash
set -e

# update system
sudo apt-get update -y && sudo apt-get upgrade -y

# Install Nginx and curl
sudo apt-get install -y nginx curl

# make dir 
sudo mkdir -p /var/www/html

# copy html file to nginx path
sudo cp /home/ubuntu/project-c/site/index.html /var/www/html/index.html

# starts nginx service
sudo systemctl enable nginx
sudo systemctl restart nginx

# show status
sudo systemctl status nginx --no-pager

curl http://localhost