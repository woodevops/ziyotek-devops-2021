resource "aws_iam_instance_profile" "ec2_profile" {
  name = "s3_access_profile"
  role = aws_iam_role.s3_role.name
}

resource "aws_iam_role" "s3_role" {
  name = "${var.environment}_s3_role"
  path = "/"

  assume_role_policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": "sts:AssumeRole",
            "Principal": {
               "Service": "ec2.amazonaws.com"
            },
            "Effect": "Allow",
            "Sid": ""
        }
    ]
}
EOF
}

resource "aws_iam_policy" "s3_policy" {
  name        = "${var.environment}_s3_policy"
  description = "My test s3 policy"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "s3:List*",
          "s3:PutObject",
          "s3:CreateObject"
        ]
        Effect = "Allow"
        Resource = [
          "${var.s3_arn}",
          "${var.s3_arn}/*"
        ]
      },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "role-attach" {

  role       = aws_iam_role.s3_role.name
  policy_arn = aws_iam_policy.s3_policy.arn
}