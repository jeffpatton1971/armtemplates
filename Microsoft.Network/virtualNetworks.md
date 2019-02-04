# Microsoft Network Virtual Networks

## Overview
Azure Virtual Network enables many types of Azure resources, such as Azure Virtual Machines (VM), to securely communicate with each other, the internet, and on-premises networks. 

## Links
- API https://docs.microsoft.com/en-us/rest/api/virtualnetwork/virtualnetworks
- ARM https://docs.microsoft.com/en-us/azure/templates/microsoft.network/2018-08-01/virtualnetworks
- DOC https://docs.microsoft.com/en-us/azure/virtual-network/

## Sample Parameter File
```
{
  "$schema": "http://schema.management.azure.com/schemas/2015-01-01/deploymentParameters.json#",
  "contentVersion": "2018.12.01.0",
  "parameters": {
    "name": {
      "value": ""
    },
    "addressSpace": {
      "value": [
        ""
      ]
    },
    "dhcpOptions": {
      "value": []
    },
    "enableDdosProtection": {
      "value": false
    },
    "enableVmProtection": {
      "value": false
    },
    "subnets": {
      "value": [
        {
          "name": "",
          "properties": {
            "addressPrefix": ""
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