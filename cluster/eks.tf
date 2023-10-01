<<<<<<< HEAD
# Create EKS Cluster
resource "aws_eks_cluster" "demo" {
  name     = "demo"
  role_arn = data.terraform_remote_state.network.outputs.node_role

  vpc_config {
    subnet_ids = [
      data.terraform_remote_state.network.outputs.public[0], data.terraform_remote_state.network.outputs.public[1],
      data.terraform_remote_state.network.outputs.private[0], data.terraform_remote_state.network.outputs.private[1]
    ]
  }
}
=======
version https://git-lfs.github.com/spec/v1
oid sha256:9a12d969a5f0cedde2b7691e9748116b580e30590e3d889b5ce6423584ebc316
size 424
>>>>>>> e9b893851f3bd5de665870bf0f0f70a221bc1b14
