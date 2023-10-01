#!/bin/bash
cd users
terraform destroy -auto-approve
echo "IAM Users and Roles destoyed!"

cd ../cluster
terraform destroy -auto-approve
echo "Cluster with the Autoscaler destroyed!"

cd ../vpc
terraform  destroy -auto-approve
echo "VPC destroyed!"
echo "All destroying completed!"
echo "Thank yo
u!"
