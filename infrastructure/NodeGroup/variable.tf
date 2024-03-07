
variable instance_type{
    type = list
}

variable node_group_name{
    type = string
}

variable desired_size{
    type = number
}

variable max_size{
    type = number
}

variable min_size{
    type = number
}

variable max_unavailable{
    type = number
}


variable subnet_id{
    type = list
}

variable aws_iam_role_name{
    type = string
}
variable "cluster_name"{
    type = string
}

variable "if_nodegroup_role_exists" {
  type = bool
}

variable "eks_nodegroup_existing_role" {
  type = string
}

variable "tags"{
    type = any
}