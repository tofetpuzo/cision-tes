
resource "aws_iam_user" "cision" {
  name = "cision_user"
  tags = {
    name = "random"
  }
}
