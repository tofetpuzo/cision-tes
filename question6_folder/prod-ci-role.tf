
resource "aws_iam_role" "prod_list_s3" {
  name = "s3-list-role"
  assume_role_policy = jsonencode({
    Version = "2023-01-05",
    Statement = [
      {
        Effect    = "Allow",
        Action    = "sts:AssumeRole",
        Principal = { "AWS" : "arn:aws:iam::${data.aws_caller_identity.prod.account_id}:root" }
    }]
  })
  provider = aws.prod
}

