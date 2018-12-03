# Microsoft Service Bus Topics

## Overview
Azure Service Bus is a multi-tenant cloud messaging service you can use to send information between applications and services. The asynchronous operations give you flexible, brokered messaging, along with structured first-in, first-out (FIFO) messaging, and publish/subscribe capabilities.

## Links
- API https://docs.microsoft.com/en-us/rest/api/servicebus/topics
- ARM https://docs.microsoft.com/en-us/azure/templates/microsoft.servicebus/2017-04-01/namespaces/topic
- DOC https://docs.microsoft.com/en-us/azure/service-bus-messaging/

## Sample Parameter File
```
{
  "$schema": "http://schema.management.azure.com/schemas/2015-01-01/deploymentParameters.json#",
  "contentVersion": "2018.12.01.0",
  "parameters": {
    "Namespace": {
      "value": ""
    },
    "Topic": {
      "value": ""
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