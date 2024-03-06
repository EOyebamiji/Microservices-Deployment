terraform {
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.26.0"
    }
  }
}

data "aws_eks_cluster" "Ops-Dev-EKS-Cluster" {
  name = "Ops-Dev-EKS-Cluster"
}
data "aws_eks_cluster_auth" "Ops-Dev-EKS-Cluster_auth" {
  name = "Ops-Dev-EKS-Cluster_auth"
}
provider "kubernetes" {
  host                   = data.aws_eks_cluster.Ops-Dev-EKS-Cluster.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.Ops-Dev-EKS-Cluster.certificate_authority[0].data)
  config_path = "~/.kube/config"
  exec {
    api_version = "client.authentication.k8s.io/v1beta1"
    args        = ["eks", "get-token", "--cluster-name", "Ops-Dev-EKS-Cluster"]
    command     = "aws"
  }
}

resource "kubernetes_namespace" "kube-namespace" {
  metadata {
    name = "voting-app"
  }
}

