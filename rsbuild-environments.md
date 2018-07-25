# RSBuild Environments

## Overview
Environments are essentially a single deployable resource in Azure (or any cloud). Each environment contains everything required to deploy that resource. There are many environments within VSTS that you can use, and you can create your own if you need to. 

RSBuild environments have been created to assist you in getting your build off the ground as quickly as possible. These environment are self contained and will test and deploy a resource, they leverage the rsazure-internal-buildtemplates and require that you name the environment after the resource to be deployed.

### rsBuild Begin Release
This environment will extract the build files and gives you something to start from.
#### Variables
- sourceAlias         : This is the Build Artifact SourceAlias property

### rsBuild Deploy Log Analytics
This envrionment will deploy the OMS workspace into a subscription.
#### Variables
- Location            : The Azure reqion to be deployed into
- scriptAlias         : This is the GIT Artifact SourceAlias property for the rsazure-internal-buildscripts repo
- templateAlias       : This is the GIT Artifact SourceAlias property for the rsazure-internal-buildtemplates repo
- WorkspaceRSG        : The Resource Group deploy into

### rsBuild Add OMS to MSCloud
This environment will connect the OMS workspace to MSCloud so tickets can be created in core.
#### Variables
- CoreAccount         : Customer account number from Core
- CoreDevice          : Customer device number from Core
- SubscriptionId      : Azure Subscription ID
- WorkspaceName       : OMS Workspace Name
- WorkspaceRSG        : OMS Workspace Resource Group

### rsBuild Deploy Recovery Services Vault
This environment will deploy the Recovery Services Vault into a subscription.
#### Variables
- Location            : The Azure reqion to be deployed into
- scriptAlias         : This is the GIT Artifact SourceAlias property for the rsazure-internal-buildscripts repo
- templateAlias       : This is the GIT Artifact SourceAlias property for the rsazure-internal-buildtemplates repo
- RecoveryVaultRSG    : The Resource Group deploy into

### rsBuild Deploy Azure Automation Account
This environment will deploy the Azure Automation Account into a subscription.
#### Variables
- Location            : The Azure reqion to be deployed into
- scriptAlias         : This is the GIT Artifact SourceAlias property for the rsazure-internal-buildscripts repo
- templateAlias       : This is the GIT Artifact SourceAlias property for the rsazure-internal-buildtemplates repo
- AutomationRSG       : The Resource Group deploy into

### rsBuild Deploy Virtual Machine
This environment will deploy a Virtual Machine into a subscription.
#### Variables
- AdminPassword       : The password fro the login account
- AdminUserName       : The login account name
- BackupPolicyName    : The backup policy name for image backups
- Location            : The Azure reqion to be deployed into
- RecoveryVaultName   : The name of the Recovery Vault to use
- RecoveryVaultRSG    : The Resource Group the Recovery Vault is deployed into
- RSG                 : The Resource Group deploy into
- scriptAlias         : This is the GIT Artifact SourceAlias property for the rsazure-internal-buildscripts repo
- sidUsers            : Additional users to add to the VM
- templateAlias       : This is the GIT Artifact SourceAlias property for the rsazure-internal-buildtemplates repo
- WorkspaceName       : OMS Workspace Name
- WorkspaceRSG        : OMS Workspace Resource Group

### rsBuild End Release
This environment will clean up the agent after the release.
