terraform {
  required_providers {
    helm = {
      source = "hashicorp/helm"
      version = "2.12.1"
    }

    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.26.0"
    }

    kubectl = {
      source = "gavinbunney/kubectl"
      version = "1.14.0"
    }
  }
}


data "aws_eks_cluster" "hr-dev-eks-demo" {
  name = "hr-dev-eks-demo"
}
data "aws_eks_cluster_auth" "hr-dev-eks-demo_auth" {
  name = "hr-dev-eks-demo_auth"
}


provider "aws" {
  region     = "eu-west-2"
}
