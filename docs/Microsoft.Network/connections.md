# Microsoft Network Connections

## Overview
Defines the connection

## Links
- API https://docs.microsoft.com/en-us/rest/api/network-gateway/virtualnetworkgatewayconnections
- ARM https://docs.microsoft.com/en-us/azure/templates/microsoft.network/2018-08-01/connections
- DOC https://docs.microsoft.com/en-us/azure/vpn-gateway/vpn-gateway-about-vpn-gateway-settings#connectiontype

## Sample Vnet2Vnet Parameter File
```
{
  "$schema": "http://schema.management.azure.com/schemas/2015-01-01/deploymentParameters.json#",
  "contentVersion": "2018.12.01.0",
  "parameters": {
    "name": {
      "value": "eu2-vnet-01-to-eu2-vnet-02"
    },
    "VirtualNetworkGateway1": {
      "value": {
        "id": "",
        "ResourceGroupName": "jeff0372",
        "Name": "eu2-vnet-01-vngw"
      }
    },
    "VirtualNetworkGateway2": {
      "value": {
        "id": "",
        "ResourceGroupName": "jeff0372",
        "Name": "eu2-vnet-02-vngw"
      }
    },
    "LocalNetworkGateway2": {
      "value": {
      }
    },
    "VirtualNetworkPeer": {
      "value": {
      }
    },
    "Location": {
      "value": "EastUS2"
    },
    "authorizationKey": {
      "value": ""
    },
    "sharedKey": {
      "value": "mqGsaSo0djHf03AKZRIrukfFQVyeQtfV"
    },
    "connectionType": {
      "value": "Vnet2Vnet"
    },
    "connectionProtocol": {
      "value": ""
    },
    "routingWeight": {
      "value": 3
    },
    "enableBgp": {
      "value": false
    },
    "usePolicyBasedTrafficSelectors": {
      "value": false
    },
    "expressRouteGatewayBypass": {
      "value": false
    },
    "CustomObject": {
      "value": {
        "tags" : {
         "Tag1": "Value1",
         "Tag2": "Value2",
        }
      },
    },
    "environment": {
      "value": "Development"
    },
    "buildDate": {
      "value": "12/01/2018"
    },
    "buildBy": {
      "value": "jeffrey.patton2@rackspace.com"
    },
    "buildTicket": {
      "value": "123456-78901"
    },
    "RaxAutomationExclude": {
      "value": "None"
    }
  }
}
```

## Sample IpSec Parameter File
```
{
  "$schema": "http://schema.management.azure.com/schemas/2015-01-01/deploymentParameters.json#",
  "contentVersion": "2018.12.01.0",
  "parameters": {
    "name": {
      "value": "eu2-vnet-01-to-onprem"
    },
    "VirtualNetworkGateway2": {
      "value": {}
    },
    "VirtualNetworkGateway1": {
      "value": {
        "id": "",
        "ResourceGroupName": "jeff0372",
        "Name": "eu2-vnet-01-vngw"
      }
    },
    "LocalNetworkGateway2": {
      "value": {
        "id": "",
        "ResourceGroupName": "jeff0372",
        "Name": "eu2-vnet-01-lng"
      }
    },
    "VirtualNetworkPeer": {
      "value": {}
    },
    "Location": {
      "value": "EastUS2"
    },
    "authorizationKey": {
      "value": ""
    },
    "sharedKey": {
      "value": "mqGsaSo0djHf03AKZRIrukfFQVyeQtfV"
    },
    "connectionType": {
      "value": "Ipsec"
    },
    "connectionProtocol": {
      "value": ""
    },
    "routingWeight": {
      "value": 3
    },
    "enableBgp": {
      "value": false
    },
    "usePolicyBasedTrafficSelectors": {
      "value": false
    },
    "expressRouteGatewayBypass": {
      "value": false
    },
    "CustomObject": {
      "value": {
        "tags" : {
         "Tag1": "Value1",
         "Tag2": "Value2",
        }
      },
    },
    "environment": {
      "value": "Development"
    },
    "buildDate": {
      "value": "12/01/2018"
    },
    "buildBy": {
      "value": "jeffrey.patton2@rackspace.com"
    },
    "RaxAutomationExclude": {
      "value": "None"
    }
  }
}
```