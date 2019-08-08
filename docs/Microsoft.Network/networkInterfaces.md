# Microsoft Network Network Interfaces

## Overview
A network interface enables an Azure Virtual Machine to communicate with internet, Azure, and on-premises resources. 

## Links
- API https://docs.microsoft.com/en-us/rest/api/virtualnetwork/networkinterfaces
- ARM https://docs.microsoft.com/en-us/azure/templates/microsoft.network/2018-08-01/networkinterfaces
- DOC https://docs.microsoft.com/en-us/azure/virtual-network/virtual-network-network-interface

## Sample Parameter File
```
{
  "$schema": "http://schema.management.azure.com/schemas/2015-01-01/deploymentParameters.json#",
  "contentVersion": "2018.12.01.0",
  "parameters": {
    "name": {
      "value": ""
    },
    "IpConfiguration": {
      "value": [
        {
          "name": "ipconfiguration-01",
          "properties": {
            "privateIPAddress": "",
            "privateIPAllocationMethod": "Dynamic",
            "privateIPAddressVersion": "IPv4",
            "subnet": {
              "id": "string"
            },
            "primary": true
          }
        },
        {
          "name": "ipconfiguration-02",
          "properties": {
            "privateIPAddress": "",
            "privateIPAllocationMethod": "Dynamic",
            "privateIPAddressVersion": "IPv6",
            "subnet": {
              "id": "string"
            },
            "primary": false
          }
        }
      ]
    },
    "DnsServers": {
      "value": []
    },
    "primary": {
      "value": true
    },
    "enableAcceleratedNetworking": {
      "value": true
    },
    "enableIPForwarding": {
      "value": false
    },
    "Location": {
      "value": ""
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