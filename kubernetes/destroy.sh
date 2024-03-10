#!/bin/bash

# Set -e for immediate script exit on error
set -e

# Define a function to allow for colored output
print_colored() {
  CYAN='\033[1;36m'
  NO_COLOR='\033[0m'
  printf "${CYAN}== $1 ${NO_COLOR}\n"
}

print_colored "=== This script is to automate the destruction of the deployed infrastructure with terraform ==="

pwd

cd prometheus-helm/
print_colored "=== Destroying Prometheus ==="
terraform destroy --auto-approve

cd ../voting-app/
print_colored "=== Destroying Voting App ==="
terraform destroy --auto-approve

cd ../micro-service/
print_colored "=== Destroying Microservices ==="
terraform destroy --auto-approve

cd ../ingress-rule/
print_colored "=== Destroying Ingress Rule ==="
terraform destroy --auto-approve

cd ../nginx-controller/
print_colored "=== Destroying Nginx Controller ==="
terraform destroy --auto-approve

print_colored "=== Infrastructure Successfully Destroyed ==="