$rgName="script-grp"
$location="East US"
$networkName="script-vnet"
$addressSpace="10.0.0.0/16"

New-AzVirtualNetwork -Name $networkName -ResourceGroupName $rgName -Location $location -AddressPrefix $addressSpace