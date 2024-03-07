variable "cluster_variable" {
  type = map(any)
}
variable "nodegroup_variable" {
  type        = map(any)
  description = "This variable comprises all configuration information used to create EKS Cluster Node Group."
}


variable "region" {
  type = string
}
variable "common_tags" {
  type = any
}


