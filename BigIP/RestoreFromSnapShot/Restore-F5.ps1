$vmName = MyTestVM

get-azurermvm
get-Azurermlocation
Get-AzureRmVMSize -Location usgovvirginia
Get-AzureLocation

$RG = "F5-RG"
$Nic = Get-AzureRmNetworkInterface -Name "f5byolmp209" -ResourceGroupName $RG
-ResourceGroup $RG

Get-AzureRmNetworkInterface

Set-AzureRmContext -SubscriptionId 3ba3ebad-7974-4e80-a019-3a61e0b7fa91
F5byolmp

Connect-AzureRmAccount 

$vm = New-AzureRmVMConfig -vmName $vmName -vmSize 
$nic = Get-AzureRmNetworkInterface


$VMSize = "Standard_D4_v3"
$VMName = "F5byolmp"
$vm = $null
$Vm = Get-AzureRmVm -ResourceGroupName F5-RG -Name $VMName 
$vm = New-AzureRmVMConfig -vmName $vmName -vmSize $VMSize


$Disks = Get-AzureRmDisk
$Disks.Name

$Disk = Get-AzureRmDisk -DiskName "F5byolmp_OsDisk_1_b97e98a535a441b0894837fbe4ebb81a"
$vhdName = "F5byolmp_OsDisk_1_b97e98a535a441b0894837fbe4ebb81a"


Set-AzureRmVMPlan -VM $vm -Publisher "f5-networks" -Product "f5-big-ip-byol" -Name "f5-big-all-1slot-byol"

$vm = Add-AzureRmVMNetworkInterface -VM $vm -Id $nic.Id

Set-AzureRmVMOSDisk -VM $vm 

Update-AzureRmVM -VM $Vm -ResourceGroupName $RG

$vm = Get-AzureRmVM `
   -ResourceGroupName "myResourceGroupVM"  `
   -VMName "myVM"
$vm.HardwareProfile.VmSize = "Standard_E2s_v3"
Update-AzureRmVM -VM $vm `
   -ResourceGroupName "myResourceGroupVM"
Start-AzureRmVM `
   -ResourceGroupName "myResourceGroupVM"  `
   -Name $vm.name

