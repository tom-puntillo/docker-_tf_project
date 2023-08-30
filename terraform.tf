#---root-terraform.tf

# Define the configuration version for Terraform.
terraform {
  # Configure Terraform for cloud operations.
  cloud {
    # Specify the organization associated with the cloud workspace.
    organization = "tom_puntillo"

    # Define the workspace details within the organization.
    workspaces {
      # Set the name of the workspace for the project.
      name = "docker-_tf_project"
    }
  }
}