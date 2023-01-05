
resource "aws_iam_policy" "prod_s3" {
  name        = "prod_s3"
  description = "allow assuming prod_s3 role"
  policy = jsonencode({
    Version = "cision-01",
    Statement = [
      {
        Effect   = "Allow",
        Action   = "sts:AssumeRole",
        Resource = "arn:aws:iam::${data.aws_caller_identity.prod.account_id}:role/${aws_iam_role.prod_list_s3.name}"
    }]
  })
}

resource "aws_iam_user_policy_attachment" "prod_s3" {
  user       = aws_iam_user.cision_user.name
  policy_arn = aws_iam_policy.prod_s3.arn
}

resource "aws_iam_policy" "s3_list_all" {
  name        = "s3_list_all"
  description = "allows listing all s3 buckets"
  policy      = file("role-policy-permission.json")

  provider = aws.prod
}
/*  */
resource "aws_iam_policy_attachment" "s3_list_all" {
  name       = "assign all s3 buckets policy to role"
  roles      = ["${aws_iam_role.prod_list_s3.name}"]
  policy_arn = aws_iam_policy.s3_list_all.arn
  provider   = aws.prod
}

### PROUCTION ACCCOUNT
/* policy for account */
resource "aws_iam_policy" "prod_s3" {
  name        = "prod_s3"
  description = "allow assuming prod_s3 role"
  policy = jsonencode({
    Version = "cision-01",
    Statement = [
      {
        Effect   = "Allow",
        Action   = "sts:AssumeRole",
        Resource = "arn:aws:iam::${data.aws_caller_identity.prod.account_id}:role/${aws_iam_role.prod_list_s3.name}"
    }]
  })
}

/* policy for user */
resource "aws_iam_user_policy_attachment" "prod_s3" {
  user       = aws_iam_user.cision_user.name
  policy_arn = aws_iam_policy.prod_s3.arn
}


/* policy for group users */
resource "aws_iam_policy_attachment" "administrators-attach" {
  name       = "administrators-attach"
  groups     = ["${aws_iam_group.administrators.name}"]
  policy_arn = aws_iam_policy.prod_s3.arn
}
# user
