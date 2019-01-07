# Microsoft Network Public IP Addresses

## Overview
Azure Traffic Manager is a DNS-based traffic load balancer that enables you to distribute traffic optimally to services across global Azure regions, while providing high availability and responsiveness.

## Links
- API https://docs.microsoft.com/en-us/rest/api/trafficmanager/profiles
- ARM https://docs.microsoft.com/en-us/azure/templates/microsoft.network/2018-04-01/trafficmanagerprofiles
- DOC https://docs.microsoft.com/en-us/azure/traffic-manager/

## Sample Parameter File
```
{
  "$schema": "http://schema.management.azure.com/schemas/2015-01-01/deploymentParameters.json#",
  "contentVersion": "2018.12.01.0",
  "parameters": {
    "name": {
      "value": ""
    },
    "RoutingMethod": {
      "value": "Performance"
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