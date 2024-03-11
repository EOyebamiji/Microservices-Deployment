# AltSchool SOE: Cloud Engineering Capstone Project

## Microservices: Automating The Deployment of Socks Shop on Kubernetes Using Terraform and Jenkins

### Project Overview

This project aims to deploy a microservices-based application, specifically the Socks Shop, using a modern approach that emphasizes automation and efficiency. The goal is to use Infrastructure as Code (IaC) for rapid and reliable deployment on Kubernetes. To create a reproducible and maintainable deployment process that leverages modern DevOps practices and tools.

#### Project Objective

- Microservices Deployment: Deploy the Socks Shop, showcasing a microservices architecture that brings flexibility and scalability.

- Infrastructure as Code (IaC): Automate the deployment process by adopting IaC principles thereby ensuring rapid deployment, consistency and efficiecny.

- Implement monitoring, logging, and security measures to enhance the application's operational aspects.

#### Tools Utilised

- IaaC - AWS
- IaC - Terraform
- CI/CD - Jenkins
- Orchestration - Kubernetes (AWS Elastic Kubernetes Service - EKS)

#### Prerequisites

- AWS Account
- GitHub Account
- AWS CLI
- Terraform

#### Getting Started

To utilise this repo, kindly follow through the below step:

1. Login to your AWS account and create a new Instance with the name "Jenkins-Server" (Any name of choice surficces). This is where our Jenkins server will be hosted.

2. Upon creation of the instance, connect to the instance and clone this repository into the created instance.

```bash
git clone https://github.com/EOyebamiji/capstone.git
```

3. After cloning the repository, kindly navigate into the cloned repository and execuste the `script.sh` by following the below command

```bash
cd capstone     #Chnage directory into the repository

chmod +x ./script.sh    #This is a bash script to automate the installation of the project tools requirements and dependencies e.g. AWS CLI, terraform, helm, jenkins etc. This command will set this script to be executable by all users.

./script.sh     #This command will execute the script and install the project tools requirements and dependencies. Kindly press enter where necessary to run the script.
```

4. Upon completion, the script will have installed the project tools requirements and dependencies. next step is to copy the public IP address of the "Jenkins-Server" instance and input into our browser to access our Jenkins server e.g. `80.1.1.3:3000`.
