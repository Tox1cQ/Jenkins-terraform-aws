output "s3_bucket_name" {
  value = aws_s3_bucket.terraform_jenkins_bucket_1010101.bucket
}

output "iam_role_name" {
  value = aws_iam_role.terraform_jenkins_role.name
}

output "iam_policy_name" {
  value = aws_iam_policy.terraform_jenkins_policy.name
}
