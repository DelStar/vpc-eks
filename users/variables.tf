<<<<<<< HEAD
variable "username" {
  type    = list(any)
  default = ["developer", "manager"]
}

variable "env" {
  type    = list(any)
  default = ["Development", "Production"]
}

variable "tags" {
  type = map(string)
  default = {
    Env = "Production"
  }
}
=======
version https://git-lfs.github.com/spec/v1
oid sha256:16bea74357b46a87a726cf9f402405f8b63df584cfe5b78f5d8805709e83dc19
size 250
>>>>>>> e9b893851f3bd5de665870bf0f0f70a221bc1b14
