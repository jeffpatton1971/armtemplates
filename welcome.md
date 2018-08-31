# Rackspace Build Wiki
Welcome to the Rackspace Build Team Wiki, within this wiki you will find details about templates that are used, and processes that are followed to deploy a customer environment into Azure.

# TODO
- Need to update the build environments to accomodate new template locations and udpates
- Need Domain Setup DSC/Script with ordering for bringing up 2 DC's in sequence
- Need to update Schema to add DB Tier and Sizing options
- Need script to change Temp Drive
- Need Script/DSC to make local admin/admingroup sql sysad's

# Change Log
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
