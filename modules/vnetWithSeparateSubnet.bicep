targetScope = 'resourceGroup'

param location string = resourceGroup().location

resource vnet 'Microsoft.Network/virtualNetworks@2024-07-01' = {
  name: 'vnet-separate-subnet'
  location: location
  tags: {
    module: 'networking'
  }
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.0.0.0/16'
      ]
    }
  }
}

resource subnet 'Microsoft.Network/virtualNetworks/subnets@2024-07-01' = {
  parent: vnet
  name: 'snet-separate'
  properties: {
    addressPrefix: '10.0.0.0/24'
  }
}
