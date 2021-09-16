# Azure-Data-Factory-Training

## Blob ストレージ から SQL Database へのデータ コピー

<br />

### Azure Data Factory Studio の起動

- リソース グループから Azure Data Factory を選択

- Open Azure Data Factory Studio の **開く** をクリック

  <img src="images/openDataFactoryStudio.PNG" />

- Azure Data Factory Studio が別タブで起動

  <img src="images/dataFactoryStudio.PNG" />

<br />

### パイプラインの作成

- **作成者** メニューをクリックし、ファクトリのリソースにある **＋** アイコンをクリック

  **パイプライン** を選択

  <img src="images/createPipeline.PNG" />

- 画面右のプロパティでパイプライン名を入力

- **アクティビティ** - **移動と変換** にある **データのコピー** アクティビティをドラッグ＆ドロップして配置

  <img src="images/deployDataCopy.PNG" />

- **ソース** タブを表示、ソースデータセットの **＋ 新規** をクリック

- 新しいデータセット画面で **Azure BLOB ストレージ** を選択し、**続行** をクリック

- 形式の選択画面で **DelimitedText** を選択し、**続行** をクリック

  <img src="images/selectFile.PNG" />

- データセットの設定を行い **OK** をクリック

  - 名前： 任意

  - リンク サービス： Blob ストレージへのリンク サービス

  - ファイル パス： .csv ファイルをアップロードしたコンテナー

  - 先頭行をヘッダーとして： オン

  - スキーマのインポート： 接続またはストアから

    <img src="images/dataSet_SalesOrder_CSV.PNG" />

- **ソース** タブの **ファイル パスの種類** で **ワイルドカードファイル パス** を選択

  ファイル名に ***.csv** を入力

  <img src="images/dataCopy_Source_Settings.PNG" />

- **シンク** タブを表示、シンクデータセットの **＋ 新規** をクリック

- 新しいデータセット画面で **Azure SQL Database** を選択し、**続行** をクリック

- データセットの設定を行い **OK** をクリック

  - 名前： 任意

  - リンク サービス： ResellerSalesDW データベースへのリンク サービス

  - テーブル名： **dbo.SalesOrder**

    <img src="images/dataSet_SalesOrder.PNG" />

- 設定終了後の **シンク** タブ

  <img src="images/dataCopy_Sink_Settings.PNG" />

- **デバッグ** をクリックし、パイプラインを実行

  <img src="images/dataCopy_Debug.PNG" />

- **出力** タブで実行状況を確認

  <img src="images/dataCopy_Debug_Output.PNG" />

- 状態が成功になったことを確認し、メガネ アイコンをクリック

  <img src="images/dataCopy_Debug_Drilldown.PNG" />

- パイプライン実行の詳細を確認

  <img src="images/dataCopy_Detail.PNG" />

- Azure ポータルへ移動、ResellerSalesDW を選択し、クエリ エディター (プレビュー) を起動

  SQL 認証でログイン

  <img src="images/sqlDatabase_Login.PNG" />

- **テーブル** を展開し、**SalesOrder** テーブルを右クリック

  表示されるメニューより **Select Top 1000 Rows** を選択

  <img src="images/salesOrder_Select_Top1000_Rows.PNG" />

- 結果にコピーされたレコードが表示されることを確認

  <img src="images/dataCopy_Result.PNG" />

  ※ TotalAmount 列の値が空白であることを確認

- 次のタスクへ進む前にコピーしたレコードを削除

  ```
  TRUNCATE TABLE [dbo].[SalesOrder];

  SELECT COUNT(*) FROM [dbo].[SalesOrder];
  ```
