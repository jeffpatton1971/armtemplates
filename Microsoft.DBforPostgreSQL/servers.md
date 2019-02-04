# Microsoft DB for Postgre SQL

## Overview
Azure Database for PostgreSQL is a relational database service based on the open source Postgres database engine. It is a fully managed database as a service offering capable of handling mission-critical workloads with predictable performance, security, high availability, and dynamic scalability. Develop applications with Azure Database for PostgreSQL leveraging the open source tools and platform of your choice.

## Links
- API https://docs.microsoft.com/en-us/rest/api/postgresql/
- ARM https://docs.microsoft.com/en-us/azure/templates/microsoft.dbforpostgresql/2017-12-01/servers
- DOC https://docs.microsoft.com/en-us/azure/postgresql/

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
    "sslEnforcement": {
      "value": "Enabled"
    },
    "version": {
      "value": "9.5"
    },
    "backupRetentionDays": {
      "value": 7
    },
    "geoRedundantBackup": {
      "value": "Disabled"
    },
    "storageMB": {
      "value": 5
    },
    "capacity": {
      "value": 2
    },
    "family": {
      "value": "Gen5"
    },
    "tier": {
      "value": "GeneralPurpose"
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