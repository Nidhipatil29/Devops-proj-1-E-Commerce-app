output "dev_proj_1_vpc_id" {
  value = module.networking.dev_proj_1_vpc_id
}

output "eks_cluster_name" {
  description = "Name of the EKS cluster"
  value       = module.eks_cluster.eks_cluster_name
}

output "eks_cluster_endpoint" {
  description = "Endpoint of the EKS cluster"
  value       = module.eks_cluster.eks_cluster_endpoint
}


