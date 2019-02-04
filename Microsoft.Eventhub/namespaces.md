# Microsoft EventHubs Namespaces

## Overview
Azure Event Hubs is a Big Data streaming platform and event ingestion service, capable of receiving and processing millions of events per second. Event Hubs can process and store events, data, or telemetry produced by distributed software and devices. Data sent to an event hub can be transformed and stored using any real-time analytics provider or batching/storage adapters.

## Links
- API https://docs.microsoft.com/en-us/rest/api/eventhub/namespaces
- ARM https://docs.microsoft.com/en-us/azure/templates/microsoft.eventhub/2017-04-01/namespaces
- DOC https://docs.microsoft.com/en-us/azure/event-hubs/

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
      "value": "Basic"
    },
    "Capacity": {
      "value": 1
    },
    "AutoInflateEnabled": {
      "value": false
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