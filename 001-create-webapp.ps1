$resourceGroupName = “gwl-tekki-rg”
$location = “uksouth”
$webAppName = “gwltekki-webapp”
$appServicePlanName = “gwltekki-app-plan”
az group create --location $location --name $resourceGroupName
az appservice plan create --name $appServicePlanName --resource-group $resourceGroupName --location $location --sku “B1” --is-linux
az webapp create --name $webAppName --resource-group $resourceGroupName --plan $appServicePlanName --runtime “DOTNETCORE:7.0”
