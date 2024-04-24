resource "aws_ecr_repository" "my_repository" {
  name                 = "matbos-dip-application"
  image_tag_mutability = "MUTABLE"
}