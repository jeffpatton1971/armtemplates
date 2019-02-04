# Microsoft Network Public IP Addresses

## Overview
A public IP address is a resource with its own configurable settings.

## Links
- API https://docs.microsoft.com/en-us/rest/api/virtualnetwork/publicipaddresses
- ARM https://docs.microsoft.com/en-us/azure/templates/microsoft.network/2018-08-01/publicipaddresses
- DOC https://docs.microsoft.com/en-us/azure/virtual-network/virtual-network-public-ip-address

## Sample Parameter File
```
{
  "$schema": "http://schema.management.azure.com/schemas/2015-01-01/deploymentParameters.json#",
  "contentVersion": "2018.12.01.0",
  "parameters": {
    "name": {
      "value": ""
    },
    "sku": {
      "value": "Basic"
    },
    "publicIPAllocationMethod": {
      "value": "Dynamic"
    },
    "idleTimeoutInMinutes": {
      "value": 4
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
    "RaxAutomationExclude": {
      "value": "None"
    }
  }
}
```