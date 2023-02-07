dependencies {
  paths = [
    "../tf-mod-eks/"
  ]
}

terraform {
  source = "../../../../../terraform/tf-mod-rds/"

  extra_arguments "custom_vars" {
    commands = get_terraform_commands_that_need_vars()


    required_var_files = [
      "${get_terragrunt_dir()}/../../common.tfvars",
      "${get_terragrunt_dir()}/../region.tfvars"
    ]
  }
}

include  {
  path = "${find_in_parent_folders()}"
}
