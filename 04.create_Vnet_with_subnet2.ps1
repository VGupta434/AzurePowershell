$rgName="script-grp"
$location="East US"
$networkName="script-vnet2"
$addressPrefix="10.1.0.0/16"
$subnetName="subnet_1"
$subnetAddressPrefix="10.1.1.0/24"

$subnet=New-AzVirtualNetworkSubnetConfig -Name $subnetName -AddressPrefix $subnetAddressPrefix

New-AzVirtualNetwork -Name $networkName -ResourceGroupName $rgName -Location $location -AddressPrefix $addressPrefix -Subnet $subnet