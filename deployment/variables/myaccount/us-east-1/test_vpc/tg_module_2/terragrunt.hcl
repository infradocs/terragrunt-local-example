include "root" {
  path   = find_in_parent_folders()
  expose = true
}

dependencies {                                                                                            
  paths = ["../tg_module"]
}

dependency "tg_module" {
  config_path = "../tg_module"
  mock_outputs = {
    test_input = "mock"
  }
}

locals {
  tf_vars = try(yamldecode(file("${get_terragrunt_dir()}/variables.yaml")), {})
}

inputs = merge(
  local.tf_vars,
  {
    test_input = dependency.tg_module.outputs.test_input
  }
)

terraform {

  source = "${dirname(find_in_parent_folders())}/_modules/variables//"

  after_hook "show_outputs" {
    commands      = ["apply"]
    execute       = ["/bin/bash", "-c", "terraform output -json"]
    run_on_error  = false
  }
}
