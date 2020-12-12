#!/bin/bash

rm -r tensorclan-ec2

sudo apt install -y pip3
sudo apt install -y gunicorn libsndfile1 libasound2-dev libsndfile-dev nginx-light

# clone repo
git clone https://github.com/extensive-vision-ai/tensorclan-ec2

cd tensorclan-ec2

# install the requirements
(cd web && npm install && npm run build)
(cd backend && pip3 install -r requirements.txt)

# create the service
sudo cp tensorclan.service /etc/systemd/system/tensorclan.service

# start and enable the service
sudo systemctl start tensorclan
sudo systemctl enable tensorclan

# create nginx config
sudo cp tensorclan /etc/nginx/sites-available/tensorclan
