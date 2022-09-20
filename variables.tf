variable "organization" {
  description = "The Name of your organization"
  type        = string
  default     = "threepoints"
}

variable "region" {
  description = "The region Terraform deploy your instance"
  type        = string
  default     = "us-east-1"
}

variable "workspace_iam_roles" {
  description = "Organization accounts associated with the workspace"
  type    = map
  default = {
    # develop = "arn:aws:iam::059152934397:role/OrganizationAccountAccessRole"
    # staging = "arn:aws:iam::022060465973:role/OrganizationAccountAccessRole"
    default = "arn:aws:iam::527770157411:user/administrador"
  }
}

variable "project" {
  description = "The project Name"
  type        = string
  default     = "secret_manager"
}

variable "type" {
  description = "Type of infrastructure"
  type        = string
  default     = "core"
}

variable "login" {
  description = "Docker Hub credentials"
  type        = map(string)
  sensitive   = true
  default = {
    username = "kamikasu"
    password = "manuel14"
  }
}