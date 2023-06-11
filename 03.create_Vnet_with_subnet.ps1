$rgName="script-grp"
$location="East US"
$networkName="script-vnet"
$addressPrefix="10.0.0.0/16"
$subnetName="subnet_2"
$subnetAddressPrefix="10.0.1.0/24"

New-AzVirtualNetwork -Name $networkName -ResourceGroupName $rgName -Location $location -AddressPrefix $addressPrefix
$vnet= Get-AzVirtualNetwork -Name $networkName -ResourceGroupName $rgName
Add-AzVirtualNetworkSubnetConfig -Name $subnetName -VirtualNetwork $vnet -AddressPrefix $subnetAddressPrefix

$vnet | Set-AzVirtualNetwork