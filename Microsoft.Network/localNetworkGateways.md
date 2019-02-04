# Microsoft Network Local Network Gateways

## Overview
The local network gateway often represents your on-premises location.

## Links
- API https://docs.microsoft.com/en-us/rest/api/network-gateway/localnetworkgateways
- ARM https://docs.microsoft.com/en-us/azure/templates/microsoft.network/2018-08-01/localnetworkgateways
- DOC https://docs.microsoft.com/en-us/azure/vpn-gateway/vpn-gateway-about-vpn-gateway-settings#lng

## Sample Parameter File
```
{
  "$schema": "http://schema.management.azure.com/schemas/2015-01-01/deploymentParameters.json#",
  "contentVersion": "2018.12.01.0",
  "parameters": {
    "name": {
      "value": ""
    },
    "Location": {
      "value": ""
    },
    "localNetworkAddressSpace": {
      "value": {
       "addressPrefixes": [
         "10.10.10.0/24",
         "10.10.11.0/24"
       ]
      }
    },
    "gatewayIpAddress": {
      "value": ""
    },
    "bgpSettings": {
      "value": {
       "asn": 65010
      }
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