# Web server on Azure Virtual Machine with Terraform (nginx in Docker on Ubuntu LTS)

```
# open Cloud Shell at portal.azure.com

# create and enter temp folder
cd $(mktemp -d)

# clone IaC repo
git clone https://github.com/mkol5222/tf-azrure-nginx.git

# enter and review
cd tf-azrure-nginx; code .

# init TF
terraform init

# assume that Azure Cloud Shell has your subscription identity

# 
terraform apply

# HTTP access to NGINX
curl $(terraform output -json nginx_public_ip | jq -r .)

# see random password
terraform output -json password | jq -r '.[0]'

# login
ssh adminuser@$(terraform output -json nginx_public_ip | jq -r .)

# play

# clean up
terraform destroy

```
