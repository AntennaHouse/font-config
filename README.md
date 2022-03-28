* [English](#en)
* [日本語](#ja)

----
# <a name="en"></a>font-config

Schema and oXygen framework for AH Formatter 'font-config.xml' files.

**font-config** version numbers correspond to the AH Formatter version current at the time of the release.

Each release includes schema files in Relax NG, Relax NG compact syntax, W3C XML Schema, and DTD formats.

## Disclaimer

**font-config** is a work in progress.

Pull requests and new issues are welcome.

## Installing

* If you want to keep up-to-date with **font-config** releases, then you can install **font-config** as an add-on Oxygen framework.
* Alternatively, you can download a static copy of the Oxygen framework from GitHub.
* If you want to easily keep up-to-date with changes, then you can clone this repository and 'pull' the latest version whenever you want.
* If you want to hack on **font-config** or submit pull requests, then you can fork this repository and clone that onto your local machine.

### Installing as add-on Oxygen framework

Follow the instructions in the Oxygen manual at https://www.oxygenxml.com/doc/ug-editor/topics/installing-and-updating-add-ons.html

The **font-config** update site URL is https://raw.githubusercontent.com/AntennaHouse/font-config/master/add-on.xml

Note that Oxygen will require you to restart the editor after installing the add-on framework.

### Installing a ZIP archive to Oxygen `frameworks` directory

1. Download the ZIP archive from the latest release on the 'Releases' page.
2. Extract the folder in the ZIP archive to the Oxygen `frameworks` directory.
  - On Windows, this is `C:\Program Files\Oxygen XML Editor 24.1\frameworks`, or something similar.
  - If you don't have permission to copy the folder to the `frameworks` directory, then you can use an alternative location as described below.
3. Restart Oxygen.

### Installing a ZIP archive to an alternative frameworks location

If you don't have permission to modify the Oxygen installation – for example, if Oxygen is installed on Windows under `C:\Program Files\` and you are not an Administrator – you can set Oxygen to also use an alternative frameworks location.

1. Click on the "Download ZIP" button on this project's main page to download the files.
2. Extract the folder in the ZIP archive to a folder where you can create the new folder.
3. In your Oxygen preferences, add the **font-config** folder as an alternative frameworks location.
  - See https://www.oxygenxml.com/doc/ug-editor/topics/framework-location.html
4. Restart Oxygen.

### Installing a repository clone

1. Clone the repository into either the Oxygen `frameworks` directory or another directory.
2. If necessary, add the **font-config** folder as an alternative frameworks location.
3. Restart Oxygen.

## Using **font-config**

### oXygen XML Editor

When you open an `font-config.xml` file – where the document element is `font-config` in no namespace – oXygen will automatically validate the document against the Relax NG schema.

If the file includes a DOCTYPE declaration, Oxygen will validate the file using the DTD. If the DOCTYPE declaration is absent or is commented out, Oxygen will use the Relax NG schema and Schematron from the framework, which provide more fine-grained validation than is possible with a DTD.

The Oxygen framwork provides template `font-config.xml` files for use on Windows and non-Windows platforms. The DOCTYPE declaration is commented out in the template files.

### Standalone validation

Each release includes schema files in Relax NG, Relax NG compact syntax, W3C XML Schema, and DTD formats.

## License

Copyright 1999-2022 Antenna House, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

----

# <a name="ja"></a>font-config

Relax NG schemaの AH Formatter オプション設定ファイル。

**font-config** 版の番号は、リリース時の AH Formatter 版に対応しています。

## 免責事項

**font-config** の開発は進行中です。

Pullリクエストや問題がありましたらお知らせください

## インストール

* 最初の **font-config** リリースを続けたい場合、oXygen のアドオンフレームワークとして **font-config** をインストールすることができます。
代わりに、GitHubから oXygen フレームワークの静的なコピーをダウンロードすることができます。
* 最新の変更を続けたい場合、このリポジトリをクローンして、いつでも好きな時に最新版を pull することができます。
* **font-config** をハックしたり pull リクエストをサブミットしたり場合は、このリポジトリをフォークして、ローカルマシンにクローンすることができます。
###　アドオン oXygen フレームワークとしてのインストール

 https://www.oxygenxml.com/doc/ug-editor/topics/installing-and-updating-add-ons.htmlの oXygen のマニュアルの指示に従ってください。

 **font-config** の最新サイトの URL は https://raw.githubusercontent.com/AntennaHouse/font-config/master/add-on.xml
です。

oXygen はアドオンフレームワークをインストールした後、エデイタの再起動する必要になります。

### oXygen frameworks ディレクトリの ZIP アーカイブにインストールする

1. Releases ページにある最新リリースから ZIP アーカイブをダウンロードして下さい。
1. oXygen frameworks ディレクトリに ZIP アーカイブにあるフォルダーを解凍します。
 - Windowsでは、これは `C:\Program Files\Oxygen XML Editor 24.1\frameworks`か同様のものです。
 - `frameworks` ディレクトリにフォルダをコピーする許可がない場合は、以下に説明するように、別の場所を使用することができます。
1. oXygen を再起動します。

### 代替 フレームワークスの場所に ZIP アーカイブのインストール

インストールを変更する許可がない場合は、例えば、oXygen は　 C:\Program Files\ で Windows にインストール場合、あなたは管理者でない場合、代替フレームワークの場所も使用するように oXygen を設定することができます。 

1.ファイルをダウンロードするには、このプロジェクトのメインページの "Download ZIP" をクリックします。

1. 新しいフォルダを作成することができるフォルダに ZIP アーカイブ内のフォルダを解凍します。
1. oXygen の環境設定で、代替フレームワークスの場所として解凍した **font-config** フォルダを追加します。
 -  https://www.oxygenxml.com/doc/ug-editor/topics/framework-location.html
 を参照して下さい。
1. oXygen を再起動します。

### リポジトリクローンをインストールする

1. oXygen の `frameworks` ディレクトリ又は別のディレクトリのどちらかにリポジトリをクローンします。
2. 必要ならば、別のフレームワークスの場所として **font-config** フォルダを追加します。
3. oXygen を再起動します。

##  **font-config**の使用

### oXygen XML エディタ

When you open a `font-config.xml` file – where the document element is `font-config` in no namespace – oXygen will automatically validate the document against the Relax NG schema.

## ライセンス


Copyright 1999-2022 Antenna House, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
