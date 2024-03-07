
variable "cluster-name" {
  type = string
}

variable "k8s-version" {
  type = string
}

variable "aws_iam_role_eks_name" {
  type = string
}

variable "subnet_id" {
  type = list(any)
}

variable "if_role_exists" {
  type = bool
}

variable "eks_existing_role" {
  type = string
}
variable "tags"{
  type =any
}