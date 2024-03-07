output "cluster-name" {
  value = module.eks_cluster[0].cluster-name
}
output "cluster-arn" {
  value = module.eks_cluster[0].cluster-arn
}
output "cluster-endpoint" {
  value = module.eks_cluster[0].cluster-endpoint
}
output "cluster-oidc-id" {
  value = module.eks_cluster[0].cluster-oidc-id
}
output "nodegroup-arn" {
  value = module.node_group[0].nodegroup-arn
}
output "kubernetes-version" {
  value = module.eks_cluster[0].k8s-version
}
