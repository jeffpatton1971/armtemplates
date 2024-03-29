# Microsoft Network Load Balancers

## Overview
With Azure Load Balancer you can scale your applications and create high availability for your services. Load Balancer supports inbound and outbound scenarios, provides low latency and high throughput, and scales up to millions of flows for all TCP and UDP applications.

## Links
- API https://docs.microsoft.com/en-us/rest/api/load-balancer/
- ARM https://docs.microsoft.com/en-us/azure/templates/microsoft.network/2018-08-01/loadbalancers
- DOC https://docs.microsoft.com/en-us/azure/load-balancer/

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
        "VirtualNetworkResourceGroupName": "testing-rg",
        "VirtualNetworkName": "sample-vnet",
        "SubnetName": "default"
      }
    },
    "loadBalancingRules": {
      "value": [
        {
          "FrontendIpConfigurationName": "fe-ha",
          "privateIPAddress": "",
          "privateIPAllocationMethod": "Dynamic",
          "protocol": "All",
          "frontendPort": 0,
          "backendPort": 0,
          "loadDistribution": "Default",
          "idleTimeoutInMinutes": 4,
          "enableFloatingIP": false,
          "enableTcpReset": false,
          "disableOutboundSnat": false,
          "intervalInSeconds": 5,
          "numberOfProbes": 2
        },
        {
          "FrontendIpConfigurationName": "fe-aoag",
          "privateIPAddress": "",
          "privateIPAllocationMethod": "Dynamic",
          "protocol": "Tcp",
          "frontendPort": 80,
          "backendPort": 80,
          "loadDistribution": "Default",
          "idleTimeoutInMinutes": 4,
          "enableFloatingIP": true,
          "enableTcpReset": false,
          "disableOutboundSnat": false,
          "intervalInSeconds": 5,
          "numberOfProbes": 2
        },
        {
          "FrontendIpConfigurationName": "fe-ntclus",
          "privateIPAddress": "",
          "privateIPAllocationMethod": "Dynamic",
          "protocol": "Tcp",
          "frontendPort": 81,
          "backendPort": 81,
          "loadDistribution": "Default",
          "idleTimeoutInMinutes": 4,
          "enableFloatingIP": false,
          "enableTcpReset": false,
          "disableOutboundSnat": false,
          "intervalInSeconds": 5,
          "numberOfProbes": 2
        }
      ]
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
    "buildTicket": {
      "value": "123456-78901"
    },
    "RaxAutomationExclude": {
      "value": "None"
    }
  }
}
```