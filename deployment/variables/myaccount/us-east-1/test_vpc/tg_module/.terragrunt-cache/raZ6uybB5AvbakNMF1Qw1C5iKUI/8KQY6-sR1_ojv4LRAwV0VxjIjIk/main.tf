## INPUTS

variable "test_input" {
  type = string
}

variable "region" {
  type = string
}

variable "namespace" {
  type = string
}

variable "name" {
  type = string
}

variable "root_input" {
  type = string
}


## OUTPUTS

output "test_input" {
  value = var.test_input
}

output "region" {
  value = var.region
}

output "namespace" {
  value = var.namespace
}

output "name" {
  value = var.name
}

output "root_output" {
  value = var.root_input
}
