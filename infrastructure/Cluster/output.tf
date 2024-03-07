output "cluster-name" {
  value = aws_eks_cluster.eks.name
}

output "cluster-arn" {
  value = aws_eks_cluster.eks.arn
}
output "cluster-endpoint" {
  value = aws_eks_cluster.eks.endpoint
}
output "cluster-oidc-id" {
  value = aws_eks_cluster.eks.identity[0].oidc[0].issuer
}
output "k8s-version" {
  value = aws_eks_cluster.eks.version
}


