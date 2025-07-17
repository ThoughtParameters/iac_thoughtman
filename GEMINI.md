# Gemini-Assisted Terraform Development for GCP GKE Cluster

## Goal

The primary goal is to create a set of Terraform blueprints to provision a Google Kubernetes Engine (GKE) cluster on Google Cloud Platform (GCP).

## Instructions for Gemini

1.  **Gather Context:** Before making any changes, read all `*.tf` files in the current directory to understand the existing Terraform configuration.
2.  **Terraform Provider:** Ensure the configuration uses the `google` provider for GCP resources.
3.  **Networking:**
    *   Define a VPC using "auto mode" to automatically create subnets in each region. This VPC will host the GKE cluster.
    *   Ensure the GKE cluster is publicly accessible and can be reached from clients outside the VPC.
4.  **GKE Cluster:**
    *   Provision a GKE cluster.
    *   Configure the cluster to be publicly accessible.
    *   Assign a DNS name to the cluster's endpoint.
    *   Enable beneficial features for the GKE cluster, such as:
        *   Workload Identity for secure access to GCP APIs from pods.
        *   Monitoring and Logging with Google Cloud's operations suite.
        *   Autoscaling for node pools.
5.  **Terraform Best Practices:**
    *   **Modular Design:** Organize the Terraform code into logical modules (e.g., a module for networking, a module for the GKE cluster).
    *   **Variable-driven Configuration:** Use `variables.tf` to define input variables for configurable parameters like project ID, region, cluster name, etc. Provide sensible defaults in `terraform.tfvars`.
    *   **Outputs:** Use `outputs.tf` to export important values like the GKE cluster endpoint, name, and VPC name.
    *   **State Management:** While not directly configurable here, recommend the use of a remote backend (like a GCS bucket) for storing the Terraform state file in a production environment.
    *   **Formatting and Linting:** Ensure all Terraform code is correctly formatted using `terraform fmt`.
6.  **Code Implementation:**
    *   Add, update, or remove Terraform code (`.tf` files) as needed to implement the described infrastructure.
    *   Start by creating a `main.tf`, `variables.tf`, and `outputs.tf`.
7.  **Clarification:** If any requirements are unclear or ambiguous, ask for clarification before proceeding with implementation.

## Example Resources to Create

*   `google_project_service` to enable required APIs (e.g., `container.googleapis.com`, `compute.googleapis.com`).
*   `google_compute_network` for the VPC.
*   `google_container_cluster` for the GKE cluster.
*   `google_dns_record_set` (if a managed DNS zone is available) for the DNS name.
