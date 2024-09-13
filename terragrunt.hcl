# Make sure we can have a local tfstate, deployed directly into the module.
remote_state {
  backend = "local"
  config = {
    path = "${get_parent_terragrunt_dir()}/${path_relative_to_include()}/terraform.tfstate"
  }

  generate = {
    path = "backend.tf"
    if_exists = "overwrite"
  }
}


locals {
  # Terragrunt will recursively look for this file from each deployment
  namespace_vars  = try(read_terragrunt_config(find_in_parent_folders("namespace.hcl")), "")
  account_vars    = read_terragrunt_config(find_in_parent_folders("account.hcl"))
  region_vars     = read_terragrunt_config(find_in_parent_folders("region.hcl"))
  name_vars       = read_terragrunt_config(find_in_parent_folders("name.hcl"))

  # Extract the variables we need for easy access from *this terragrunt.hcl*
  region          = local.region_vars.locals.region
  account_id      = local.account_vars.locals.aws_account_id
}

inputs = {
  namespace      = local.namespace_vars.locals.namespace
  region         = local.region
  name           = local.name_vars.locals.name
  root_input     = "root-input"
}