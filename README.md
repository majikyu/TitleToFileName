# 概要
音声ファイル(mp3, m4a, flac) のタイトル属性をファイル名に書き換えるコマンドレットです。
実行ディレクトリの全音声ファイルに対して適用されます。

# 使い方
コマンド名は`ttfn`です。これは`Title To File Name`の頭文字です。

## ファイルのインポート
コマンドを実行するには，psm1 ファイルをpowershellにインポートする必要があります。

その場で試用のみの場合は Import-Module コマンドを利用します。

```
Import-Module ./ttfn.psm1
```

powershell 起動時に毎回インポートを行う場合は，環境変数の PSModulePath 下にファイルを置きます。

PSModulePath配下に、

```
(PSModulePath)/ttfn/ttfn.psm1
```

という形で保存してください。

これで、`Powershell`の起動時に自動インポートされます。

## コマンドの実行
音声ファイルの存在するディレクトリで，`ttfn`と打ち込んで実行するだけです。今のところオプションはありません。