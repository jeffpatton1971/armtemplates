
$VmConfigHash_BuildTest =  @{
        "environment"= "Build.Test";
        "DiagSAName"= "yhrocw4pehatadiagnostic";
        "DiagSARGName"= "WU2-SERG0734-buildtest";
        "OMSRGName"= "WU2-SERG0734-buildtest";
        "OMSName"= "4yk0seaiwrbuildtest";
        "BackupvaultName"= "buildtest";
        "BackuppolicyName"= "Default"
      }


$VMHashes = @(
     @{
      'RGName'="BuildTest0" ; 'vmName'='mytest00' ; "VMConfigHash"= $VmConfigHash_BuildTest ; 'VmSize'='Standard_F2s' ;
      'availabilitySetName'='mytest00' ; 'vnetRGName'='WU2-SERG0734-VNET01' ; 'vnetName'='WU2_VNET01' ; 'subnetName'="WU2_VNET01_PRD_UTL" ; 'privateIPAddress'="10.11.1.50"
      'VMImagePublisher'="MicrosoftWindowsServer" ; 'VMImageOffer'="WindowsServer" ; 'VMImageSku'="2012-R2-Datacenter" ; 'VMImageVersion'='latest';
      'osDisksize'="128" ; 'vmOSVHDstorageAcc' = "yhrocw4pehatadvhdvhd" ; 'osDiskSku'="p4"
      'VMAdminUserName'=$VMAdminUserName ; 'localadminpwd'=$localadminpwd ;
                        'dataDisks'=@(
                    );

      }
     @{
      'RGName'="BuildTest1" ; 'vmName'='mytest01' ; "VMConfigHash"= $VmConfigHash_BuildTest ; 'VmSize'='Standard_F2s' ;
      'availabilitySetName'='mytest01' ; 'vnetRGName'='WU2-SERG0734-VNET01' ; 'vnetName'='WU2_VNET01' ; 'subnetName'="WU2_VNET01_PRD_UTL" ; 'privateIPAddress'="10.11.1.51"
      'VMImagePublisher'="MicrosoftWindowsServer" ; 'VMImageOffer'="WindowsServer" ; 'VMImageSku'="2012-R2-Datacenter" ; 'VMImageVersion'='latest';
      'osDisksize'="128" ; 'vmOSVHDstorageAcc' = "yhrocw4pehatadvhdvhd" ; 'osDiskSku'="p4"
      'VMAdminUserName'=$VMAdminUserName ; 'localadminpwd'=$localadminpwd ;
                  'dataDisks'=@(
                    @{ 'SAName'="yhrocw4pehatadvhdvhd" ; 'name'="Binaries" ; 'lun'=51 ; 'diskSizeGB'=64 ; 'caching'="None" ; 'createOption'="Empty" ; 'DiskSku'="usenonmanageddisk" ; 'DriveLetter'='T'}
                    @{ 'SAName'="yhrocw4pehatadvhdvhd" ; 'name'="Logs" ; 'lun'=20 ; 'diskSizeGB'=128 ; 'caching'="None" ; 'createOption'="Empty" ; 'DiskSku'="usenonmanageddisk" ; 'DriveLetter'='U'}
                    @{ 'SAName'="yhrocw4pehatadvhdvhd" ; 'name'="Data" ; 'lun'=1 ; 'diskSizeGB'=128 ; 'caching'="None" ; 'createOption'="Empty" ; 'DiskSku'="usenonmanageddisk" ; 'DriveLetter'='V'}
                    @{ 'SAName'="yhrocw4pehatadvhdvhd" ; 'name'="TempDB" ; 'lun'=40 ; 'diskSizeGB'=64 ; 'caching'="None" ; 'createOption'="Empty" ; 'DiskSku'="usenonmanageddisk" ; 'DriveLetter'='X'}

                    );
      }

    @{
      'RGName'="BuildTest2" ; 'vmName'='mytest02' ; "VMConfigHash"= $VmConfigHash_BuildTest ; 'VmSize'='Standard_F2s' ;
      'availabilitySetName'='mytest02' ; 'vnetRGName'='WU2-SERG0734-VNET01' ; 'vnetName'='WU2_VNET01' ; 'subnetName'="WU2_VNET01_PRD_UTL" ; 'privateIPAddress'="10.11.1.52"
      'VMImagePublisher'="MicrosoftWindowsServer" ; 'VMImageOffer'="WindowsServer" ; 'VMImageSku'="2012-R2-Datacenter" ; 'VMImageVersion'='latest';
      'osDiskSku'="p10" ; 'vmOSVHDstorageAcc' = "usemanageddisk" ; 'osDisksize'="1"
      'VMAdminUserName'=$VMAdminUserName ; 'localadminpwd'=$localadminpwd ;
                  'dataDisks'=@(
                    );
      }
    @{
      'RGName'="BuildTest3" ; 'vmName'='mytest03' ; "VMConfigHash"= $VmConfigHash_BuildTest ; 'VmSize'='Standard_F2s' ;
      'availabilitySetName'='mytest03' ; 'vnetRGName'='WU2-SERG0734-VNET01' ; 'vnetName'='WU2_VNET01' ; 'subnetName'="WU2_VNET01_PRD_UTL" ; 'privateIPAddress'="10.11.1.53"
      'VMImagePublisher'="MicrosoftWindowsServer" ; 'VMImageOffer'="WindowsServer" ; 'VMImageSku'="2012-R2-Datacenter" ; 'VMImageVersion'='latest';
      'osDiskSku'="p10" ; 'vmOSVHDstorageAcc' = "usemanageddisk" ; 'osDisksize'="1"
      'VMAdminUserName'=$VMAdminUserName ; 'localadminpwd'=$localadminpwd ;
                  'dataDisks'=@(
                    @{ 'DiskSku'="p6" ; 'name'="dataDisk1" ; 'lun'=1 ; 'caching'="None" ; 'createOption'="Empty" ; 'diskSizeGB'=1 ;'SAName'="usemanageddisk" }
                    );
      }
     @{
      'RGName'="BuildTest4" ; 'vmName'='mytest04' ; "VMConfigHash"= $VmConfigHash_BuildTest ; 'VmSize'='Standard_F2s' ;
      'availabilitySetName'='mytest04' ; 'vnetRGName'='WU2-SERG0734-VNET01' ; 'vnetName'='WU2_VNET01' ; 'subnetName'="WU2_VNET01_PRD_UTL" ; 'privateIPAddress'="10.11.1.54"
      'VMImagePublisher'="RedHat" ; 'VMImageOffer'="RHEL" ; 'VMImageSku'="7.3" ; 'VMImageVersion'='latest';
      'osDisksize'="128" ; 'vmOSVHDstorageAcc' = "yhrocw4pehatadvhdvhd" ; 'osDiskSku'="p4"
      'VMAdminUserName'=$VMAdminUserName ; 'localadminpwd'=$localadminpwd ;
                        'dataDisks'=@(
                    );

      }
    @{
      'RGName'="BuildTest5" ; 'vmName'='mytest05' ; "VMConfigHash"= $VmConfigHash_BuildTest ; 'VmSize'='Standard_F2s' ;
      'availabilitySetName'='mytest05' ; 'vnetRGName'='WU2-SERG0734-VNET01' ; 'vnetName'='WU2_VNET01' ; 'subnetName'="WU2_VNET01_PRD_UTL" ; 'privateIPAddress'="10.11.1.55"
      'VMImagePublisher'="RedHat" ; 'VMImageOffer'="RHEL" ; 'VMImageSku'="7.3" ; 'VMImageVersion'='latest';
      'osDisksize'="128" ; 'vmOSVHDstorageAcc' = "usemanageddisk" ; 'osDiskSku'="p10"
      'VMAdminUserName'=$VMAdminUserName ; 'localadminpwd'=$localadminpwd ;
                        'dataDisks'=@(
                    @{ 'DiskSku'="p6" ; 'name'="dataDisk1" ; 'lun'=1 ; 'caching'="None" ; 'createOption'="Empty" ; 'diskSizeGB'=1 ;'SAName'="usemanageddisk" }
                    );

      }
    @{
      'RGName'="BuildTest6" ; 'vmName'='mytest06' ; "VMConfigHash"= $VmConfigHash_BuildTest ; 'VmSize'='Standard_F2s' ;
      'availabilitySetName'='mytest06' ; 'vnetRGName'='WU2-SERG0734-VNET01' ; 'vnetName'='WU2_VNET01' ; 'subnetName'="WU2_VNET01_PRD_UTL" ; 'privateIPAddress'="firstAvailableIp"
      'VMImagePublisher'="RedHat" ; 'VMImageOffer'="RHEL" ; 'VMImageSku'="7.3" ; 'VMImageVersion'='latest';
      'osDisksize'="128" ; 'vmOSVHDstorageAcc' = "usemanageddisk" ; 'osDiskSku'="p10"
      'VMAdminUserName'=$VMAdminUserName ; 'localadminpwd'=$localadminpwd ;
                        'dataDisks'=@(
                    @{ 'DiskSku'="p6" ; 'name'="dataDisk1" ; 'lun'=1 ; 'caching'="None" ; 'createOption'="Empty" ; 'diskSizeGB'=1 ;'SAName'="usemanageddisk" }
                    );

      }
)



$VMHashes | ? { $_.VMImagePublisher -match "microsoft"} | % {
 
$resourceGroup = Get-AzureRmResourceGroup -Name $_.RGName -ErrorAction SilentlyContinue
if(!$resourceGroup) { New-AzureRmResourceGroup -Name $_.RGName -Location $ResourceGroupLocation }

New-AzureRmResourceGroupDeployment -TemplateFile $TemplateFile -Verbose -Name $('WSVM-'+$_.vmName) `
                                   -ResourceGroupName $_.RGName `
                                   -buildDate $(Get-Date -Format d) -buildBy $buildBy `
                                   -vnetRGName $_.vnetRGName  -vnetName $_.vnetName -subnetName $_.subnetName -privateIPAddress $_.privateIPAddress `
                                   -vmName $_.vmName `
                                   -VMAdminPassword $_.localadminpwd `
                                   -VmSize $_.VmSize `
                                   -VMImagePublisher $_.VMImagePublisher `
                                   -VMImageOffer $_.VMImageOffer `
                                   -VMImageSku $_.VMImageSku `
                                   -VMImageVersion $_.VMImageVersion `
                                   -osDisksize $_.osDisksize `
                                   -osDiskSku $_.osDiskSku `
                                   -availabilitySetName $_.availabilitySetName `
                                   -vmOSVHDstorageAcc $_.vmOSVHDstorageAcc `
                                   -dataDisks $_.dataDisks `
                                   -VMConfigHash $_.VMConfigHash `
                                   -osProfile 'Windows' -timeZone 'Eastern Standard Time'

}




$VMHashes | ? { $_.VMImagePublisher -notmatch "microsoft"} | % {
 
$resourceGroup = Get-AzureRmResourceGroup -Name $_.RGName -ErrorAction SilentlyContinue
if(!$resourceGroup) { New-AzureRmResourceGroup -Name $_.RGName -Location $ResourceGroupLocation }

$subnetName = $_.subnetName
$subnet = ($vnet.Subnets | ? {$_.name -eq $subnetName })

New-AzureRmResourceGroupDeployment -TemplateFile $TemplateFile -Verbose -Name $('LSVM-'+$_.vmName) `
                                   -ResourceGroupName $_.RGName `
                                   -buildDate $(Get-Date -Format d) -buildBy $buildBy `
                                   -vnetRGName $vnet.ResourceGroupName  -vnetName $vnet.Name -subnetName $subnet.name -privateIPAddress $_.privateIPAddress `
                                   -vmName $_.vmName `
                                   -VMAdminPassword $_.localadminpwd `
                                   -VmSize $_.VmSize `
                                   -VMImagePublisher $_.VMImagePublisher `
                                   -VMImageOffer $_.VMImageOffer `
                                   -VMImageSku $_.VMImageSku `
                                   -VMImageVersion $_.VMImageVersion `
                                   -osDisksize $_.osDisksize `
                                   -osDiskSku $_.osDiskSku `
                                   -availabilitySetName $_.availabilitySetName `
                                   -vmOSVHDstorageAcc $_.vmOSVHDstorageAcc `
                                   -dataDisks $_.dataDisks `
                                   -VMConfigHash $_.VMConfigHash `
                                   -osProfile 'Linux_SSHKEY_and_PWD' `
                                   -VMAdminSSHKey $(gc "C:\lio\myprivatekey2.pub")

}