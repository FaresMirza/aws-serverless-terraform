output "lambda_exec_role_arn" {
  value = aws_iam_role.lambda_exec.arn
}

output "lambda_policy_arn" {
  value = aws_iam_policy.lambda_policy.arn
}

