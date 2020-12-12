#!/bin/bash

# set tensorclan to enabled site
sudo ln -s /etc/nginx/sites-available/tensorclan /etc/nginx/sites-enabled

# parse the sites-enabled
sudo nginx -t

# restart nginx
sudo systemctl restart nginx
