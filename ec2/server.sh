#!/bin/bash
sudo yum update
sudo yum install -y httpd
sudo systemctl enable httpd
echo "<h1>hello from Terraform</h1>" | sudo tee /var/www/html/index.html