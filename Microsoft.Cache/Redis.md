# Microsoft Redis Cache

## Overview
Azure Cache for Redis is based on the popular open-source Azure Cache for Redis. It is typically used as a cache to improve the performance and scalability of systems that rely heavily on backend data-stores. Performance is improved by temporarily copying frequently accessed data to fast storage located close to the application. With Azure Cache for Redis, this fast storage is located in-memory with Azure Cache for Redis instead of being loaded from disk by a database.

## Links
- API https://docs.microsoft.com/en-us/rest/api/redis/redis
- ARM https://docs.microsoft.com/en-us/azure/templates/microsoft.cache/2018-03-01/redis
- DOC https://docs.microsoft.com/en-us/azure/azure-cache-for-redis/

## Sample Parameter File
```
{
  "$schema": "http://schema.management.azure.com/schemas/2015-01-01/deploymentParameters.json#",
  "contentVersion": "2018.12.01.0",
  "parameters": {
    "name": {
      "value": "patton"
    },
    "Network": {
      "value": {
        "VirtualNetworkResourceGroupName": "rg-vnet-ERPServicesWest",
        "VirtualNetworkName": "vnet-ERPServicesWest",
        "SubnetName": "sb-atlassian"
      }
    },
    "Shards": {
      "value": 1
    },
    "enableNonSslPort": {
      "value": false
    },
    "minimumTlsVersion": {
      "value": "1.0"
    },
    "Sku": {
      "value": "Basic"
    },
    "Capacity": {
      "value": 0
    },
    "location": {
      "value": ""
    },
    "environment": {
      "value": "Production"
    },
    "buildDate": {
      "value": "12/07/2018"
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