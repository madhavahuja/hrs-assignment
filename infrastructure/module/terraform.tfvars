region = "eu-central-1"
common_tags = {
  "Owner"           = "madhavahuja2@gmail.com"
}

cluster_variable = {
  "0" = {
    cluster-name          = "eks-terraform"
    k8s-version           = "1.28"
    subnet_id             = ["subnet-1234567890", "subnet-1234567890", "subnet-1234567890", "subnet-1234567890"]
    aws_iam_role_eks_name = "eks_cluster_role"

    if_role_exists    = false
    eks_existing_role = ""
  }

}
nodegroup_variable = {
  "0" = {
    instance_type               = ["t2.small"]
    node_group_name             = "eks_terraform_nodegroup"
    desired_size                = 2
    max_size                    = 2
    min_size                    = 2
    max_unavailable             = 1
    subnet_id                   = ["subnet-1234567890", "subnet-1234567890", "subnet-1234567890", "subnet-1234567890"]
    aws_iam_role_name           = "eks_nodegroup_role"
    if_nodegroup_role_exists    = false
    eks_nodegroup_existing_role = ""
  }

}