variable "project_id" {
  description = "The project ID to host the GKE cluster in."
  type        = string
}

variable "region" {
  description = "The region to host the GKE cluster in."
  type        = string
  default     = "us-central1"
}

variable "cluster_name" {
  description = "The name of the GKE cluster."
  type        = string
  default     = "my-gke-cluster"
}

variable "vpc_name" {
  description = "The name of the VPC network."
  type        = string
  default     = "my-gke-vpc"
}

variable "gke_version" {
  description = "The version of the GKE cluster."
  type        = string
  default     = "latest"
}
