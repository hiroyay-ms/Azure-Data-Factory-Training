# Azure-Data-Factory-Training

## SQL Database 間のデータ コピー

<br />

### Azure Data Factory Studio の起動

- リソース グループから Azure Data Factory を選択

- Open Azure Data Factory Studio の **開く** をクリック

  <img src="images/openDataFactoryStudio.png" />

- Azure Data Factory Studio が別タブで起動

  <img src="images/dataFactoryStudio.png" />

<br />

### リンク サービスの作成

- **管理** メニューの **リンク サービス** を選択し、**＋ 新規** をクリック

  <img src="images/createLinkservice.png" />

- 新しいリンク サービス画面で **Azure BLOB ストレージ** を選択し、**続行** をクリック

  <img src="images/createLinkservice_BLOB_01.png" />

- Azure BLOB ストレージへのリンク サービスを作成

  - 名前：（任意）

  - 認証方法： **アカウント キー**（既定）

  - Azure サブスクリプション： 使用するサブスクリプションを選択

  - ストレージ アカウント名： 事前準備で csv ファイルをアップロードしたストレージを選択

    <img src="images/createLinkservice_BLOB_02.png" />

    ※ **テスト接続** をクリックし、接続が成功することを確認

  - **作成** をクリック

- リンク サービスの画面で **＋ 新規** をクリック

- 新しいリンク サービスの画面で **Azure SQL Database** を選択し、**続行** をクリック

  <img src="images/createLinkservice_SQL_01.png" />

- Azure SQL Database へのリンク サービスを作成

  - 名前：（任意）

  - **接続文字列** を選択

  - アカウントの選択方法： **Azure サブスクリプションから**（既定）

  - Azure サブスクリプション： 使用するサブスクリプションを選択

  - サーバー名： 事前準備で作成した SQL Server を選択

  - データベース名： **ResellerSales**

  - 認証の種類： **SQL 認証**（既定）

  - ユーザー名： SQL 認証で使用するアカウント名

  - パスワード： 指定したアカウントのパスワード

    <img src="images/createLinkservice_SQL_02.png" />

    ※ **テスト接続** をクリックし、接続が成功することを確認

  - **作成** をクリック

- 同様の手順で ResellerSalesDW へのリンク サービスを作成

  <img src="images/listLinkservice.png" />

<br />

### パイプラインの作成

- **作成者** メニューをクリックし、ファクトリのリソースにある **＋** アイコンをクリック

  **パイプライン** を選択

  <img src="images/createPipeline.png" />

- 画面右のプロパティでパイプライン名を入力

  <img src="images/pipeLine_Property.png" />

- **アクティビティ** - **移動と変換** にある **データ フロー** をデザイナー画面へドラッグ＆ドロップして配置

  <img src="images/deployDataFlow.png" />

- **設定** タブの **＋ 新規** をクリック

  <img src="images/dataFlow_Settings.png" />

- データ フローのデザイン画面が表示

- **ソースの追加** をクリック

  <img src="images/createDataFlow_01.png" />

- **ソースの設定** の **データセット** で **＋ 新規** をクリック

  <img src="images/createDataSource_01.png" />

- 新しいデータセットの画面で **Azure SQL Database** を選択し、**続行** をクリック

  <img src="images/newDataSet.png" />

- プロパティの設定を行い **作成** をクリック

  - 名前：（任意）

  - リンク サービス： ResellerSales データベースへのリンク サービス

  - テーブル名： **dbo.Product**

  - スキーマのインポート： 接続またはストアから（既定）

    <img src="images/dataSet_Property.png" />

- 同様の手順で ProductCategory のデータセットを追加

  <img src="images/addedDataSets.png" />

- **source1** の右下の **＋** アイコンをクリック、表示されるメニューから **結合** を選択

  <img src="images/addJoin_01.png" />

- 結合アクティビティの設定

  - 出力ストリーム名： join1（英数字のみサポート）

  - 左ストリーム： source1（Product テーブルのデータセット）

  - 右ストリーム： source2（ProductCategory テーブルのデータセット）

  - 結合の種類： **内部**

  - 結合条件：

    - 左： ProductCategoryKey

    - 右： ProductCategorykey

    <img src="images/addJoin_02.png" />

- **join1** 右下の **＋** アイコンをクリック、表示されるメニューから **シンク** を選択

  <img src="images/addSink_01.png" />

- **シンク** タブの **データセット** の **＋ 新規** をクリック

  <img src="images/sinkSettings.png" />

- 新しいデータセットの画面で **Azure SQL Database** を選択し、**続行** をクリック

- ResellerSalesDW の Product テーブルを選択

  ※名前は任意の名前を入力

  <img src="images/dataSet_Property_DW.png" />

- **マップ** タブを選択

  自動マッピングを解除し、マッピングの設定を確認

  <img src="images/dataMapping.png" />

<br />

  ※ データフローのデバッグをオンにすることでデータのプレビュー等を確認可
  
  ※ デバッグ中は仮想マシンの費用がかかるため注意が必要

  <img src="images/dataFlow_Debug_02.png" />

  ※ データのプレビュー

  <img src="images/dataPreview.png" />

- パイプラインのデザイン画面を表示

- 新しいデータ フロー アクティビティをドラッグ＆ドロップ

  Data flow 1 と接続

  <img src="images/addedSecond_DataFlow.png" />

- **設定** タブを開き **データフロー** の **＋ 新規** をクリック

  <img src="images/second_DataFlow_Settings.png" />

- デザイン画面で **ソースの追加** をクリックし、データセットを新規作成

  - リンク サービス： ResellerSales データベースへのリンク サービス

  - テーブル名： **dbo.Reseller**

  - スキーマのインポート： 接続またはストアから

    <img src="images/dataSet_Reseller.png" />

- 同じ手順で Geography テーブルのデータセットを追加

  - リンク サービス： ResellerSales データベースへのリンク サービス

  - テーブル名： **dbo.Geography**

  - スキーマのインポート： 接続またはストアから

    <img src="images/dataSet_Geography.png" />

- **結合** アクティビティの追加と設定

  - 出力ストリーム名： join2（英数字のみサポート）

  - 左ストリーム： source1（Reseller テーブルのデータセット）

  - 右ストリーム： source2（Geography テーブルのデータセット）

  - 結合の種類： **内部**

  - 結合条件：

    - 左： GeographyKey

    - 右： Geographykey

    <img src="images/join_Reseller_Geography.png" />

- **シンク** アクティビティの追加と設定

  - データセットの追加

    - 名前：任意（英数字のみサポート）

    - リンク サービス： ResellerSalesDW データベースへのリンク サービス

    - テーブル名： **dbo.Reseller**

      <img src="images/sink_DataSet_Reseller.png" />

- ２つめのデータフローが完成

  <img src="images/dataFlow_Reseller.png" />

- パイプラインのデザイン画面を表示

- 新しいデータ フロー アクティビティをドラッグ＆ドロップ

  Data flow 2 と接続

  <img src="images/addedThird_DataFlow.png" />

- **設定** タブを開き、**データフロー** の **＋ 新規** をクリックし、新しいデータ フローを作成

- **ソースの追加** をクリックし、以下２つのデータセットを追加

  - 名前： 任意（英数字のみサポート）

  - リンク サービス： ResellerSales データベースへのリンク サービス

  - テーブル名： **dbo.Promotion**

  - スキーマのインポート： 接続またはストアから

    <img src="images/dataSet_Promotion.png" />

  - 名前： 任意（英数字のみサポート）

  - リンク サービス： ResellerSales データベースへのリンク サービス

  - テーブル名： **dbo.SalesTerritory**

  - スキーマのインポート： 接続またはストアから

    <img src="images/dataSet_SalesTerritory.png" />

- **source1** の右下の **＋** アイコンをクリックし、表示されるメニューから **シンク** を選択

  <img src="images/sink_Promotion.png" />

- **シンク** のデータセットを追加

  - 名前： 任意（英数字のみサポート）

  - リンク サービス： ResellerSalesDW データベースへのリンク サービス

  - テーブル名： **dbo.Promotion**

    <img src="images/sink_DataSet_Promotion.png" />

- 同様の手順で **source2** にも **シンク** アクティビティを接続し、データセットを作成

  - 名前： 任意（英数字のみサポート）

  - リンク サービス： ResellerSalesDW データベースへのリンク サービス

  - テーブル名： **dbo.SalesTerritory**

    <img src="images/sink_DataSet_SalesTerritory.png" />

- ３つめのデータフローが完成

  <img src="images/dataFlow_Promotion_SalesTerritory.png" />

- パイプラインのデザイン画面を表示

  **デバッグ** をクリックし、パイプラインをデバッグ実行

  <img src="images/pipeLine_Debug_Start.png" />

  ※ メッセージが表示された際は **Integration Runtime を使用する** を選択

- **出力** タブで実行状況を確認

  <img src="images/pipeLine_Debug_Output.png" />

- メガネ アイコンをクリックすることでアクティビティごとの状況を確認

  <img src="images/pipeLine_Debug_Drilldown.png" />

- 各コンポーネントをクリックすることで詳細な状況を確認可

  <img src="images/dataFlow_Status.png" />

- パイプラインが正常に終了することを確認

  <img src="images/pipeLine_Debug_Complete.png" />