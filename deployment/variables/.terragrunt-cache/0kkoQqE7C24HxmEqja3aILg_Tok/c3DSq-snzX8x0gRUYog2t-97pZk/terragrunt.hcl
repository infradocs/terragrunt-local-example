include "root" {
  path   = find_in_parent_folders()
  expose = true
}

inputs = {
  test_input = "this_comes_from_input"
}

terraform {
  source = "${dirname(find_in_parent_folders())}/_modules/example//"

  after_hook "show_outputs" {
    commands      = ["apply"]
    execute       = ["/bin/bash", "-c", "terraform output -json"]
    run_on_error  = false
  }
}
