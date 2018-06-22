
#Get-AzureRmMarketplaceTerms -Publisher f5-networks -Product "f5-big-ip-best" -name "f5-bigip-virtual-edition-good-byol"
#Get-AzureRmMarketplaceTerms -Publisher f5-networks -Product "f5-big-ip-good" -Name "f5-bigip-virtual-edition-good-byol" | Set-AzureRmMarketplaceTerms -Accept
#Get-AzureRmMarketplaceTerms -Publisher f5-networks -Product "f5-big-ip-best" -name "f5-bigip-virtual-edition-best-byol"
#Get-AzureRmMarketplaceTerms -Publisher f5-networks -Product "f5-big-ip-best" -Name "f5-bigip-virtual-edition-best-byol" | Set-AzureRmMarketplaceTerms -Accept

$HashArguments = @{
    licenseType = 'BYOL' 
    licensedBandwidth = '200m' 
    adminUsername = 'azureuser' 
    authenticationType = "password" 
    adminPasswordOrKey = "S3cedit1234518!" 
    dnsLabel = "f5deployment" 
    instanceName = "f5instance"
    instanceType = "Standard_DS3_v2"
    imageName = "Best"
    bigIpVersion = "13.1.0200"
    numberOfAdditionalNics = "0"
    additionalNicLocation = "OPTIONAL"
    numberOfExternalIps = "0"
    vnetName = "f5vnet"
    vnetResourceGroupName = "F5-RG"
    mgmtSubnetName = "Subnet01"
    mgmtIpAddressRangeStart = "10.10.10.10"
    externalSubnetName = "Subnet02"
    externalIpSelfAddressRangeStart = "10.10.11.10"
    externalIpAddressRangeStart = "10.10.11.20"
    internalSubnetName = "Subnet03"
    internalIpAddressRangeStart = "10.10.12.10"
    tenantId = "8a09f2d7-8415-4296-92b2-80bb4666c5fc"
    clientId = "cd37dfd4-dd8b-44ea-9e6c-df82cf9909dd"
    servicePrincipalSecret = "e3mjKl68DiD6goLh4lxvedmaXsIuFFeGKgklRNleQjg="
    managedRoutes = "NOT_SPECIFIED"
    ntpServer = "0.pool.ntp.org"
    timeZone = "UTC"
    customImage = "OPTIONAL"
    allowUsageAnalytics = "Yes"
    resourceGroupName = "F5-RG"
    LicenseKey1 = "HERYA-OESBL-LDZKV-CKPCM-TQEQNOM"
    LicenseKey2 = "JEKWI-AFKXX-FNMVR-ARYGG-PABAZYM"
    tagValues = '{"environment": "PREPROD"}' 

}

.\Deploy_via_PS.ps1 @HashArguments

<#


Copy-Item @HashArguments
.\Deploy_via_PS.ps1 @params

.\Deploy_via_PS.ps1 `
    -licenseType 'PAYG' `
    -licensedBandwidth '200m' `
    -adminUsername 'azureuser' `
    -authenticationType password `
    -adminPasswordOrKey S3cedit1234518! `
    -dnsLabel f4deployment `
    -instanceName f5vm01 `
    -instanceType Standard_DS3_v2 `
    -imageName Best `
    -bigIpVersion 13.1.0200 `
    -numberOfAdditionalNics 0 `
    -additionalNicLocation OPTIONAL `
    -numberOfExternalIps 0 `
    -vnetName f5vnet `
    -vnetResourceGroupName F5-RG `
    -mgmtSubnetName Subnet01 `
    -mgmtIpAddressRangeStart 10.10.10.10 `
    -externalSubnetName Subnet02 `
    -externalIpSelfAddressRangeStart 10.10.11.10 `
    -externalIpAddressRangeStart 10.10.11.20 `
    -internalSubnetName Subnet03 `
    -internalIpAddressRangeStart 10.10.12.10 `
    -tenantId 8a09f2d7-8415-4296-92b2-80bb4666c5fc `
    -clientId go+Ot1lNNo1XcVbWa4JUb0flYsKHAZckq6PTd39AMow= `
    -servicePrincipalSecret go+Ot1lNNo1XcVbWa4JUb0flYsKHAZckq6PTd39AMow= `
    -managedRoutes NOT_SPECIFIED `
    -ntpServer 0.pool.ntp.org `
    -timeZone UTC `
    -customImage OPTIONAL `
    -allowUsageAnalytics Yes `
    -resourceGroupName F5-RG

<#
.\Deploy_via_PS.ps1 
    -licenseType PAYG 
    -licensedBandwidth 200m 
    -adminUsername azureuser 
    -authenticationType password 
    -adminPasswordOrKey S3cedit1234518!
    -dnsLabel myDNSLabel 
    -instanceName f5vm01 
    -instanceType Standard_DS3_v2 
    -imageName Best 
    -bigIpVersion 13.1.0200 
    -numberOfAdditionalNics 0 
    -additionalNicLocation OPTIONAL 
    -numberOfExternalIps 1 
    -vnetName <value> 
    -vnetResourceGroupName <value> 
    -mgmtSubnetName <value> 
    -mgmtIpAddressRangeStart <value> 
    -externalSubnetName <value> 
    -externalIpSelfAddressRangeStart <value> 
    -externalIpAddressRangeStart <value> 
    -internalSubnetName <value> 
    -internalIpAddressRangeStart <value> 
    -tenantId <value> -clientId <value> 
    -servicePrincipalSecret <value> 
    -managedRoutes NOT_SPECIFIED 
    -ntpServer 0.pool.ntp.org 
    -timeZone UTC 
    -customImage OPTIONAL 
    -allowUsageAnalytics Yes 
    -resourceGroupName <value>


#>