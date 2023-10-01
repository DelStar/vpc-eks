<<<<<<< HEAD
# Assume role policy for nodes
data "aws_iam_policy_document" "nodes" {
  statement {
    sid    = "AllowEKSAssumeRole"
    effect = "Allow"
    actions = [
      "sts:AssumeRole",
    ]
    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}

#Assume role policy for cluster
data "aws_iam_policy_document" "eks_assume_role" {
  statement {
    sid    = "AllowEKSAssumeRole"
    effect = "Allow"
    actions = [
      "sts:AssumeRole"
    ]
    principals {
      type        = "Service"
      identifiers = ["eks.amazonaws.com"]
    }
  }
}




=======
version https://git-lfs.github.com/spec/v1
oid sha256:587c132cd1dad78fc8f0717f2504a363df6c11fa2e1b37c66e71ef49aa4d2b8e
size 591
>>>>>>> e9b893851f3bd5de665870bf0f0f70a221bc1b14
