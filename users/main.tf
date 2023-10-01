<<<<<<< HEAD

resource "aws_iam_user_login_profile" "DB_user" {
  count                   = length(var.username)
  user                    = aws_iam_user.eks_user[count.index].name
  password_reset_required = true
  pgp_key                 = "keybase:kenmak"
}
# SecretAccessKey: QS3TyVTQn74IKcruz6y08PiQeBnjRujxmPTQZRbj
# AccessKey: AKIA4AKFXWLAGYCC2KN2
resource "aws_iam_user" "eks_user" {
  count         = length(var.username)
  name          = element(var.username, count.index)
  force_destroy = true

  tags = {
    Department = "eks-user"
  }
}
#SecretAccessKey: Ea6aLy+wwDQCn5JwJsh/5rhxPJHfcL7xMBy3CJgf
#AccessKey: AKIA4AKFXWLAPY5U5AVG
resource "aws_iam_group" "eks_developer" {
  name = "Developer"
}

resource "aws_iam_group_policy" "developer_policy" {
  name   = "developer"
  group  = aws_iam_group.eks_developer.name
  policy = data.aws_iam_policy_document.developer.json
}

resource "aws_iam_group_membership" "db_team" {
  name  = "dev-group-membership"
  users = [aws_iam_user.eks_user[0].name]
  group = aws_iam_group.eks_developer.name
}

resource "aws_iam_account_password_policy" "strict" {
  minimum_password_length        = 8
  require_lowercase_characters   = true
  require_numbers                = true
  require_uppercase_characters   = true
  require_symbols                = true
  allow_users_to_change_password = true
}

resource "aws_iam_role" "managers" {
  name               = "Manager-eks-Role"
  assume_role_policy = data.aws_iam_policy_document.manager_assume_role.json
}


resource "aws_iam_role_policy_attachment" "admin_policy" {
  role       = aws_iam_role.managers.name
  policy_arn = aws_iam_policy.eks_admin.arn
}

resource "aws_iam_policy" "eks_admin" {
  name   = "eks-admin"
  policy = data.aws_iam_policy_document.admin.json
}

=======
version https://git-lfs.github.com/spec/v1
oid sha256:0cb0e2bb8522f7346c0b2260429665bb7984575b8eaf109c586ec3525e7c3b48
size 1765
>>>>>>> e9b893851f3bd5de665870bf0f0f70a221bc1b14
