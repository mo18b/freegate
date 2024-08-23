#!/bin/bash
# Use this for your user data ( script from top to bottom)
# install httpd ( Linux 2 version )
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd 
sudo echo "<h1>Hello World from $(hostname -f) </h1>" | sudo tee /var/www/html/index.html
