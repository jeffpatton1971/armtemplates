# Microsoft KeyVault Vault

## Overview
Azure Key Vault can be used to Securely store and tightly control access to tokens, passwords, certificates, API keys, and other secrets. Azure Key Vault can also be used as a Key Management solution. Azure Key Vault makes it easy to create and control the encryption keys used to encrypt your data. Azure Key Vault is also a service that lets you easily provision, manage, and deploy public and private Secure Sockets Layer/Transport Layer Security (SSL/TLS) certificates for use with Azure and your internal connected resources. The secrets and keys can be protected either by software or FIPS 140-2 Level 2 validates HSMs

## Links
- API https://docs.microsoft.com/en-us/rest/api/keyvault/vaults
- ARM https://docs.microsoft.com/en-us/azure/templates/microsoft.keyvault/2018-02-14/vaults
- DOC https://docs.microsoft.com/en-us/azure/key-vault/

## Sample Parameter File
```
{
  "$schema": "http://schema.management.azure.com/schemas/2015-01-01/deploymentParameters.json#",
  "contentVersion": "2019.06.01.0",
  "parameters": {
    "name": {
      "value": ""
    },
    "Location": {
      "value": ""
    },
    "TenantId": {
      "value": "fa817e5c-3e63-4f5a-bb89-249d98167deb"
    },
    "sku": {
      "value": "standard"
    },
    "enabledForDeployment": {
      "value": false
    },
    "enabledForDiskEncryption": {
      "value": true
    },
    "enabledForTemplateDeployment": {
      "value": false
    },
    "enableSoftDelete": {
      "value": true
    },
    "CustomObject": {
      "value": {}
    },
    "accessPolicies": {
      "value": [
        {
        "objectId": "ca42bc60-55b1-4597-9ee8-d95d853eca77",
        "tenantId": "fa817e5c-3e63-4f5a-bb89-249d98167deb",
        "permissions": {
          "keys": [
            "Get",
            "List",
            "Backup"
          ],
          "secrets": [
            "Get",
            "List",
            "Backup"
          ],
         }
        }
    ]
    },
    "networkAcls": {
      "value": {
        "defaultAction": "Allow",
        "bypass": "AzureServices",
        "virtualNetworkRules": [],
        "ipRules": []
      }
    },
    "environment": {
      "value": ""
    },
    "buildDate": {
      "value": ""
    },
    "buildBy": {
      "value": ""
    },
    "buildTicket": {
      "value": ""
    },
    "RaxAutomationExclude": {
      "value": ""
    }
  }
}
```