rgs = {
  rg1 = {
    name     = "rg-ambrish"
    location = "centralindia"
  }

   rg2 = {
    name     = "rg-nandu"
    location = "centralindia"
  }
}

vnets = {
  vnet1 = {
    name                = "vnet-ambrish"
    location            = "centralindia"
    resource_group_name = "rg-ambrish"
    address_space       = ["10.20.0.0/16"]
  }
}

subnets = {
  subnet1 = {
    name                 = "frontend-subnet"
    virtual_network_name = "vnet-ambrish"
    resource_group_name  = "rg-ambrish"
    address_prefixes     = ["10.20.1.0/24"]
  }

  subnet2 = {
    name                 = "backend-subnet"
    virtual_network_name = "vnet-ambrish"
    resource_group_name  = "rg-ambrish"
    address_prefixes     = ["10.20.2.0/24"]
  }
}

pips = {
  pip1 = {
    name                = "frontend-pip"
    location            = "centralindia"
    resource_group_name = "rg-ambrish"
    allocation_method   = "Static"
  }
  pip2 = {
    name                = "backend-pip"
    location            = "centralindia"
    resource_group_name = "rg-ambrish"
    allocation_method   = "Static"
  }
}

vms = {
  vm1 = {
    nic_name             = "frontend-nic"
    location             = "centralindia"
    resource_group_name  = "rg-ambrish"
    subnet_name          = "frontend-subnet"
    virtual_network_name = "vnet-ambrish"
    public_ip_name       = "frontend-pip"
    vm-name              = "frontend-vm"
    size                 = "Standard_D2s_v3"
    admin_username       = "adminuser"
    admin_password       = "Devopsadmin@123456"
  }

  vm2 = {
    nic_name             = "backend-nic"
    location             = "centralindia"
    resource_group_name  = "rg-ambrish"
    subnet_name          = "backend-subnet"
    virtual_network_name = "vnet-ambrish"
    public_ip_name       = "backend-pip"
    vm-name              = "backend-vm"
    size                 = "Standard_D2s_v3"
    admin_username       = "adminuser"
    admin_password       = "Devopsadmin@123456"
  }
}