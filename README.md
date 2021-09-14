# Azure-Data-Factory-Training

## Azure リソースの作成

- ストレージ アカウント

- SQL Database

- Azure Data Factory

- 仮想ネットワーク

- ARM テンプレートから作成

  <br />

  [![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fhiroyay-ms%2FAzure-Data-Factory-Training%2Fmain%2Ftemplates%2Fdeploy-azure-resources.json)

  ### パラメーター
  - **storageAccountName**: ストレージ アカウント名
  - **sqlServerName**: SQL Server 名
  - **sqlAdministratorLogin**: サーバー管理者
  - **sqlAdministratorPassword**: パスワード
  - **dataFactoryName**: Data Factory 名
  - **virtualNetworkName**: 仮想ネットワーク名
  - **addressPrefix**: IPv4 アドレス空間
  - **subnetName1**: サブネット名
  - **subnetPrefix1**: サブネット アドレス範囲
  - **subnetName2**: サブネット名
  - **subnetPrefix2**: サブネット アドレス範囲
