# Microsoft Web Hosting Environments

## Overview
The Azure App Service Environment is an Azure App Service feature that provides a fully isolated and dedicated environment for securely running App Service apps at high scale.

## Links
- API https://docs.microsoft.com/en-us/rest/api/appservice/appserviceenvironments
- ARM https://docs.microsoft.com/en-us/azure/templates/microsoft.web/2016-09-01/hostingenvironments
- DOC https://docs.microsoft.com/en-us/azure/app-service/environment/intro

## Sample Parameter File
```
{
  "$schema": "https://schema.management.azure.com/schemas/2015-08-01/deploymentParameters.json",
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
    "internalLoadBalancingMode": {
      "value": ""
    },
    "multiSize": {
      "value": ""
    },
    "multiRoleCount": {
      "value": ""
    },
    "workerPools": {
      "value": [
        {
          "workerSizeId": 0,
          "workerSize": "Small",
          "workerCount": 2
        },
        {
          "workerSizeId": 1,
          "workerSize": "Small",
          "workerCount": 0
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