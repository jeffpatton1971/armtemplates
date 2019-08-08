# Microsoft Recovery Services Vault Protected Items

## Overview
A Recovery Services vault is a storage entity in Azure that houses data. The data is typically copies of data, or configuration information for virtual machines (VMs), workloads, servers, or workstations. You can use Recovery Services vaults to hold backup data for various Azure services such as IaaS VMs (Linux or Windows) and Azure SQL databases. Recovery Services vaults support System Center DPM, Windows Server, Azure Backup Server, and more. Recovery Services vaults make it easy to organize your backup data, while minimizing management overhead.

## Links
- API https://docs.microsoft.com/en-us/rest/api/backup/protecteditems
- ARM https://docs.microsoft.com/en-us/azure/templates/microsoft.recoveryservices/2016-06-01/vaults/backupfabrics/protectioncontainers/protecteditems
- DOC https://docs.microsoft.com/en-us/azure/backup/backup-azure-recovery-services-vault-overview

## Sample Parameter File
```
{
  "$schema": "http://schema.management.azure.com/schemas/2015-01-01/deploymentParameters.json#",
  "contentVersion": "2018.12.01.0",
  "parameters": {
    "ProtectedItemResourceGroup": {
      "value": ""
    },
    "ProtectedItem": {
      "value": ""
    },
    "ItemType": {
      "value": "Microsoft.Compute/virtualMachines"
    },
    "RecoveryVault": {
      "value": ""
    },
    "RecoveryVaultResourceGroup": {
      "value": ""
    },
    "BackupPolicy": {
      "value": ""
    }
  }
}
```