<<<<<<< HEAD
output "private" {
  value = aws_subnet.private.*.id
}

output "public" {
  value = aws_subnet.public.*.id
}

output "node_role" {
  value = aws_iam_role.demo.arn
}

output "demo_role" {
  value = aws_iam_role.nodes.arn
}

=======
version https://git-lfs.github.com/spec/v1
oid sha256:73458786e51f0f0ce115118fbc8a2b67614d3e9adb5c8dfa82e9178b3061e322
size 223
>>>>>>> e9b893851f3bd5de665870bf0f0f70a221bc1b14
