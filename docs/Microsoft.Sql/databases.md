# Microsoft SQL Databases

## Overview
SQL Database is a general-purpose relational database managed service in Microsoft Azure that supports structures such as relational data, JSON, spatial, and XML.

## Links
- API https://docs.microsoft.com/en-us/rest/api/sql/databases
- ARM https://docs.microsoft.com/en-us/azure/templates/microsoft.sql/2017-10-01-preview/servers/databases
- DOC https://docs.microsoft.com/en-us/azure/sql-database/

## Sample Parameter File
```
{
  "$schema": "http://schema.management.azure.com/schemas/2015-01-01/deploymentParameters.json#",
  "contentVersion": "2018.12.01.0",
  "parameters": {
    "Name": {
      "value": ""
    },
    "ServerName": {
      "value": ""
    },
    "CatalogCollation": {
      "value": "SQL_Latin1_General_CP1_CI_AS"
    },
    "Collation": {
      "value": "SQL_Latin1_General_CP1_CI_AS"
    },
    "CreateMode": {
      "value": "Default"
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
    "Capacity": {
      "value": "Basic"
    },
    "zoneRedundant": {
      "value": false
    },
    "ElasticPoolName": {
      "value": ""
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