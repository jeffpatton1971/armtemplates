# Rackspace Build Wiki
Welcome to the Rackspace Build Team Wiki, within this wiki you will find details about templates that are used, and processes that are followed to deploy a customer environment into Azure.

# Change Log
- 08/14 : Updated avset for VM template to accomodate an existing avset with differing faultdomain/updatedomain values
- 08/14 : Updated RSV template to leverage the timeZone property in the same fashion the VM template does, pull from deployed region, or passed in via param. Also added tag support as that was missing.
- 08/14 : Updated all buildDate param values to the next release date 9/1/2018
- 08/14 : Updated the siteCore LB template to properly work with v9 solr.  As the new solr requires the use of SSL the old ping path will fail, probe must use tcp 8983.
- 08/09 : Changed VMName param on VM and VMSS template to Name
- 08/09 : Removed ILB template
- 08/03 : Added CDN template
- 08/03 : Changed the networking portion of the LB template to line up with the networking parameters of the VM templates
- 08/02 : Added the domainjoin extension
- 08/02 : Updated loadBalancer template to accomodate both public and private load balancers
- 08/01 : Added support for passing datadisk names
