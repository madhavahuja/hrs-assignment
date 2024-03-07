

resource "aws_eks_node_group" "eks-nodegroup" {

  node_role_arn = var.if_nodegroup_role_exists ? var.eks_nodegroup_existing_role : aws_iam_role.eks-nodegroup[0].arn

  cluster_name = var.cluster_name

  node_group_name = var.node_group_name

  subnet_ids = var.subnet_id

  instance_types = var.instance_type



  scaling_config {

    desired_size = var.desired_size

    max_size = var.max_size

    min_size = var.min_size


  }



  update_config {

    max_unavailable = var.max_unavailable

  }


  depends_on = [

    aws_iam_role_policy_attachment.eks-nodegroup-AmazonEKSWorkerNodePolicy,

    aws_iam_role_policy_attachment.eks-nodegroup-AmazonEKS_CNI_Policy,

    aws_iam_role_policy_attachment.eks-nodegroup-AmazonEC2ContainerRegistryReadOnly,

  ]
  tags = var.tags

}





resource "aws_iam_role" "eks-nodegroup" {
  count = var.if_nodegroup_role_exists ? 0 : 1
  name  = var.aws_iam_role_name



  assume_role_policy = jsonencode({

    Statement = [{

      Action = "sts:AssumeRole"

      Effect = "Allow"

      Principal = {

        Service = "ec2.amazonaws.com"

      }

    }]

    Version = "2012-10-17"

  })

}


resource "aws_iam_role_policy_attachment" "eks-nodegroup-AmazonEKSWorkerNodePolicy" {
  count      = var.if_nodegroup_role_exists ? 0 : 1
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"

  role = aws_iam_role.eks-nodegroup[0].name

}



resource "aws_iam_role_policy_attachment" "eks-nodegroup-AmazonEKS_CNI_Policy" {
  count      = var.if_nodegroup_role_exists ? 0 : 1
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"

  role = aws_iam_role.eks-nodegroup[0].name

}



resource "aws_iam_role_policy_attachment" "eks-nodegroup-AmazonEC2ContainerRegistryReadOnly" {
  count      = var.if_nodegroup_role_exists ? 0 : 1
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"

  role = aws_iam_role.eks-nodegroup[0].name

}





