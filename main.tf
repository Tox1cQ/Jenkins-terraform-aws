resource "aws_s3_bucket" "terraform_jenkins_bucket_1010101" {
  bucket = "tushar-jenkins-terraform-2026"
}

resource "aws_iam_role" "terraform_jenkins_role" {
  name = "terraform-jenkins-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect = "Allow"

        Principal = {
          Service = "ec2.amazonaws.com"
        }

        Action = "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_policy" "terraform_jenkins_policy" {
  name        = "terraform-jenkins-policy"
  description = "Policy created through Jenkins Terraform practice"

  policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect = "Allow"

        Action = [
          "s3:ListAllMyBuckets",
          "s3:GetBucketLocation"
        ]

        Resource = "*"
      }
    ]
  })
}
