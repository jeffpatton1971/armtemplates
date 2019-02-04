# Microsoft Network Network Security Groups

## Overview
You can filter network traffic to and from Azure resources in an Azure virtual network with a network security group. A network security group contains security rules that allow or deny inbound network traffic to, or outbound network traffic from, several types of Azure resources.

## Links
- API https://docs.microsoft.com/en-us/rest/api/virtualnetwork/networksecuritygroups
- ARM https://docs.microsoft.com/en-us/azure/templates/microsoft.network/2018-08-01/networksecuritygroups
- DOC https://docs.microsoft.com/en-us/azure/virtual-network/security-overview

## Sample Parameter File
```
{
  "$schema": "http://schema.management.azure.com/schemas/2015-01-01/deploymentParameters.json#",
  "contentVersion": "2018.12.01.0",
  "parameters": {
    "name": {
      "value": ""
    },
    "Network": {
      "value": {
        "VirtualNetworkResourceGroupName": "",
        "VirtualNetworkName": "",
        "SubnetName": ""
      }
    },
    "SourcePrefix": {
      "value": ""
    },
    "DestinationPrefix": {
      "value": ""
    },
    "DeploymentType": {
      "value": "VirtualMachine"
    },
    "SecurityRules": {
      "value": [
        {
          "name": "remoteConnection",
          "properties": {
            "description": "Allow SSH traffic",
            "protocol": "Tcp",
            "sourcePortRange": "*",
            "destinationPortRange": "22",
            "sourceAddressPrefix": "*",
            "destinationAddressPrefix": "*",
            "access": "Allow",
            "priority": 301,
            "direction": "Inbound"
          }
        },
        {
          "name": "webTraffic",
          "properties": {
            "description": "Allow web traffic",
            "protocol": "Tcp",
            "sourcePortRange": "80",
            "destinationPortRange": "80",
            "sourceAddressPrefix": "*",
            "destinationAddressPrefix": "*",
            "access": "Allow",
            "priority": 300,
            "direction": "Inbound"
          }
        }
      ]
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
      "value": "Production"
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