output "key_encrypt" {
  value = aws_kms_key.encrypt.arn
}

output "secrets_manager" {
  value = aws_secretsmanager_secret.secrets_manager.arn
}

output "ecs_task_role" {
  value = aws_iam_role.ecs_task_role.arn
}

output "ecs_task_execution_role" {
  value = aws_iam_role.ecs_task_execution_role.arn
}