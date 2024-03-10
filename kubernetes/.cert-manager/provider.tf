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


data "aws_eks_cluster" "cluster_name" {
  name = var.cluster_name
}
data "aws_eks_cluster_auth" "cluster_name" {
  name = "${var.cluster_name}_auth"
}


provider "aws" {
  region     = var.aws_region
}
