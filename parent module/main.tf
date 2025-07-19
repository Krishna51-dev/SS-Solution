module "rgmodule" {
  source = "../child module/azure_rm_rg"
  resource_group_name = "kk-rg01"
  resource_group_location = "east us"
}
module "stgmodule" {
  source = "../child module/azure_rm_stg"
  storage_account_name = "stg0123"
  depends_on = [module.rgmodule]
}