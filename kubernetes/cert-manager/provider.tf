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


data "aws_eks_cluster" "Ops-Dev-EKS-Cluster" {
  name = "Ops-Dev-EKS-Cluster"
}
data "aws_eks_cluster_auth" "Ops-Dev-EKS-Cluster_auth" {
  name = "Ops-Dev-EKS-Cluster_auth"
}


provider "aws" {
  region     = "eu-west-2"
}
