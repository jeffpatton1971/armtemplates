# Microsoft Automation AutomationAccounts

## Overview
Azure Automation delivers a cloud-based automation and configuration service that provides consistent management across your Azure and non-Azure environments. It consists of process automation, update management, and configuration features. Azure Automation provides complete control during deployment, operations, and decommissioning of workloads and resources.

## Links
- API https://docs.microsoft.com/en-us/rest/api/automation/automationaccount
- ARM https://docs.microsoft.com/en-us/azure/templates/microsoft.automation/2015-10-31/automationaccounts
- DOC https://docs.microsoft.com/en-us/azure/automation/

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
    "location": {
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
    "RaxAutomationExclude": {
      "value": "None"
    }
  }
}
```