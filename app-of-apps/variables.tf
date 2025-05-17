variable "repo_url" {
  type = string
}

variable "target_revision" {
  type    = string
  default = "HEAD"
}

variable "path" {
  type = string
}

variable "destination_namespace" {
  type = string
}

variable "argocd_namespace" {
  type    = string
  default = "platform-dev"
}

variable "app_name" {
  type = string
}