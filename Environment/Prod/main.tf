module "rg" {
  source = "../../module/azurerm_resource_group"
  rgs    = var.rgs
}

module "vnet" {
  source     = "../../module/azurerm_virtual_network"
  depends_on = [module.rg]
  vnets      = var.vnets

}
module "subnet" {
  source     = "../../module/azurerm_subnet"
  depends_on = [module.vnet]
  subnets    = var.subnets

}

module "pip" {
  source     = "../../module/azurerm_public_ip"
  depends_on = [module.rg]
  pips       = var.pips
}
module "vm" {
  source     = "../../module/azurerm_virtual_machine"
  depends_on = [module.subnet, module.pip]
  vms        = var.vms

}