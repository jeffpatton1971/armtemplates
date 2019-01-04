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
		  "hostname": "sslOffload1",
          "frontendPort": 443,
		  "frontendProtocol": "Https",
          "backendPort": 80,
          "backendProtocol": "Http",
          "sslCertificate": "base64 pfx",
		  "sslPassword" : ""
        }
        {
		  "hostname": "sslOffload2",
          "frontendPort": 443,
		  "frontendProtocol": "Https",
          "backendPort": 80,
          "backendProtocol": "Http",
          "sslCertificate": "base64 pfx",
		  "sslPassword" : ""
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
	"Location":{
		"value": ""
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