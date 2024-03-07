
module "eks_cluster" {

  source                = "../Cluster"
  for_each              = var.cluster_variable
  cluster-name          = each.value.cluster-name
  k8s-version           = each.value.k8s-version
  subnet_id             = each.value.subnet_id
  aws_iam_role_eks_name = each.value.aws_iam_role_eks_name
  if_role_exists        = each.value.if_role_exists
  eks_existing_role     = each.value.eks_existing_role
  tags                  = var.common_tags


}


module "node_group" {


  source                      = "../NodeGroup"
  for_each                    = var.nodegroup_variable
  depends_on                  = [module.eks_cluster]
  cluster_name                = module.eks_cluster[0].cluster-name
  instance_type               = each.value.instance_type
  node_group_name             = each.value.node_group_name
  desired_size                = each.value.desired_size
  max_size                    = each.value.max_size
  min_size                    = each.value.min_size
  max_unavailable             = each.value.max_unavailable
  subnet_id                   = each.value.subnet_id
  aws_iam_role_name           = each.value.aws_iam_role_name
  if_nodegroup_role_exists    = each.value.if_nodegroup_role_exists
  eks_nodegroup_existing_role = each.value.eks_nodegroup_existing_role
  tags                        = var.common_tags

}