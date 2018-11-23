# Microsoft DB for MySQL

## Overview
Azure Database for MySQL is a relational database service in the Microsoft cloud based on the MySQL Community Edition database engine, versions 5.6 and 5.7. 

## Links
- API https://docs.microsoft.com/en-us/rest/api/mysql/servers
- ARM https://docs.microsoft.com/en-us/azure/templates/microsoft.dbformysql/2017-12-01/servers
- DOC https://docs.microsoft.com/en-us/azure/mysql/

## Sample Parameter File
```
{
  "$schema": "https://schema.management.azure.com/schemas/2015-01-01/deploymentParameters.json#",
  "contentVersion": "2018.12.01.0",
  "parameters": {
    "name": {
      "value": ""
    },
    "administratorLogin": {
      "value": ""
    },
    "administratorLoginPassword": {
      "value": ""
    },
    "sku": {
      "value": ""
    },
    "size": {
      "value": "5120"
    },
    "version": {
      "value": "5.7"
    },
    "sslEnforcement": {
      "value": "Disabled"
    },
    "backupRetentionDays": {
      "value": 7
    },
    "geoRedundantBackup": {
      "value": "Disabled"
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