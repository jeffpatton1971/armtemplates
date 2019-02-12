# BuildTemplates
Welcome to the Rackspace Build Team Wiki, within this wiki you will find details about templates that are used, and processes that are followed to deploy a customer environment into Azure.

# New Additions
- LoadBalancer now supports properties for AOAG
- Compute now supports E sizes for managed disk
- Compute now supports writeAcceleratorEnabled and ultraSSDEnabled
- Connection template has been added
- LocalNetworkGateway template has been added
- RedisCache template has been added
- NetworkInterface template has been added
- Application Service Environments template has been added
- MySql PaaS template had been added
- SendGrid template has been added
- PublicIp template has been added

# Breaking Changes
- NetworkSecurityGroup template, now has a Default deploymentType where before it was VirtualMachine
- Eventhub will have a storageAccount object
- Network object across all templates will have updated property names
- VMSS template has an updated upgradePolicy object, based on the new API, please check the documentation file for an example
- All template parameter files will have blank values
- SqlDatabase template was an array of db names, it now only deploys a single dbs

# TODO
- 02/11 : Check CDN profile/endpoint template for naming
- 02/07 : Update appgw to accept a nicname or nicname/resourcegroup to get a privateip for the pool
- 01/29 : ~~Correct eventhub and servicebus templates to use name parameter~~
- 01/24 : Add Location to all templates
- 01/23 : Update documentation to reflect changes in network parameter
- 01/23 : renumber NSG priorities
- 01/21 : ~~Update eventhub to include storageAccount object~~
- 01/21 : ~~Update all Network object references to include updated property names~~
- 01/15 : work out proper null array for empty zones
- 01/14 : ~~Add zones support for VM/VMSS~~
- 01/07 : ~~Add Name parameter to NSg template~~
- 01/07 : ~~Add Customtags object for templates~~
- 01/04 : Work on passing ipAddress to resources that can consume one
- 12/21 : Add vnet peering templates
- 12/21 : ~~Add connections template for wiring up vpngw~~
- 12/21 : ~~Add localNetworkGateway template~~
- 12/20 : ~~VPN Gateway Template, if bgp false still get errors about bgpsettings being null~~
- 12/13 : ~~Clean up Bastion rules in nsg template~~
- 12/12 : ~~Update NSG template to be more customizable, choose deploymentType and define additional rules~~
- 12/11 : ~~Rework AppGw template to be less load balancer and more appgw~~
- 12/07 : Add additional redis resource templates
- 12/07 : ~~Rediscache template~~
- 11/26 : ~~Align NSG update templates with regular networkSecurityGroup template~~
- 11/23 : Update serverFarms template from 2016-03-01 to 2018-02-01
- 11/23 : ~~Update VirtualNetworks template from 2017-09-01 to 2018-08-01~~
- 11/23 : ~~Update VirtualNetworkGateways template from 2017-09-01 to 2018-08-01~~
- 11/23 : ~~Add custom option for NSG for custom rules~~
- 11/23 : ~~Update networkSecurityGroups from 2015-05-01-preview tp 2018-08-01~~
- 11/23 : ~~Update loadBalancers template from 2017-06-01 to 2018-08-01~~
- 11/23 : ~~Update ApplicationGateway template from 2017-06-01 to 2018-08-01~~
- 11/23 : ~~Update ScaleSets template from 2017-12-01 to 2018-10-01~~
- 11/23 : ~~Update compute template from 2017-03-30 to 2018-10-01~~
- 11/23 : ~~Move samples into the readme's for the resources~~
- 11/23 : ~~Create a more fully formed VMSS template~~
- 11/21 : ~~Scrub templates of default values~~
- 11/21 : ~~All parameters should be present in parameter files~~
- 11/19 : ~~Change nsg template to match schema~~
- 11/19 : ~~Add DisasterRecovery to all templates for environment~~
- 11/19 : ~~Change Q/A to QA for all templates~~
- 11/12 : ~~Adjust casing of Name across all templates~~
- 11/10 : ~~Add EastUS to automationAccount~~
- 11/08 : ~~Add SendGrid template~~
- 11/08 : ~~Need PIP template~~
- 11/08 : ~~Remove SQL DB Names~~
- 11/07 : ~~Basic NSG Template~~
- 11/07 : ~~Update OMS regions~~

# Change Log
- 02/11 : Removed trailing comma from connection template
- 02/08 : Added inbound 4421 for bastion rules
- 02/08 : Cleaned up priority numbers
- 02/08 : Added BastionPrefix to template to make configuration less confusing
- 02/06 : Updated NSG template documentation to explain some more confusing aspects
- 02/06 : Updated loadBalancer template to have defaults for rules
- 02/04 : February Update
- 01/30 : Removed extra comma in elastipool template
- 01/29 : Removed DisplayName tag from Redis template
- 01/29 : Updated EventHub and ServiceBus to use name parameter for all resources
- 01/28 : Renamed sites template and parameter to site
- 01/28 : Renamed serverfarms template and parameter to serverfarm
- 01/24 : Cleaned up the bastion-nsg.json utility template to remove all but SSH rules
- 01/24 : Added update-nsg.json to Utilities, this allows you to pass in an array of securityRules to be *added* to an existing NSG
- 01/24 : Updated loadbalancer template with new properties, see documentation
- 01/24 : Updated loadbalancer template to provide the armtemplate output
- 01/24 : Updated apiVersion to 2018-08-01 on loadbalancer template
- 01/24 : Updated apiVersion to 2018-08-01 on virtualNetwork template
- 01/23 : Removed extra properties from NSG template
- 01/23 : Updated NSG template, it's fully customizable. Pass in a deployment type for default rules for that deployment, then add additional SecurityRules in the parameters
- 01/23 : Updated NSG template to add default rules to securityrules if provided
- 01/23 : Updated NSG template bastion deployment to line up with Sergey's rulset
- 01/22 : Multiple updates, armtemplate output, network properties, storageaccount obect
- 01/21 : Added output to AutomationAccount
- 01/15 : Update Zone parameter in resource to null array until a proper solution is found
- 01/15 : Updated availabilitySet ID, vm resources to use null or a variable object
- 01/15 : Added Corey's update for avset deployment null name
- 01/11 : Missed the avset name change for dependencies
- 01/11 : Updated parameter file for NSG to include name parameter
- 01/10 : Made availabilitySet optional, no name, no avset
- 01/10 : removed extraneous comma
- 01/09 : Added name parameter to NSG template
- 01/08 : Fixed bug, when passing empty CustomObject parameter, the special tagging fails as .tags isn't a property of a null object
- 01/08 : Missed setting writeAcceleratorEnabled in datadisk
- 01/08 : Updated disk sizing for the new E series StandardSSD_LRS disks
- 01/08 : Updated virtualmachinescalesets API to 2018-10-01, new parameters writeAcceleratorEnabled and ultraSSDEnabled, linuxConfiguration now supports provisionVMAgent = true
- 01/08 : Updated disk sizing for the new E series StandardSSD_LRS disks
- 01/08 : Updated Compute API to 2018-10-01, new parameters writeAcceleratorEnabled and ultraSSDEnabled, linuxConfiguration now supports provisionVMAgent = true
- 01/07 : Updated all templates with new CustomObject parameter
- 01/04 : Missed backendaddresspool in appgw variable for outputs
- 01/04 : Updated ApplicationGateway template with backendaddresspool array
- 01/04 : ContentVersion update before PR for January
- 01/04 : Update localNetworkGateway template/documentation with missing gatewayIpAddress parameter
- 12/21 : Added connection template and parameter file
- 12/21 : Added template and paramter file for LocalNetworkGateway template
- 12/21 : Added dependency on the PIP
- 12/21 : Removed the conditional deployments for vpngw template, consolidated to just the resource deployment
- 12/21 : Corrected vpngw ipconfigurations was object, should be an array
- 12/21 : Updated vpngw with unique deployment names
- 12/21 : Corrected Appgw template, when passing in two sets of rules two identical ports were created which fails. Used copy() in the variables to create as many frontendports are required, then used union() in the resources and passed the copy variable in twice (union requires arg1,arg2...) this returns only unique frontendports
- 12/20 : Signifcant changes to the ApplicationGateway template, designed for SSL Offload will need cert at deploy, cleaned up internal naming, created an output template, updated apiVersion
- 12/07 : Checking in a redis cache template and parameter file
- 12/07 : Wrong filename for profiles readme
- 12/03 : Updated all parameter files with default values
- 11/30 : Updated all null strings, and booleans
- 11/28 : Flipped OSdisk to ReadWrite caching on VM/VMSS templates
- 11/28 : Multiple VMSS template updates, added nic resource, removed privateipallocationmethod, added primary, changed computerName to computerNamePrefix, flipped createOption from attach to empty
- 11/26 : Updated vmss template with missing index name
- 11/26 : Updated scaleft nsg with new parameter names
- 11/26 : Updated rackspace default nsg with new parameter names
- 11/26 : Updated bastion nsg with new parameter names
- 11/26 : Updated app gw nsg with new parameter names
- 11/26 : Updated alert logic nsg with new parameter names
- 11/26 : Updated ad nsg with new parameter names
- 11/26 : Updated octopus nsg with new parameter names
- 11/26 : Added sqlserver-nsg.json, to add sql rules to an existing subnet
- 11/26 : Added SQLServer DeploymentType
- 11/26 : Updated NSG template parameters from subnetPrefix > DestinationPrefix
- 11/26 : Updated NSG template parameters from bastionPrefix > SourcePrefix
- 11/26 : Updated NSG template with SitecoreCMS/SOLR
- 11/23 : Created NetworkInterface template
- 11/23 : Created/Updated documentation across all templates, removed parameter values and extra params from all template parameter files
- 11/23 : Added custom rules to NSG template
- 11/23 : Problem passing the wrong object to SKU
- 11/23 : Created an upgradePolicy object, see parameter file for example
- 11/23 : Corrected networking issues, copied nic properties to networkinterfaceconfigurtaions, and removed nic resource
- 11/23 : Several significant changes around VMSS
- 11/23 : Removing managedDisk ID
- 11/23 : Removing the name from dataDisk
- 11/22 : Removing the name from osDisk
- 11/19 : Updated all templates with new environments to match schema
- 11/19 : Updated serverFarms template with values for the object, and casing on name
- 11/19 : Updated NSG template with network object like loadbalancers
- 11/19 : Added working hostingEnviroment template and parameter file
- 11/19 : Renamed the protecteditem json and parameter files
- 11/19 : Updated MqSQL template and removed the firewal rules
- 11/19 : Updated casing for 'name' and adjusted contentVersion and dates for December release
- 11/19 : Adding SendGrid template
- 11/19 : Adding PublicIP template
- 11/19 : Added HA example for loadbalancer template
- 11/19 : Updated SqlDatabase template, removed name array, and unused size param.
- 11/19 : Updated automationaccount template with list of regions, and added undocumented eastus
- 11/19 : Updated current list of regions for Workspace (removed West Central US), added RaxAutomationExclude tag
- 11/19 : Corrected deployment issues with new NSG template, as well as some resource issues
- 11/12 : Checking in New networkSecurityGroup template, borrowed some code from the AlertLogic template, as well as the VirtualMachine template. This will deploy an NSG based on a DeploymentType (ApplicationGateway, Basion, DomainController, VirtualMachine)
- 11/12 : Missed the sitecore specific rules
- 11/12 : Renumbered all priorities across all NSG templates
- 11/12 : Corrected casing difference between template and parameters
- 11/12 : Added parameter file for networkSecurityGroup.json
- 11/12 : Removed dependancy on NSG in rules templates
- 11/12 : Created a default NSG template, removed the NSG deployment from the rules, adjusted priority
- 11/12 : Updated nsg templates to deploy an empty nsg
- 11/12 : Corrected extra properties block in ad-nsg template
- 11/01 : Updated Build and ContentVersion values to current build and date
- 11/01 : Renamed virtualNetworks and virtualNetworks.parameters to virtualNetwork and virtualNetwork.parameters
- 11/01 : Renamed virtualNetworkGateways and virtualNetworkGateways.parameters to virtualNetworkGateway and virtualNetworkGateway.parameters
- 10/30 : Cleaned up the storage account template, added racksapce tagging, and a parameters file.
- 10/28 : Added storage account template
- 10/19 : Renamed postgresql-server and postgresql-server.parameters to server and server.parameters
- 10/19 : Renamed virtualMachineScaleSets and virtualMachineScaleSets.parameters to virtualMachineScaleSet and virtualMachineScaleSet.parameters
- 10/19 : Renamed azureautomation-account and azureautomation-account.parameters to automationaccount and automationaccount.parameters
- 10/19 : Renamed sql-server and sql-server.parameters to server and server.parameters
- 10/19 : Renamed sql-elasticpool and sql-elasticpool.parameters to elasticpool and elasticpool.parameters
- 10/19 : Renamed sql-database and sql-database.parameters to database and database.parameters
- 10/19 : Updated VaultName parameter to just Name
- 10/19 : Renamed recovery-services-vault and recovery-services-vault.parameters to vault and vault.paramters
- 10/19 : Renamed oms-workspace and oms-workspace.parameters to workspace and workspace.paramters
- 10/19 : Updated VirtualnetworkGateway, removed ipconfigurations array (not used), added network object, provided examples for bgpSettings and sku objects
- 10/19 : Updated automationAccountName parameter to just Name
- 10/19 : Changing up interface to match where it's referenced as network in other resources
- 10/12 : Updated LB template to accept a location parameter, otherwise pull in ResourceGroup
- 10/11 : Updated VM template to accept a location parameter, otherwise pull in ResourceGroup
- 10/01 : Creating a frontendIpConfiguration array parameter, to accomodate having multiple frontend IP's (McKesson req)
- 09/28 : Added basic traffic manager templates
- 09/28 : Updated endpoint with default values
- 09/28 : Renamed endpoint and profile templates
- 09/28 : Added CDN and Profile parameter files
- 09/26 : Updated eventhub template, referenced an old parameter
- 09/26 : Added sites parameters file
- 09/26 : Updated serverfarms template and added a parameters files
- 09/25 : Updated contentVersion in advance of October template release
- 09/25 : Added parameter files for all new templates
- 09/24 : Added Eventhub namespace template
- 09/24 : Added Eventhub eventhubs template
- 09/24 : Added Eventhub consumergroups template
- 09/24 : Added Eventhub authorizationRules template
- 09/24 : Added ServiceBus namespace template
- 09/24 : Added ServiceBus queues template
- 09/24 : Added ServiceBus topics template
- 09/24 : Added ServiceBus authorizationRules template
- 09/24 : Added AzureSearch template
- 09/18 : Updated Virtualnetwork template and parameter, removed misleading null value for dhcpOptions, and corrected the array for addressPrefixes
- 09/17 : Updated VirtualMachine/Scaleset template to support Windows 2016 and SQL 2017
- 09/13 : Corrected a mistake in the loadbalancer, missing sku for internal, and changed sku of pip instead of load balancer for external
- 08/31 : Updated sites.json, copied the siteconfig section from the webapp-uk.json via Bob Larkin
- 08/31 : Updated OMS Template, modified parameters to remove redundant OMS from name, also udpated parameter file with missing environment param
- 08/27 : Updated LB/APPWG added network object that contains, VirtualNetworkResourceGroupname, VirtualNetworkName and SubnetName. This will make copy/paste operations between schema and template easier.
- 08/27 : Updated VM/VMSS added interface object that contains, VirtualNetworkResourceGroupName, VirtualNetworkName, SubnetName, and Name. This will make copy/paste operations between the schema and template easier.
- 08/17 : Updated VM/VMSS LicenseType param to proper values, Windows_Server, Windows_Client and set a defaultValue to None.
- 08/14 : Updated the siteCore LB template to properly work with v9 solr.  As the new solr requires the use of SSL the old ping path will fail, probe must use tcp 8983.
- 08/14 : Updated avset for VM template to accomodate an existing avset with differing faultdomain/updatedomain values
- 08/14 : Updated all buildDate param values to the next release date 9/1/2018
- 08/14 : Updated RSV template to leverage the timeZone property in the same fashion the VM template does, pull from deployed region, or passed in via param. Also added tag support as that was missing.
- 08/10 : Changed VMName param on VM and VMSS template to Name
- 08/10 : Fixed managedDiskId on VM template, was still using the concat naming
- 08/09 : Updated DISKS variable to have the name property
- 08/09 : Add remaining regions/timezones to VM/VMSS templates and a param to pass in a specific timezone
- 08/09 : Removed ILB template
- 08/09 : Updated VM template with all US regions (non gov't)
- 08/09 : Corrected addressPrefixes in virtualNetwork template to be an array
- 08/09 : Updated loadBalancer template to be public or private based on parameter
- 08/07 : Added linux support for OMS
- 08/03 : Added CDN template
- 08/03 : Updated appgw/lb template network params to match up with the VM templates
- 08/03 : Added the domainjoin extension
- 08/01 : Updated ContentVersion for release
- 08/01 : Moved Sitecore template to their own folder
- 08/01 : Added VMSS template
- 08/01 : Added support for passing datadisk names
- 08/01 : Added caching support to the build schema