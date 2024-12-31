Readme.md

# Terraform Project: AWS Infrastructure

This project contains Terraform code to automate the creation and management of AWS infrastructure, including VPCs, subnets, EC2 instances, EKS clusters, and RDS databases.

## Prerequisites

Ensure you have the following tools installed before using this project:

- AWS Account.
- AWS account credentials and permissions for testing.
- Terraform installed.
- GitHub account.
- AWS CLI installed.
- VS code editor.


## Features

This Terraform configuration provides the following capabilities:

1. VPC Configuration
   - Creation of a custom VPC
   - Public and private subnets spread across multiple availability zones
   - Internet Gateway for internet connectivity

2. Compute Resources
   - Launch EC2 instances with customizable instance types, key pairs, and security    groups

3. EKS Cluster
   - Deployment of an Amazon Elastic Kubernetes Service (EKS) cluster
   - Auto-scaling node groups for containerized workloads

4. RDS Database
   - Deployment of a fully managed RDS database 
   - Configurable storage, backup retention, and multi-AZ deployments

5. Security
   - Security groups for fine-grained access control
   - IAM roles and policies for resource management

 Usage

1. Clone the Repository
   
   git clone https://github.com/Nidhipatil29/Devops-proj-1-E-Commerce-app.git
  
  

2. Initialize Terraform
  
   terraform init
   

3. Preview Changes

   terraform plan
   

4. Apply Changes
 
   terraform apply
   
Confirm the prompt by typing `yes` to start the resource creation process.

5. Destroy Resources
   To clean up and delete all resources:
   
   terraform destroy
   


## Inputs

Refer to `variables.tf` for the full list of configurable inputs. Below are some commonly used variables:


## Outputs

Refer to `outputs.tf` for the list of outputs provided by this configuration. Key outputs include:

- VPC ID
- EKS Cluster name
- EKS Cluster Endpoint





