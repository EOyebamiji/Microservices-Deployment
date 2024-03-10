#!/bin/bash

# Set -e for immediate script exit on error
set -e

# Define a function to allow for colored output
print_colored() {
  CYAN='\033[1;36m'
  NO_COLOR='\033[0m'
  printf "${CYAN}== $1 ${NO_COLOR}\n"
}

print_colored "=== This script is to automate the execution of the deployed infrastructure with terraform ==="

pwd

cd prometheus-helm/
print_colored "=== Executing Prometheus ==="
aws eks --region eu-west-2 update-kubeconfig --name EKS-Cluster
terraform init
terraform apply --auto-approve

cd ../voting-app/
print_colored "=== Executing Voting App ==="
terraform init
terraform apply --auto-approve

cd ../micro-service/
print_colored "=== Executing Microservices ==="
terraform init
terraform apply --auto-approve

cd ../ingress-rule/
print_colored "=== Executing Ingress Rule ==="
terraform init
terraform apply --auto-approve

cd ../nginx-controller/
print_colored "=== Executing Nginx Controller ==="
terraform init
terraform apply --auto-approve

print_colored "=== Infrastructure Successfully Deployed ==="