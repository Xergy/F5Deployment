## This is testing the new prod template!

Get-AzureRmMarketplaceTerms -Publisher f5-networks -Product "f5-big-ip-good" -name "f5-bigip-virtual-edition-good-byol"
Get-AzureRmMarketplaceTerms -Publisher f5-networks -Product "f5-big-ip-good" -Name "f5-bigip-virtual-edition-good-byol" | Set-AzureRmMarketplaceTerms -Accept
Get-AzureRmMarketplaceTerms -Publisher f5-networks -Product "f5-big-ip-best" -name "f5-bigip-virtual-edition-best-byol"
Get-AzureRmMarketplaceTerms -Publisher f5-networks -Product "f5-big-ip-best" -Name "f5-bigip-virtual-edition-best-byol" | Set-AzureRmMarketplaceTerms -Accept

$HashArguments = @{
    licenseType = 'PAYG' 
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
    tenantId = "72f988bf-86f1-41af-91ab-2d7cd011db47"
    clientId = "cd37dfd4-dd8b-44ea-9e6c-df82cf9909dd"
    servicePrincipalSecret = "6dg/mxSVLEHc/DU4OeBeJ3fBdQJ3JfNCSKU76gBcoVU="
    managedRoutes = "NOT_SPECIFIED"
    ntpServer = "0.pool.ntp.org"
    timeZone = "UTC"
    customImage = "OPTIONAL"
    allowUsageAnalytics = "Yes"
    resourceGroupName = "F5-RG"
    #LicenseKey1 = "HERYA-OESBL-LDZKV-CKPCM-TQEQNOM"
    #LicenseKey2 = "JEKWI-AFKXX-FNMVR-ARYGG-PABAZYM"
    tagValues = '{"environment": "PROD"}' 

}

.\Deploy_via_PS.ps1 @HashArguments