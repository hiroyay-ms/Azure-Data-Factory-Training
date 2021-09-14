# Azure-Data-Factory-Training

## Azure リソースの作成

- ストレージ アカウント

- SQL Database

- Azure Data Factory

- 仮想ネットワーク

- ARM テンプレートから作成

  使用する Azure リソースを作成（指定パラメーター以外の設定は以下）

  - ストレージ アカウント

    - ストレージ冗長性： Local

    - アクセス層： Hot

  - SQL Database

    - コンピューティングとストレージ： 汎用目的、サーバーレス（第5世代,  1 vCore, 5GB ストレージ）

    - バックアップ ストレージの冗長性： Local

    - データベース名： ResellerSalesDW

    - 照合順序： SQL_Latin1_General_CP1_CI_AS

  - Azure Data Factory

    - バージョン： V2

    - マネージド仮想ネットワーク： 無効

    - 接続方法： パブリック エンドポイント

    - Git 構成： 後で構成する

  - 仮想ネットワーク

    サブネット２つ

  - 仮想マシン

    展開した仮想ネットワークに Windows 仮想マシンを展開

    - イメージ： 2019-Datacenter-smalldisk

    - サイズ： Standard_B2ms

    - OS ディスクの種類： StandardSSD_LRS

    - パブリック IP アドレス： 有効

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
  - **virtualMachineName**: 仮想マシン名
  - **adminUserName**: ローカル管理者
  - **adminPassword**: パスワード
