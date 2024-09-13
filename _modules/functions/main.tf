## INPUTS

variable "get_terragrunt_dir" {
  type = string
  default = "unset"
}

variable "get_original_terragrunt_dir" {
  type = string
  default = "unset"
}

variable "path_relative_to_include" {
  type = string
  default = "unset"
}

variable "get_repo_root" {
  type = string
  default = "unset"
}

variable "get_path_from_repo_root" {
  type = string
  default = "unset"
}

variable "get_path_to_repo_root" {
  type = string
  default = "unset"
}

variable "get_platform" {
  type = string
  default = "unset"
}


## OUTPUTS

output "get_terragrunt_dir" {
  value = var.get_terragrunt_dir
}

output "get_original_terragrunt_dir" {
  value = var.get_original_terragrunt_dir
}

output "path_relative_to_include" {
  value = var.path_relative_to_include
}

output "get_repo_root" {
  value = var.get_repo_root
}

output "get_path_from_repo_root" {
  value = var.get_path_from_repo_root
}

output "get_path_to_repo_root" {
  value = var.get_path_to_repo_root
}

output "get_platform" {
  value = var.get_platform
}
