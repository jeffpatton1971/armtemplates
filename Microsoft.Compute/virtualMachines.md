# Microsoft Compute VirtualMachines

## Overview
Azure Virtual Machines (VM) is one of several types of on-demand, scalable computing resources that Azure offers. Typically, you choose a VM when you need more control over the computing environment than the other choices offer

## Links
- API https://docs.microsoft.com/en-us/rest/api/compute/virtualmachines
- ARM https://docs.microsoft.com/en-us/azure/templates/microsoft.compute/2018-10-01/virtualmachines
- DOC https://docs.microsoft.com/en-us/azure/virtual-machines/

## Sample Parameter File
```
{
  "$schema": "http://schema.management.azure.com/schemas/2015-01-01/deploymentParameters.json#",
  "contentVersion": "2018.12.01.0",
  "parameters": {
    "AvailabilitySetName": {
      "value": "vm01-avset"
    },
    "Network": {
      "value": {
        "name": "vm01-avset-nic",
        "VirtualNetworkResourceGroupName": "rg-vnet-ERPServicesWest",
        "VirtualNetworkName": "vnet-ERPServicesWest",
        "SubnetName": "sb-atlassian"
      }
    },
    "DataDisks": {
      "value": [
        {
          "name": "disk1",
          "caching": "ReadWrite",
          "lun": 0,
          "size": "p30"
          "writeAcceleratorEnabled": false
        },
        {
          "name": "disk2",
          "caching": "ReadOnly",
          "lun": 1,
          "size": "p10"
          "writeAcceleratorEnabled": false
        }
      ]
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
    "writeAcceleratorEnabled": {
      "value": false
    },
    "ultraSSDEnabled": {
      "value": false
    },
    "CustomObject": {
      "value": {
        "tags" : {
         "Tag1": "Value1",
         "Tag2": "Value2",
        }
      },
    },
    "Zones": {
      "value": [ ]
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

## Sample Gallery Image
```
{
  "$schema": "http://schema.management.azure.com/schemas/2015-01-01/deploymentParameters.json#",
  "contentVersion": "2018.12.01.0",
  "parameters": {
    "AvailabilitySetName": {
      "value": "vm01-avset"
    },
    "Network": {
      "value": {
        "name": "vm01-avset-nic",
        "VirtualNetworkResourceGroupName": "rg-vnet-ERPServicesWest",
        "VirtualNetworkName": "vnet-ERPServicesWest",
        "SubnetName": "sb-atlassian"
      }
    },
    "DataDisks": {
      "value": [
        {
          "name": "datadisk-01",
          "caching": "ReadWrite",
          "lun": 0,
          "size": "p30"
          "writeAcceleratorEnabled": false
        },
        {
          "name": "Logs01",
          "caching": "ReadOnly",
          "lun": 1,
          "size": "p10"
          "writeAcceleratorEnabled": false
        }
      ]
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
      "value": {
        "imagePublisher": "Canonical",
        "imageOffer": "UbuntuServer",
        "imageSKU": "18.04-LTS",
        "version": "18.04.201806170",
        "type": "linux"
      }
    },
    "ImageReferenceId": {
      "value": ""
    },
    "OperatingSystem": {
      "value": "CustomLinux"
    },
    "AdminUserName": {
      "value": "azureuser"
    },
    "AdminPassword": {
      "value": "P@ssword12345"
    },
    "writeAcceleratorEnabled": {
      "value": false
    },
    "ultraSSDEnabled": {
      "value": false
    },
    "Zones": {
      "value": [ "1" ]
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

## Sample ImageReference
```
{
  "$schema": "http://schema.management.azure.com/schemas/2015-01-01/deploymentParameters.json#",
  "contentVersion": "2018.12.01.0",
  "parameters": {
    "AvailabilitySetName": {
      "value": "vm01-avset"
    },
    "Network": {
      "value": {
        "name": "vm01-avset-nic",
        "VirtualNetworkResourceGroupName": "rg-vnet-ERPServicesWest",
        "VirtualNetworkName": "vnet-ERPServicesWest",
        "SubnetName": "sb-atlassian"
      }
    },
    "DataDisks": {
      "value": [
        {
          "name": "Applications",
          "caching": "ReadWrite",
          "lun": 0,
          "size": "p30"
          "writeAcceleratorEnabled": false
        },
        {
          "name": "Backups",
          "caching": "ReadOnly",
          "lun": 1,
          "size": "p10"
          "writeAcceleratorEnabled": false
        }
      ]
    },
    "name": {
      "value": "vm02"
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
      "value": "/subscriptions/3b5a73fa-06fc-4444-bd00-fe534eec7a83/resourceGroups/core-images-westus/providers/Microsoft.Compute/images/RHEL-7-CIS"
    },
    "OperatingSystem": {
      "value": "CustomLinux"
    },
    "AdminUserName": {
      "value": "azureuser"
    },
    "AdminPassword": {
      "value": "P@ssword12345"
    },
    "writeAcceleratorEnabled": {
      "value": false
    },
    "ultraSSDEnabled": {
      "value": false
    },
    "Zones": {
      "value": [ "1" ]
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