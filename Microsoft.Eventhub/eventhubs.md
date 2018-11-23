# Microsoft EventHubs

## Overview
Azure Event Hubs is a Big Data streaming platform and event ingestion service, capable of receiving and processing millions of events per second. Event Hubs can process and store events, data, or telemetry produced by distributed software and devices. Data sent to an event hub can be transformed and stored using any real-time analytics provider or batching/storage adapters.

## Links
- API https://docs.microsoft.com/en-us/rest/api/eventhub/eventhubs
- ARM https://docs.microsoft.com/en-us/azure/templates/microsoft.eventhub/2017-04-01/namespaces/eventhubs
- DOC https://docs.microsoft.com/en-us/azure/event-hubs/

## Sample Parameter File
```
{
  "$schema": "http://schema.management.azure.com/schemas/2015-01-01/deploymentParameters.json#",
  "contentVersion": "2018.12.01.0",
  "parameters": {
    "Namespace": {
      "value": ""
    },
    "EventHub": {
      "value": ""
    },
    "Capture": {
      "value": false
    },
    "StorageAccountResourceGroupName": {
      "value": ""
    },
    "StorageAccountName": {
      "value": ""
    },
    "ContainerName": {
      "value": ""
    },
    "IntervalInSeconds": {
      "value": 300
    },
    "SizeLimit": {
      "value": 314572800
    },
    "MessageRetention": {
      "value": 1
    },
    "PartitionCount": {
      "value": 2
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