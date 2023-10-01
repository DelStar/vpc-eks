<<<<<<< HEAD
output "password" {
  value = aws_iam_user_login_profile.DB_user.*.encrypted_password
  # password | base64 --decode | keybase pgp decrypt
}
=======
version https://git-lfs.github.com/spec/v1
oid sha256:ba39363d8de890b5c9472ba018fdc90af291a71aebfdf897036279a4eb61a387
size 140
>>>>>>> e9b893851f3bd5de665870bf0f0f70a221bc1b14
