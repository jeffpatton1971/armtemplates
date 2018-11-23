# Microsoft Web Sites

## Overview
Azure App Service Web Apps (or just Web Apps) is a service for hosting web applications, REST APIs, and mobile back ends. You can develop in your favorite language, be it .NET, .NET Core, Java, Ruby, Node.js, PHP, or Python.

## Links
- API https://docs.microsoft.com/en-us/rest/api/appservice/webapps
- ARM https://docs.microsoft.com/en-us/azure/templates/microsoft.web/2016-08-01/sites
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
    "AspName": {
      "value": ""
    },
    "AseName": {
      "value": ""
    },
    "netFrameworkVersion": {
      "value": "v4.7"
    },
    "phpVersion": {
      "value": "Off"
    },
    "pythonVersion": {
      "value": "Off"
    },
    "32Bit": {
      "value": "false"
    },
    "webSockets": {
      "value": "false"
    },
    "alwaysOn": {
      "value": "true"
    },
    "webServerLogging": {
      "value": "true"
    },
    "detailedErrors": {
      "value": "true"
    },
    "failedRequestTrace": {
      "value": "true"
    },
    "clientAffinityEnabled": {
      "value": "false"
    },
    "logSize": {
      "value": 25
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