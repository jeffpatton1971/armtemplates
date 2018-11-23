# Microsoft CDN Endpoint

## Overview
A content delivery network (CDN) is a distributed network of servers that can efficiently deliver web content to users. CDNs store cached content on edge servers in point-of-presence (POP) locations that are close to end users, to minimize latency.

## Links
- API https://docs.microsoft.com/en-us/rest/api/cdn/endpoints
- ARM https://docs.microsoft.com/en-us/azure/templates/microsoft.cdn/2017-10-12/profiles/endpoints
- DOC https://docs.microsoft.com/en-us/azure/cdn/

## Sample Parameter File
```
{
  "$schema": "http://schema.management.azure.com/schemas/2015-01-01/deploymentParameters.json#",
  "contentVersion": "2018.12.01.0",
  "parameters": {
    "name": {
      "value": ""
    },
    "originHostHeader": {
      "value": ""
    },
    "isHttpAllowed": {
      "value": true
    },
    "isHttpsAllowed": {
      "value": true
    },
    "queryStringCachingBehavior": {
      "value": "IgnoreQueryString"
    },
    "originPath": {
      "value": ""
    },
    "isCompressionEnabled": {
      "value": false
    },
    "optimizationType": {
      "value": "GeneralWebDelivery"
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