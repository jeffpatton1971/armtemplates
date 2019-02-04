# Microsoft Service Bus Namespaces

## Overview
Azure Service Bus is a multi-tenant cloud messaging service you can use to send information between applications and services. The asynchronous operations give you flexible, brokered messaging, along with structured first-in, first-out (FIFO) messaging, and publish/subscribe capabilities.

## Links
- API https://docs.microsoft.com/en-us/rest/api/servicebus/namespaces
- ARM https://docs.microsoft.com/en-us/azure/templates/microsoft.servicebus/2017-04-01/namespaces
- DOC https://docs.microsoft.com/en-us/azure/service-bus-messaging/

## Sample Parameter File
```
{
  "$schema": "http://schema.management.azure.com/schemas/2015-01-01/deploymentParameters.json#",
  "contentVersion": "2018.12.01.0",
  "parameters": {
    "Name": {
      "value": ""
    },
    "Sku": {
      "value": "Basic"
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