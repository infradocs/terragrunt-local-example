include "root" {
  path   = find_in_parent_folders()
  expose = true
}

inputs = {
  # name       = "myname",
  test_input = "tg_module-VAR"
}

terraform {
  source="terraform"

  after_hook "show_outputs" {
    commands      = ["apply"]
    execute       = ["/bin/bash", "-c", "terraform output -json"]
    run_on_error  = false
  }
}
