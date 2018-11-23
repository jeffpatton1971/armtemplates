# Microsoft Network Application Gateways

## Overview
Azure Application Gateway is a web traffic load balancer that enables you to manage traffic to your web applications.

## Links
- API https://docs.microsoft.com/en-us/rest/api/application-gateway/
- ARM https://docs.microsoft.com/en-us/azure/templates/microsoft.network/2018-08-01/applicationgateways
- DOC https://docs.microsoft.com/en-us/azure/application-gateway/

## Sample Parameter File
```
{
  "$schema": "http://schema.management.azure.com/schemas/2015-01-01/deploymentParameters.json#",
  "contentVersion": "2018.12.01.0",
  "parameters": {
    "name": {
      "value": ""
    },
    "Network": {
      "value": {
        "VirtualNetworkResourceGroupName": "",
        "VirtualNetworkName": "",
        "SubnetName": ""
      }
    },
    "applicationGatewayRules": {
      "value": [
        {
          "frontendPort": 80,
          "backendPort": 80,
          "protocol": "http",
          "affinity": "Disabled",
          "backendPool": [
            {
              "IpAddress": "1.2.3.4"
            },
            {
              "IpAddress": "2.4.6.8"
            }
          ],
          "sslCertificate": null
        },
        {
          "frontendPort": 8080,
          "backendPort": 8080,
          "protocol": "http",
          "affinity": "Enabled",
          "backendPool": [
            {
              "IpAddress": "1.2.3.4"
            },
            {
              "IpAddress": "2.4.6.8"
            }
          ],
          "sslCertificate": null
        }
      ]
    },
    "Size": {
      "value": "Small"
    },
    "Tier": {
      "value": "Standard"
    },
    "Instances": {
      "value": 1
    },
    "RuleSet": {
      "value": "3.0"
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