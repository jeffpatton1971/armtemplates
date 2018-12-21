# Microsoft Network Virtual Network Gateways

## Overview
A VPN gateway is a specific type of virtual network gateway that is used to send encrypted traffic between an Azure virtual network and an on-premises location over the public Internet. You can also use a VPN gateway to send encrypted traffic between Azure virtual networks over the Microsoft network. Each virtual network can have only one VPN gateway. However, you can create multiple connections to the same VPN gateway. When you create multiple connections to the same VPN gateway, all VPN tunnels share the available gateway bandwidth.

## Links
- API https://docs.microsoft.com/en-us/rest/api/network-gateway/virtualnetworkgateways
- ARM https://docs.microsoft.com/en-us/azure/templates/microsoft.network/2018-08-01/virtualnetworkgateways
- DOC https://docs.microsoft.com/en-us/azure/vpn-gateway/

## Sample Parameter File
```
{
  "$schema": "http://schema.management.azure.com/schemas/2015-01-01/deploymentParameters.json#",
  "contentVersion": "2018.12.01.0",
  "parameters": {
    "name": {
      "value": ""
    },
    "Location": {
      "value": ""
    },
    "Network": {
      "value": {
        "VirtualNetworkResourceGroupName": "",
        "VirtualNetworkName": "",
        "SubnetName": ""
      }
    },
    "privateIPAllocationMethod": {
      "value": "Dynamic"
    },
    "activeActive": {
      "value": false
    },
    "bgpSettings": {
      "value": {
	   "asn": 65010
	  }
    },
    "enableBgp": {
      "value": false
    },
    "gatewayType": {
      "value": "Vpn"
    },
    "sku": {
      "value": {
        "name": "VpnGw1",
        "tier": "VpnGw1"
      }
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