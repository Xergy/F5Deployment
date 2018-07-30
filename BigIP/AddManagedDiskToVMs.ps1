



$rgName = 'F5-RG'
$vmName = 'F5Jumpbox'
$location = 'usgovvirginia' 
$storageType = 'Premium_LRS'

$DiskIndices = 1..30

$vm = Get-AzureRmVM -Name $vmName -ResourceGroupName $rgName

$DiskIndices | ForEach-Object {

$dataDisk1 = $Null
$dataDiskName = $null

$dataDiskName = $vmName + "_datadisk$($_)"

$dataDiskName

$diskConfig = New-AzureRmDiskConfig -SkuName $storageType -Location $location -CreateOption Empty -DiskSizeGB 128

$dataDisk = New-AzureRmDisk -DiskName $dataDiskName -Disk $diskConfig -ResourceGroupName $rgName
 
$vm = Add-AzureRmVMDataDisk -VM $vm -Name $dataDiskName -CreateOption Attach -ManagedDiskId $dataDisk.Id -Lun $_

}

Update-AzureRmVM -VM $vm -ResourceGroupName $rgName

