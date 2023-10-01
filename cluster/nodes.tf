<<<<<<< HEAD
# Data block to read local vpc terraform.tfstate file
data "terraform_remote_state" "network" {
  backend = "local"
  config = {
    path = "../vpc/terraform.tfstate"
  }
}

# Create node group in the created vpc using created node role
resource "aws_eks_node_group" "private-nodes" {
  cluster_name    = aws_eks_cluster.demo.name
  node_group_name = "private-nodes"
  node_role_arn   = data.terraform_remote_state.network.outputs.demo_role

  subnet_ids = [
    #aws_subnet.public[0].id,aws_subnet.public[1].id,
    data.terraform_remote_state.network.outputs.private[0], data.terraform_remote_state.network.outputs.private[1]
  ]

  capacity_type  = "ON_DEMAND"
  instance_types = ["t2.micro"]

  scaling_config {
    desired_size = 2
    max_size     = 10
    min_size     = 0
  }

  update_config {
    max_unavailable = 1
  }

  labels = {
    role = "general"
  }
  # This tags are important if we are going to use an auto-scaler
  tags = {
    "k8s.io/cluster-autoscaler/demo"    = "owned"
    "k8s.io/cluster-autoscaler/enabled" = true
  }
}
=======
version https://git-lfs.github.com/spec/v1
oid sha256:877bac9b8587be1da3087922d40ba72f29f6e9be9186d99511c341ecfb770bf6
size 1050
>>>>>>> e9b893851f3bd5de665870bf0f0f70a221bc1b14
