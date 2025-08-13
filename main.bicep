module vnetEmpty 'modules/emptyVnet.bicep' = {
  name: 'vnetEmpty'
}

module vnetWithSeparateSubnet 'modules/vnetWithSeparateSubnet.bicep' = {
  name: 'vnetWithSeparateSubnet'
}

module vnetWithEmbeddedSubnet 'modules/vnetWithEmbeddedSubnet.bicep' = {
  name: 'vnetWithEmbeddedSubnet'
}
