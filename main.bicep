module vnetEmpty 'modules/emptyVnet.bicep' = {
  name: 'vnetEmpty'
}

module vnetWithSubnet 'modules/vnetWithSubnet.bicep' = {
  name: 'vnetWithSubnet'
}
