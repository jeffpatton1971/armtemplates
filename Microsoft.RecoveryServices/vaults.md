# Microsoft Recovery Services Vaults

## Overview
A Recovery Services vault is an online storage entity in Azure used to hold data such as backup copies, recovery points, and backup policies. You can use Recovery Services vaults to hold backup data for various Azure services such as IaaS VMs (Linux or Windows) and Azure SQL databases.

## Links
- API https://docs.microsoft.com/en-us/rest/api/recoveryservices/vaults
- ARM https://docs.microsoft.com/en-us/azure/templates/microsoft.recoveryservices/2016-06-01/vaults
- DOC https://docs.microsoft.com/en-us/azure/backup/backup-azure-recovery-services-vault-overview

## Sample Parameter File
```
{
  "$schema": "http://schema.management.azure.com/schemas/2015-01-01/deploymentParameters.json#",
  "contentVersion": "2018.12.01.0",
  "parameters": {
    "Name": {
      "value": ""
    },
    "policyName": {
      "value": ""
    },
    "scheduleRunTimes": {
      "value": [ "" ]
    },
    "dailyRetentionDurationCount": {
      "value": 7
    },
    "weeklyRetentionDurationCount": {
      "value": 4
    },
    "daysOfTheWeek": {
      "value": [ "" ]
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