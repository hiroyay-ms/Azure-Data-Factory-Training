# Azure-Data-Factory-Training

## セルフホステッド ランタイム

<br />

### セルフホステッド統合ランタイムの作成

- Azure Data Factory Studio へ移動

- **管理** タブの **統合ランタイム** を選択し、**＋ 新規** をクリック

  <img src="images/list_Integration_Runtime.PNG" />

- 統合ランタイムのセットアップ画面で **Azure、セルフホステッド** を選択し **続行** をクリック

  <img src="images/setup_Integration_Runtime.PNG" />

- **セルフホステッド** を選択し、**続行** をクリック

  <img src="images/setup_Integration_Runtime_02.PNG" />

- 名前を入力し、**作成** をクリック

  <img src="images/setup_Integration_Runtime_03.PNG" />

- 表示される **認証キー** をコピーして、メモ帳などに貼り付け

  <img src="images/setup_Integration_Runtime_04.PNG" />

- 作成したセルフホステッド統合ランタイムの状態が **使用不可** であることを確認

  <img src="images/list_Integration_Runtime_02.PNG" />

<br />

### 統合ランタイムのインストール

- Azure ポータルへ移動し、仮想マシンの管理ブレードを表示

- **接続** - **RDP** を選択

  <img src="images/connect_VM_RDP.PNG" />

- **RDP ファイルのダウンロード** をクリック

  <img src="images/connect_VM_RDP_02.PNG" />

- リモート デスクトップ接続のダイアログが表示、**接続** をクリック

  <img src="images/connect_VM_RDP_03.PNG" />

- 仮想マシンに接続するためのアカウント名、パスワードを入力し **OK** をクリック

  <img src="images/connect_VM_RDP_04.PNG" />

- **はい** をクリックし、仮想マシンへ接続を実行

  <img src="images/connect_VM_RDP_05.PNG" />

- ブラウザを起動し、Integration Runtime のダウンロード ページへアクセス

  URL: https://www.microsoft.com/ja-jp/download/details.aspx?id=39717

  ※ Internet Explorer 起動前にセキュリティ強化の構成はオフに設定

  <img src="images/ie_Security.PNG" />

- **ダウンロード** をクリック

  <img src="images/download_Integration_Runtime.PNG" />

  ※ バージョンは最新のモノを選択

- ダウンロード完了後、インストーラーを起動

  言語を選択し、**Next** をクリック

  <img src="images/install_Integration_Runtime.PNG" />

- License Agreement に同意し、**Next** をクリック

  <img src="images/install_Integration_Runtime_02.PNG" />

- インストール場所を確認し、**Next** をクリック

  <img src="images/install_Integration_Runtime_03.PNG" />

- **Install** をクリックし、インストールを実行

  <img src="images/install_Integration_Runtime_04.PNG" />

- インストールが完了したことを確認し **Finish** をクリック

  <img src="images/install_Integration_Runtime_05.PNG" />

- Integration Runtime 構成マネージャーが起動

  <img src="images/regist_Integration_Runtime.PNG" />

- 先の手順でコピーした認証キーを貼り付け **登録** をクリック

  <img src="images/regist_Integration_Runtime_02.PNG" />

- **完了** をクリック

  <img src="images/regist_Integration_Runtime_03.PNG" />

- ノードが正常に登録されたことを確認し、**構成マネージャーの起動** をクリック
  <img src="images/regist_Integration_Runtime_04.PNG" />

- クラウド サービスへ正常に接続されていることを確認

  <img src="images/regist_Integration_Runtime_05.PNG" />

- Azure Data Factory Studio へ移動

- **管理** タブの **統合ランタイム** を選択

  セルフホステッド統合ランタイムの状態が **正常** に更新されたことを確認

  <img src="images/list_Integration_Runtime_03.PNG" />