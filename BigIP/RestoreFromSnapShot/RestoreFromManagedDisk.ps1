
$resourceGroupName = "F5-RG"

$osDiskName = "F5byolmp_OsDisk_1_b97e98a535a441b0894837fbe4ebb81a"

$virtualMachineName = 'f5byolmp'

#e.g. Get-AzureRmVMSize -Location westus
$virtualMachineSize = 'Standard_D4_v3'

$disk = Get-AzureRmDisk -ResourceGroupName $resourceGroupName -Name $osDiskName

$VirtualMachine = $Null
$VirtualMachine = New-AzureRmVMConfig -VMName $virtualMachineName -VMSize $virtualMachineSize

$VirtualMachine = Set-AzureRmVMOSDisk -VM $VirtualMachine -ManagedDiskId $disk.Id -CreateOption Attach -Linux

<#
Sample Plan info Com:
"plan": {
"name": "f5-bigiq-virtual-edition-byol",
"publisher": "f5-networks",
"product": "f5-big-iq"

Sample Plan Info Gov't
"plan": {
"name": "f5-bigiq-virtual-edition-byol",
"publisher": "f5-networks",
"product": "f5-big-iq"

#>

Set-AzureRmVMPlan -VM $VirtualMachine -Publisher "f5-networks" -Product "f5-big-iq" -Name "f5-bigiq-virtual-edition-byol"

$Nic = Get-AzureRmNetworkInterface -Name "f5byolmp209" -ResourceGroupName $resourceGroupName

$VirtualMachine = Add-AzureRmVMNetworkInterface -VM $VirtualMachine -Id $nic.Id

New-AzureRmVM -VM $VirtualMachine -ResourceGroupName $resourceGroupName -Location $disk.Location