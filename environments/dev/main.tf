module "rg" {
  source   = "../../modules/rg"
  rg_name  = var.rg_name
  location = var.location
}

module "vnet" {
  source    = "../../modules/vnet"
  vnet_name = var.vnet_name
  location  = var.location
  rg_name   = module.rg.rg_name
}

module "aks" {
  source      = "../../modules/aks"
  aks_name    = var.aks_name
  location    = var.location
  rg_name     = module.rg.rg_name
  dns_prefix  = var.dns_prefix
  subnet_id   = module.vnet.subnet_id
  environment = var.environment
}