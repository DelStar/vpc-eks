<<<<<<< HEAD

# Role and policies for node groups
resource "aws_iam_role" "nodes" {
  name               = "eks-node-group-nodes"
  assume_role_policy = data.aws_iam_policy_document.nodes.json
}

resource "aws_iam_role_policy_attachment" "nodes-AmazonEKSWorkerNodePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
  role       = aws_iam_role.nodes.name
}

resource "aws_iam_role_policy_attachment" "nodes-AmazonEKS_CNI_Policy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
  role       = aws_iam_role.nodes.name
}

resource "aws_iam_role_policy_attachment" "nodes-AmazonEC2ContainerRegistryReadOnly" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
  role       = aws_iam_role.nodes.name
}

resource "aws_iam_role_policy_attachment" "main-node-AmazonEC2FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
  role       = aws_iam_role.nodes.name
}

# Role and policies for eks cluster
resource "aws_iam_role" "demo" {
  name               = "eks-cluster-demo"
  assume_role_policy = data.aws_iam_policy_document.eks_assume_role.json
}

resource "aws_iam_role_policy_attachment" "demo-AmazonEKSClusterPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = aws_iam_role.demo.name
}

resource "aws_iam_role_policy_attachment" "main-cluster-AmazonEKSServicePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSServicePolicy"
  role       = aws_iam_role.demo.name
}
=======
version https://git-lfs.github.com/spec/v1
oid sha256:df6fa827cb9ca9482a47302472c1843475c8968232ebc7cd5eb595d7a1982ddf
size 1483
>>>>>>> e9b893851f3bd5de665870bf0f0f70a221bc1b14
