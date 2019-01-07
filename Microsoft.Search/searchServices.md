# Microsoft Search Services 

## Overview
Azure Search is a search-as-a-service cloud solution that gives developers APIs and tools for adding a rich search experience over private, heterogenous content in web, mobile, and enterprise applications. Query execution is over a user-defined index.

## Links
- API https://docs.microsoft.com/en-us/rest/api/searchservice/
- ARM https://docs.microsoft.com/en-us/azure/templates/microsoft.search/2015-08-19/searchservices
- DOC https://docs.microsoft.com/en-us/azure/search/

## Sample Parameter File
```
{
  "$schema": "http://schema.management.azure.com/schemas/2015-01-01/deploymentParameters.json#",
  "contentVersion": "2018.12.01.0",
  "parameters": {
    "name": {
      "value": ""
    },
    "Sku": {
      "value": "free"
    },
    "HostingMode": {
      "value": "default"
    },
    "ReplicaCount": {
      "value": 1
    },
    "PartitionCount": {
      "value": 1
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