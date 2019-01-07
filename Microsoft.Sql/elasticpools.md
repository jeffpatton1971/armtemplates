# Microsoft SQL Elastic Pools

## Overview
SQL Database is a general-purpose relational database managed service in Microsoft Azure that supports structures such as relational data, JSON, spatial, and XML.

## Links
- API https://docs.microsoft.com/en-us/rest/api/sql/elasticpools
- ARM https://docs.microsoft.com/en-us/azure/templates/microsoft.sql/2017-10-01-preview/servers/elasticpools
- DOC https://docs.microsoft.com/en-us/azure/sql-database/

## Sample Parameter File
```
{
  "$schema": "http://schema.management.azure.com/schemas/2015-01-01/deploymentParameters.json#",
  "contentVersion": "2018.12.01.0",
  "parameters": {
    "name": {
      "value": ""
    },
    "ServerName": {
      "value": ""
    },
    "LicenseType": {
      "value": "LicenseIncluded"
    },
    "Family": {
      "value": ""
    },
    "Tier": {
      "value": "Basic"
    },
    "vCore": {
      "value": ""
    },
    "minCore": {
      "value": ""
    },
    "maxCore": {
      "value": ""
    },
    "eDTU": {
      "value": "50"
    },
    "minDTU": {
      "value": "0"
    },
    "maxDTU": {
      "value": "5"
    },
    "zoneRedundant": {
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