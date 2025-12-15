output "user_name" {
  description = "The name of the IAM user"
  value       = aws_iam_user.this.name
}
output "user_arn" {
  description = "The ARN of the IAM user"
  value       = aws_iam_user.this.arn
}
