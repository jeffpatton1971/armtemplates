# Microsoft Storage Accounts

## Overview
Azure Storage is a Microsoft-managed service providing cloud storage that is highly available, secure, durable, scalable, and redundant. Azure Storage includes Azure Blobs (objects), Azure Data Lake Storage Gen2, Azure Files, Azure Queues, and Azure Tables.

## Links
- API https://docs.microsoft.com/en-us/rest/api/storagerp/storageaccounts
- ARM https://docs.microsoft.com/en-us/azure/templates/microsoft.storage/2018-07-01/storageaccounts
- DOC https://docs.microsoft.com/en-us/azure/storage/

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
      "value": "Standard_LRS"
    },
    "kind": {
      "value": "Storage"
    },
    "Location": {
      "value": ""
    },
    "encryption": {
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
    "buildTicket": {
      "value": "123456-78901"
    },
    "RaxAutomationExclude": {
      "value": "None"
    }
  }
}
```