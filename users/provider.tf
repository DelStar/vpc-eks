<<<<<<< HEAD
provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      team = "DevOps"
    }
  }
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
=======
version https://git-lfs.github.com/spec/v1
oid sha256:aa9fbfb75409c00507185920a93cb4b5d954fed12aae5351630817b9595403bf
size 221
>>>>>>> e9b893851f3bd5de665870bf0f0f70a221bc1b14
