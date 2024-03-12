# AltSchool SOE: Cloud Engineering Capstone Project

## Microservices: Automating The Deployment of Socks Shop on Kubernetes Using Terraform and Jenkins

### Project Overview

This project aims to deploy a microservices-based application, Socks Shop, using a modern approach that emphasizes automation and efficiency. The goal is to use Infrastructure as Code (IaC) for rapid and reliable deployment on Kubernetes. To create a reproducible and maintainable deployment process that leverages modern DevOps practices and tools.

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

To utilize this repository, follow these steps:

1. Login to your AWS account and create a new Instance with the name "Jenkins-Server" (Any name of choice surficces). This is where our Jenkins server will be hosted.

![AWS-Instance](assets/AWS/AWS-Jenkins-Instance.png)

2. Upon creation of the instance, connect to the instance and clone this repository into the created instance.

```bash
git clone https://github.com/EOyebamiji/capstone.git
```

![AWS-SSH-Instance](assets/AWS/AWS-SSH-Instance.png)

![GitHub-Clone](assets/GitHub/GitHub-Clone.png)

3. After cloning the repository, kindly navigate into the cloned repository and execuste the `script.sh` by following the below command

```bash
cd capstone     #Chnage directory into the repository

chmod +x ./script.sh    #This is a bash script to automate the installation of the project tools requirements and dependencies e.g. AWS CLI, terraform, helm, jenkins etc. This command will set this script to be executable by all users.

./script.sh     #This command will execute the script and install the project tools requirements and dependencies. Kindly press enter where necessary to run the script.
```

![GitHub-Execute-Script](assets/GitHub/GitHub-Execute-Script.png)

![GitHub-Script-Execution](assets/GitHub/GitHub-Script-Execution.png)

4. Upon completion, the script will have installed the project tools requirements and dependencies. next step is to copy the public IP address of the "Jenkins-Server" instance and input into our browser to access our Jenkins server e.g. `18.171.172.160:8080`.

![GitHub-Successful-Script-Execution](assets/GitHub/GitHub-Successful-Script-Execution.png)

5. Access the Jenkins server's login credentials from  `/var/lib/jenkins/secrets/initialAdminPassword` using the command:

```bash
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```

![Jenkins-Initial-Password](assets/Jenkins/Jenkins-Initial-Password.png)

6. Access and Unlock Jenkins using the password, install necessary dependencies, and set up an administrative account for login.

![Jenkins-Unlock](assets/Jenkins/Jenkins-Unlock.png)

Input the password copied from the directory `/var/lib/jenkins/secrets/initialAdminPassword` and unlock the server. Install the Jenkins server dependencies and setup an admiministrative account for Login.

![Jenkins-Admin](assets/Jenkins/Jenkins-Admin-User.png)

![Jenkins-Ready](assets/Jenkins/Jenkins-Ready.png)

Configure credentials in the Jenkins server to connect to endpoints - GitHub and AWS accounts.

![Jenkins-Dashboard](assets/Jenkins/Jenkins-Dashboard%20.png)

![Jenkins-Manage](assets/Jenkins/Jenkins-Manage.png)

![Jenkins-Credentials](assets/Jenkins/Jenkins-Credentials%20.png)

![Jenkins-Global](assets/Jenkins/Jenkins-Global.png)

![Jenkins-Add-Cred](assets/Jenkins/Jenkins-Add-Credentials%20.png)

![Jenkins-Added-Cred](assets/Jenkins/Jenkins-Added-Crendetials.png)

![Jenkins-Added-Crede](assets/Jenkins/Jenkins-Added-Crednetials.png)

After adding necessary credentials, create the first pipeline for the EKS (Elastic Kubernetes Service) Cluster, which will host the microservices application.

## EKS Cluster Creation

![Jenkins-New-Item](assets/Jenkins/Jenkins-New-Ite,m.png)

![Jenkins-New-EKS-Pipeline](assets/Jenkins/Jenkins-New-Pipeline-EKS-Cluster.png)

Configure the pipeline, pointing to the GitHub repository and using the `cluster-Jenkinsfile`script.

![Jenkins-Pipeline-Config](assets/Jenkins/Jenkins-Pipeline-Configuration%20.png)

Save the configuration and build the pipeline.

![Jenkins-Build-Pipeline](assets/Jenkins/Jenkins-Build-Pipeline.png)

After a successful build, validate the EKS cluster's configuration and deployed resources on AWS.

![Jenkins-Build-Sucess](assets/Jenkins/Jenkins-Successful-EKS-Pipeline%20.png)

Verify the successful deployment of the EKS cluster and its dependencies on AWS.

![AWS-EKS-Confirmation](assets/AWS/AWS-EKS-Cluster.png)

![AWS-EKS-ClusterNode](assets/AWS/AWS-EKS-Cluster-NodeGroup.png)

## Microservices Application Creation

After deploying the EKS Cluster, create the Microservices Application pipeline following similar steps as the EKS pipeline. Set the script path to `Jenkinsfile` when configuring the pipeline.

![Jenkins-Microservices](assets/Jenkins/Jenkins-Pipeline-Microservices.png)

![Jenkins-Microservices-Deploy](assets/Jenkins/Jenkins-Pipeline-Microservices-Successful.png)

After a successful deployment of the Microservices application, validate the resources and configurations on AWS.

### Microservices Deployment Confirmation

![AWS-EKS-ClusterNodeGroup](assets/AWS/AWS-EKS-Cluster-NodeGroup-Nodes.png)

![AWS-EKS-ClusterNodes](assets/AWS/AWS-EKS-Cluster-NodeGroup-NodesII.png)

![AWS-EKS-ClusterNode-Pods](assets/AWS/AWS-EKS-Cluster-NodeGroup-Pods.png)

![AWS-EKS-ClusterNode-Prom](assets/AWS/AWS-EKS-Cluster-Pods-Prometheus%20.png)

![AWS-EKS-ClusterNode-SockShop](assets/AWS/AWS-EKS-Cluster-Pods-Sock-Shop.png)

![AWS-EKS-ClusterNode-VotingApp](assets/AWS/AWS-EKS-Cluster-Pods-Voting-App.png)

![AWS-EKS-ClusterNode-Namespaces](assets/AWS/AWS-EKS-Cluster-Cluster-Namespace.png)

![AWS-Route53](assets/AWS/AWS-Route53.png)

![AWS-Route53-HostedZone](assets/AWS/AWS-Route53-Hosted-Zone.png)

![AWS-ACM](assets/AWS/AWS-ACM-Validation%20.png)

![AWS-ACM-Validation](assets/AWS/AWS-ACM-Successful-Validation.png)

![AWS-ACM-Validation](assets/AWS/AWS-ACM-Successful-Validation-II.png)

![AWS-ELB](assets/AWS/AWS-ELB.png)

![AWS-AutoScaling](assets/AWS/AWS-Auto-Scaling.png)

![AWS-SG](assets/AWS/AWS-SG.png)

![AWS-SG-Description](assets/AWS/AWS-SG-Description.png)

### Deployed Application

![Sock-Shop-App](assets/App/Deployed-Sock-Shop-App.png)

![Sock-Shop-App-Cart](assets/App/Deployed-Sock-Shop-App-Catalougue%20.png)

![Voting-App](assets/App/Deployed-Voting-App.png)

![Results-Portal](assets/App/Deployed-Results-Portal.png)

### Grafana Monitoring Application

![Grafana-Login](assets/Grafana/Grafana-Login.png)

![Grafana-Homepage](assets/Grafana/Grafana-Homepage.png)

![Grafana-AlertManager](assets/Grafana/Grafana-Alert-Manager.png)

![Grafana-Kubelets-Pods](assets/Grafana/Grafana-Kubelet-Pods.png)

![Grafana-Kubelets-Pods-Interval](assets/Grafana/Grafana-Kubelet-Pods-6Hrs.png)

![Grafana-SockShop-Pods](assets/Grafana/Grafana-Pods-Sock-Shop.png)

![Grafana-Prometheus](assets/Grafana/Grafana-Prometheus%20.png)

![Prometheus](assets/Prometheus/Kubectl-CLI.png)

Now that the application is confirmed working, the next step is to destroy resources and clean up the environment to avoid unnecessary costs.

### Destroy Pipelines

First, destroy the Microservices pipeline.

![Jenkins-Microservices-Destroy](assets/Jenkins/Jenkins-Destroy-Microservices-Parameter.png)

![Jenkins-Microservice-Destroy](assets/Jenkins/Jenkins-Destroy-Microservices.png)

Next, destroy the EKS Cluster pipeline.

![Jenkins-EKS-Destroy](assets/Jenkins/Jenkins-Destroy-EKS-Cluster-Parameters.png)

![Jenkins-EKS-Cluster-Destroy](assets/Jenkins/Jenkins-Destroy-EKS-Cluster-Destroy%20.png)

Finally, delete the AWS Instance housing the Jenkins-Server.

![AWS-Instance-Termination](assets/AWS/AWS-Instance-Termination%20.png)

Here is the end of the deployment of the microservices application (Sockshop) in a Kubernetes cluster using Terraform and Kubernetes is now complete.

### Extras

I made an attempt to recreate the CI/CD pipeline using GitHub Actions; however, the deployment was not completed. The pipeline triggers but deployment fails as terrafrom level. It doesn't recongize resources it created, hence, difficult to run updates without access to statefile. A few tweaks here and there should resolve this. You can access it [here](.github/workflows/eks-cluster.yml)

![GitHub-Actions](assets/GitHub/GitHub-Actions.png)


### Resources

[Sock Shop Microservices App](https://github.com/microservices-demo/microservices-demo.github.io)

[Sock Shop Implementation Guide](https://github.com/microservices-demo/microservices-demo/tree/master)

[Architecture](assets/Architecture.png)