variable "test_input" {
  type = string
  default = "unset"
}

variable "root_input" {
  type = string
  default = "unset"
}

output "tg_module_output" {
  value = var.test_input
}

output "root_output" {
  value = var.root_input
}

