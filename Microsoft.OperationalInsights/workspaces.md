# Microsoft Operational Insights Workspaces

## Overview
Log Analytics plays a central role in Azure management by collecting telemetry and other data from a variety of sources and providing a query language and analytics engine that gives you insights into the operation of your applications and resources. You can either interact directly with Log Analytics data through log searches and views, or you may use analysis tools in other Azure services that store their data in Log Analytics such as Application Insights or Azure Security Center.

## Links
- API https://docs.microsoft.com/en-us/rest/api/loganalytics/
- ARM https://docs.microsoft.com/en-us/azure/templates/microsoft.operationalinsights/2015-11-01-preview/workspaces
- DOC https://docs.microsoft.com/en-us/azure/log-analytics/

## Sample Parameter File
```
{
  "$schema": "http://schema.management.azure.com/schemas/2015-01-01/deploymentParameters.json#",
  "contentVersion": "2018.12.01.0",
  "parameters": {
    "Name": {
      "value": ""
    },
    "Tier": {
      "value": "pernode"
    },
    "Location": {
      "value": "East US"
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