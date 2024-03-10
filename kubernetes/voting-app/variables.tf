variable "domain_name" {
  description = "This is the domain name"
  type        = string
  default     = "eoyebamiji.com"
}
  
variable "alt_domain_name" {
  description = "This is the alternative domain name"
  type        = string
  default     = "*.eoyebamiji.com"
}

variable "cluster_name" {
  description = "This is the EKS Cluster name"
  type        = string
  default     = "EKS-Cluster"
}

variable "aws_region" {
  description = "Region in which AWS Resources are going to be created"
  type        = string
  default     = "eu-west-2"
}