# Microsoft Web Server Farms

## Overview
Azure App Service Web Apps (or just Web Apps) is a service for hosting web applications, REST APIs, and mobile back ends. You can develop in your favorite language, be it .NET, .NET Core, Java, Ruby, Node.js, PHP, or Python.

## Links
- API https://docs.microsoft.com/en-us/rest/api/appservice/appserviceenvironments
- ARM https://docs.microsoft.com/en-us/azure/templates/microsoft.web/2016-09-01/serverfarms
- DOC https://docs.microsoft.com/en-us/azure/app-service/

## Sample Parameter File
```
{
  "$schema": "https://schema.management.azure.com/schemas/2015-08-01/deploymentParameters.json",
  "contentVersion": "2018.12.01.0",
  "parameters": {
    "name": {
      "value": ""
    },
    "kind": {
      "value": "windows"
    },
    "sku": {
      "value": ""
    },
    "skucode": {
      "value": ""
    },
    "AppServiceEnvironment": {
      "value": {
        "name": "",
        "ResourceGroupName": "",
        "Location": ""
      }
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