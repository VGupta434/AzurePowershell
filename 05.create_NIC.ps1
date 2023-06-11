$rgName="script-grp"
$location="East US"
$networkName="script-vnet2"
$subnetName="subnet_1"
$networkinterfaceName="app-interface"

$vnet=Get-AzVirtualNetwork -Name $networkName -ResourceGroupName $rgName
$subnet=Get-AzVirtualNetworkSubnetConfig -VirtualNetwork $vnet -Name $subnetName
#echo $subnet

New-AzNetworkInterface -Name $networkinterfaceName -ResourceGroupName $rgName -Location $location -SubnetId $subnet.Id -IpConfigurationName "ipconf1"