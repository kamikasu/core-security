resource "aws_kms_key" "encrypt" {
  description              = "KMS for ${var.organization}"
  customer_master_key_spec = "SYMMETRIC_DEFAULT"
  enable_key_rotation      = true
  is_enabled               = true
  key_usage                = "ENCRYPT_DECRYPT"
  tags                     = local.common_tags
}

resource "aws_kms_alias" "alias_kms" {
  name_prefix   = "alias/key-${var.organization}"
  target_key_id = aws_kms_key.encrypt.key_id
}

resource "aws_secretsmanager_secret" "secrets_manager" {
  description = "Secret for ${var.organization}"
  name_prefix = "secrets-${var.organization}"
  kms_key_id  = aws_kms_key.encrypt.key_id
  tags        = local.common_tags
}

resource "aws_secretsmanager_secret_version" "credentials" {
  secret_id     = aws_secretsmanager_secret.secrets_manager.id
  secret_string = jsonencode(var.login) #tfsec:ignore:GEN003
}
