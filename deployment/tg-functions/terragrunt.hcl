include "root" {
  path   = find_in_parent_folders()
  expose = true
}

inputs = {
  get_terragrunt_dir = get_terragrunt_dir()
  get_original_terragrunt_dir = get_original_terragrunt_dir()
  path_relative_to_include = path_relative_to_include()
  get_repo_root = get_repo_root()
  get_path_from_repo_root = get_path_from_repo_root()
  get_path_to_repo_root = get_path_to_repo_root()
  get_platform = get_platform()
}

terraform {
  source = "${dirname(find_in_parent_folders())}/_modules/functions//"
}
