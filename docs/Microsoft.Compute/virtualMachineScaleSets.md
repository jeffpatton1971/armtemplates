# Microsoft Compute Virtual Machine Scale Sets

## Overview
Azure virtual machine scale sets let you create and manage a group of identical, load balanced, and autoscaling VMs.

## Links
- API https://docs.microsoft.com/en-us/rest/api/compute/virtualmachinescalesets
- ARM https://docs.microsoft.com/en-us/azure/templates/microsoft.compute/2017-12-01/virtualmachinescalesets
- DOC https://docs.microsoft.com/en-us/azure/virtual-machine-scale-sets/

## Notes
GalleryImage and ImageReferenceId are mutually exclusive, you will need to pick one or the other. When using those, you should set the OperatingSystem parameter to either Custom Linux or Custom Windows

## Sample Parameter File
```
{
  "$schema": "http://schema.management.azure.com/schemas/2015-01-01/deploymentParameters.json#",
  "contentVersion": "2018.12.01.0",
  "parameters": {
    "Network": {
      "value": {
        "name": "vm01-avset-nic",
        "VirtualNetworkResourceGroupName": "rg-vnet-ERPServicesWest",
        "VirtualNetworkName": "vnet-ERPServicesWest",
        "SubnetName": "sb-atlassian"
      }
    },
    "Diagnostics": {
      "value": {
        "StorageAccountName": "acctnumdiags001",
        "ResourceGroupName": "rsg-diags",
        "BootDiagnostics": true
      }
    "DataDisks": {
      "value": [
        {
          "name": "Logs",
          "caching": "ReadWrite",
          "lun": 0,
          "size": "p30"
        },
        {
          "name": "Temp",
          "caching": "ReadOnly",
          "lun": 1,
          "size": "p10"
        }
      ]
    },
    "UpgradePolicy": {
      "value": {
        "mode": "Manual",
        "rollingUpgradePolicy": {
          "maxBatchInstancePercent": 20,
          "maxUnhealthyInstancePercent": 20,
          "maxUnhealthyUpgradedInstancePercent": 20,
          "pauseTimeBetweenBatches": "PT0S"
        },
        "autoOSUpgradePolicy": {
          "enableAutomaticOSUpgrade": false
          "disableAutoRollback": false
        }
      }
    },
    "name": {
      "value": "vm01"
    },
    "LicenseType": {
      "value": "None"
    },
    "Size": {
      "value": "DS1_v2"
    },
    "GalleryImage": {
      "value": {}
    },
    "ImageReferenceId": {
      "value": ""
    },
    "OperatingSystem": {
      "value": "Windows Server 2016 DataCenter"
    },
    "AdminUserName": {
      "value": "azureuser"
    },
    "AdminPassword": {
      "value": "P@ssword12345"
    },
    "Count": {
      "value": 1
    },
    "writeAcceleratorEnabled": {
      "value": false
    },
    "ultraSSDEnabled": {
      "value": false
    },
    "Zones": {
      "value": [ ]
    },
    "CustomObject": {
      "value": {
        "tags" : {
         "Tag1": "Value1",
         "Tag2": "Value2"
        }
      }
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