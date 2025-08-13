targetScope = 'resourceGroup'

param location string = resourceGroup().location

resource vnet 'Microsoft.Network/virtualNetworks@2024-07-01' = {
  name: 'vnet-empty'
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
