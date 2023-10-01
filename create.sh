#!/bin/bash

# Create VPC
cd vpc

terraform init
terraform fmt
terraform validate
terraform plan
terraform apply -auto-approve
echo "VPC CREATED!"

# Create Cluster along with Cluster Autoscaler
cd ../cluster

terraform init
terraform fmt
terraform validate
terraform plan
terraform apply -auto-approve
echo "CLUSTER AND AUTOSCALER CREATED!"

# Create IAM Users and Roles along with their policies
cd ../users

terraform init
terraform fmt
terraform validate
terraform plan
terraform apply -auto-approve
echo "IAM USERS, ROLE, AND POLICIES CREATED!
