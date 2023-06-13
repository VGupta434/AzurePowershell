$rgName="script-grp"
$location="East US"
$ipAddressName="scriptIP"

New-AzPublicIpAddress -Name $ipAddressName -ResourceGroupName $rgName -Location $location -AllocationMethod Dynamic -Sku Basic

Get-AzPublicIpAddress -ResourceGroupName $rgName