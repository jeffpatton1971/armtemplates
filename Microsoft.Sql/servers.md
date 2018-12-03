# Microsoft SQL Servers

## Overview
SQL Database is a general-purpose relational database managed service in Microsoft Azure that supports structures such as relational data, JSON, spatial, and XML.

## Links
- API https://docs.microsoft.com/en-us/rest/api/sql/servers
- ARM https://docs.microsoft.com/en-us/azure/templates/microsoft.sql/2015-05-01-preview/servers
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
    "administratorLogin": {
      "value": "azureuser"
    },
    "administratorLoginPassword": {
      "value": "P@ssword12345"
    },
    "version": {
      "value": "12.0"
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