## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.6 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 2.65 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.31.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_policy.ecs_secrets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.ecs_task_execution_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.ecs_task_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.ecs-task-execution-role-policy-attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.ecs-task-role-policy-attachment-for-secrets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_kms_alias.alias_kms](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_alias) | resource |
| [aws_kms_key.encrypt](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key) | resource |
| [aws_secretsmanager_secret.secrets_manager](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret) | resource |
| [aws_secretsmanager_secret_version.credentials](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_login"></a> [login](#input\_login) | Docker Hub credentials | `map(string)` | <pre>{<br>  "password": "manuel14",<br>  "username": "kamikasu"<br>}</pre> | no |
| <a name="input_organization"></a> [organization](#input\_organization) | The Name of your organization | `string` | `"threepoints"` | no |
| <a name="input_project"></a> [project](#input\_project) | The project Name | `string` | `"secret_manager"` | no |
| <a name="input_region"></a> [region](#input\_region) | The region Terraform deploy your instance | `string` | `"us-east-1"` | no |
| <a name="input_type"></a> [type](#input\_type) | Type of infrastructure | `string` | `"core"` | no |
| <a name="input_workspace_iam_roles"></a> [workspace\_iam\_roles](#input\_workspace\_iam\_roles) | Organization accounts associated with the workspace | `map` | <pre>{<br>  "default": "arn:aws:iam::527770157411:user/administrador"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ecs_task_execution_role"></a> [ecs\_task\_execution\_role](#output\_ecs\_task\_execution\_role) | n/a |
| <a name="output_ecs_task_role"></a> [ecs\_task\_role](#output\_ecs\_task\_role) | n/a |
| <a name="output_key_encrypt"></a> [key\_encrypt](#output\_key\_encrypt) | n/a |
| <a name="output_secrets_manager"></a> [secrets\_manager](#output\_secrets\_manager) | n/a |
