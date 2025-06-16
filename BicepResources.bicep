resource mySA 'Microsoft.Storage/storageAccounts@2023-05-01' = {
  name: saname
  location: RGLocation
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}

param RGLocation string = 'WestEurope'
var saname = 'sa${uniqueString(resourceGroup().id)}'


resource mypip 'Microsoft.Network/publicIPAddresses@2024-05-01' = {
  name: 'pipvm1'
  location: RGLocation
  sku: {
    name: 'Standard'
  }
  properties: {
    publicIPAllocationMethod: 'Static'
  }
}
