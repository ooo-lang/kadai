# 環境構築手順

Windows上でアプリケーション動作に必要な各ソフトウェアのインストール手順から、  
アプリケーション実行手順までを紹介します。

GitのインストールからRuby、SQLite3、最後にRailsのインストール手順を
紹介しますが、  
既にインストール済みであれば飛ばしていただいて構いません。

## 動作環境

* Windows 10 または 11

## Gitのインストール

ここではGitのインストール手順を紹介します。

1. [gitの公式サイト](https://gitforwindows.org/)を開き、「ダウンロード」をクリックしてダウンロードしてください。

   ![image](https://github.com/ooo-lang/kadai/assets/73685497/d3ea393c-aefb-4574-ac82-f4b0e3768175)


2. ダウンロードしたら、インストーラーをクリックしてください。  
   Infomationとインストール先の選択は特に拘りが無ければ「Next」をクリックして進んでください。

3. インストールするコンポーネントを選択します。  
   画面の項目にチェックが入っているかを確認し、入ってなければチェックを入れ「Next」をクリックしてください。

   ![image](https://github.com/ooo-lang/kadai/assets/73685497/afd204c9-4839-42c3-9417-805da13cd6c6)


4. スタートメニューにGitを追加する画面です。特に変更はないので、「Next」をクリックしてください。

   ![image](https://github.com/ooo-lang/kadai/assets/73685497/c5fcd456-3f41-481d-94ce-be1c6c4feb85)


5. エディタを設定する画面です。こちらも特に変更はないので、「Next」をクリックしてください。

   ![image](https://github.com/ooo-lang/kadai/assets/73685497/f2cfcf36-6fa6-478f-bad9-6678265d0ddf)


6. 新しいリポジトリを作成する際に初期ブランチの名称の設定画面です。  
   アプリケーション実行する上で特に支障はないので、「Let Git decide」を選択して、「Next」をクリックしてください。

   ![image](https://github.com/ooo-lang/kadai/assets/73685497/a294b0f1-212a-4564-8452-7b712d8acaf3)


7. Windowsの環境変数PATHへの設定する画面です。  
   デフォルトで「Git from the command line and also from 3rd-party software」に選択されていれば、  
   そのまま「Next」をクリックしてください。

   ![image](https://github.com/ooo-lang/kadai/assets/73685497/d6dbf48b-7788-4c11-bf03-dafa3ee9c5f9)


8. どのSSHクライアントを使用するかを選択する画面です。  
   特に拘りが無ければデフォルトの「Use boundled OpenSSH」で問題ありません。

   ![image](https://github.com/ooo-lang/kadai/assets/73685497/059459ba-59e6-4812-9a0b-6543b2b54dac)


9. HTTPS通信時に使用するツールを選択する画面です。  
   特に拘りが無ければデフォルトの「Use the OpenSSL library」で問題ありません。

   ![image](https://github.com/ooo-lang/kadai/assets/73685497/9f683420-e490-4e18-8d48-9f743f81cd42)


10. テキストファイル改行を設定する画面です。  
    「Checkout Windows-style, commit Unix-style line endings」を選択し、「Next」をクリックします。

    ![image](https://github.com/ooo-lang/kadai/assets/73685497/50de7646-f859-4c83-90e3-a650dab18e8d)

11. ターミナルエミュレータを設定する画面です。  
    デフォルトで「Use MinTTY (the default terminal of MSYS2)」が選択されています。  
    そのままの設定で問題ありませんので「Next」をクリックしてください。

    ![image](https://github.com/ooo-lang/kadai/assets/73685497/abae25e8-d905-4c79-b52b-c57caf0c40fc)

12. `git pull` の時のデフォルトの動作になります。  
    特に拘りが無ければデフォルトの「Fast-forward or merge」で問題ありません。

    ![image](https://github.com/ooo-lang/kadai/assets/73685497/fa4a64df-e8b8-4ee2-be13-72d708dd88b9)

13. 以降は基本操作に従って「Next」をクリックしていき、最後に「Install」をクリックして完了です。

14. マシン再起動後、コマンドプロンプトを起動して、以下のコマンドでバージョンが表示されればインストール完了です。

    ```cmd
    git --version
    ```

## Rubyのインストール

ここではRubyのインストール手順を紹介します。  

1. [RubyInstallers](https://rubyinstaller.org/downloads/)を開き、「WITH DEVKIT」から  
   `Ruby+Devkit 3.2.3-1 (x64)` をクリックしダウンロードしてください。

   ![image](https://github.com/ooo-lang/kadai/assets/73685497/3e741bb5-48b0-4721-8d83-afb0fa617bc0)


2. ダウンロード完了後、クリックしてファイルを開きます。

3. デフォルトでは、「I decline the License」になっています。  
  「I accept the License」を選択し「Next」をクリックしてください。

   ![image](https://github.com/ooo-lang/kadai/assets/73685497/d5bf673a-9c6f-4b5c-a6ac-f028cb58a1d9)


4. ここでは、インストール先とオプションを選択します。そのまま「Install」をクリックしてください。
   
   ![image](https://github.com/ooo-lang/kadai/assets/73685497/fed5a825-1f28-4edf-9ca2-b91283964dfb)


5. Componentsの画面です。そのまま「Next」をクリックして、Installを開始してください。

   ![image](https://github.com/ooo-lang/kadai/assets/73685497/992373b6-598d-4d7f-8aa1-a6d46d3a6ef1)


6. この画面が表示されればインストール完了です。「Finish」をクリックしてください。

   ![image](https://github.com/ooo-lang/kadai/assets/73685497/294a0b29-1eb0-4822-8f65-379539cdae85)


7. 自動的にコマンドプロンプトが立ち上がり、以下の表示がされます。

   ![image](https://github.com/ooo-lang/kadai/assets/73685497/2cf29f82-cbb4-4e27-b440-a71a357b4385)


8. 半角の「1, 3」を入力して、「Enter」キーを押してください。

   ![image](https://github.com/ooo-lang/kadai/assets/73685497/61923856-4851-4cbc-990e-726cc8eaea36)


9. 以下の画面になりましたら、「Enter」キーを押してください。コマンドプロンプトが閉じます。

    ![image](https://github.com/ooo-lang/kadai/assets/73685497/e3df7510-6e8f-48d6-a630-d7423ba21a6c)


10. 以上で、Rubyのインストールが完了しました。  
    正常にインストールされているかの確認の為検索バーから「cmd」と入力し、コマンドプロンプトを開いてください。

11. 以下のコマンドを入力し、バージョンが表示されれば正常にインストールされています。

    ```cmd
    ruby --version
    ```

## SQLite3のインストール

ここではSQLiteのインストール手順を紹介します。

1. [SQLite](https://sqlite.org/index.html)のサイトを開き、「Download」をクリックします。

   ![image](https://github.com/ooo-lang/kadai/assets/73685497/ed05a737-ce5b-4f6d-adeb-6e9c4aaab73d)

2. 「Precompiled Binaries for Windows」の  
    `sqlite-dll-win-x{32or64}-xxxx.zip` をクリックしてダウンロードしてください。  
    ※ 32bitまたは64bitはご自身のマシン環境に合わせて選択してください。

    ![image](https://github.com/ooo-lang/kadai/assets/73685497/5a362da7-2dd3-403a-ac92-0d9623ac6e8c)


3. ダウンロードが完了したら、フォルダを開き「sqlite.dll」を「C:\Ruby32-x64\bin」へコピーしてください

   ![image](https://github.com/ooo-lang/kadai/assets/73685497/44459593-20bc-40fb-bed1-2f6f68ef3f4b)


4. 先ほどのSQLite3のダウンロードページに戻り、  
   `sqlite-tools-win-x64-xxxx.zip` をクリックしてダウンロードしてください。

5. ダウンロード完了したら、フォルダを開き「sqlite3.exe」を、先ほどと同じフォルダ「C:\Ruby32-x64\bin」へコピーします。

   ![image](https://github.com/ooo-lang/kadai/assets/73685497/f8bd9565-410a-4779-b325-e5437ab309e9)

6. 「C:\Ruby32-x64\bin」に、`sqlite3.dll` と `sqlite3.exe`　のファイルがコピーされている事を確認します。

   ![image](https://github.com/ooo-lang/kadai/assets/73685497/66ed77cc-c4dc-4759-b3db-76a02103d0c2)


7. パスが通っているフォルダ配下でコマンドプロンプトを開き、  
   以下のコマンドでSQLite3のバージョンが表示されたらインストール完了です。

   ```cmd
   sqlite3 --version
   ```

## Railsのインストール

ここではRailsのインストール手順を紹介します。

1. 検索バーから「cmd」と入力し、コマンドプロンプトを開いてください。
2. 以下のコマンドを入力し、「Enter」キーを押してください。

   ```cmd
   gem install rails
   ```

3. 正常にインストールされているか確認するために、  
   以下のコマンドを入力して「Enter」キーを押しバージョンが表示されたら成功です。

   ```cmd
   rails --version
   ```

## ソースコードの取得

ここではGit hubからソースコードを取得する方法を紹介します。  

1. プロジェクトを配置したい任意のディレクトリに移動してください。

2. 任意のディレクトリに移動したら、  
ターミナルを開きソースコードを展開するディレクトリを以下のコマンドで作成し移動してください。

   ```text
   mkdir kadai_miyagi
   cd kadai_miyagi
   ```

3. 作成したディレクトリ配下にて `git clone` を実施してソースコードを取得してください。

   ```text
   git clone https://github.com/ooo-lang/kadai.git
   ```

4. 以下コマンドで意図したディレクトリに 「kadai」アプリケーションフォルダが作成されていることを確認してください。

   ```cmd
   ls
   ```

## アプリケーション実行手順

ここではRailsアプリケーション実行手順を紹介します。

1. コマンドプロンプトを開き、`C:\Ruby32-x64\bin`に移動してください。

   ```cmd
   cd C:\Ruby32-x64\bin
   ```

2. 以下のコマンドで、`bundler`をインストールしてください。

   ```cmd
   gem install bundler
   ```

3. インストールが完了したら、以下のコマンドでバージョンが表示されれば完了です。

   ```cmd
   bundler -v
   ```

4. アプリケーションフォルダに移動して、以下のコマンドを実施してください。

   ```cmd
   bundle install
   ```

   ※ エラーが発生する場合はトラブルシューティングの「`bundle install`でエラーが発生する場合」をご参照ください。

5. 以下のコマンドを実施して、DBテーブルを作成してください。

   ```cmd
   rails db:migrate
   ```

6. マイグレーションが完了したら、以下のコマンドでローカルサーバを起動してください。

   ```cmd
   rails server
   ```

7. `http://localhost:3000/`にアクセスして以下の画面が表示されれば起動完了です。

   ![image](https://github.com/ooo-lang/kadai/assets/73685497/818e702e-095d-4ec6-9116-645edb695a58)


## トラブルシューティング

こちらでは発生したエラーとその解決策を記載しています。

## `bundle install`でエラーが発生する場合

以下のエラーが発生する場合は、`gem update` コマンドを実施してエラーを解消してください。

```cmd
Installing psych 5.1.2 with native extensions 
Gem::Ext::BuildError: ERROR: Failed to build gem native extension.
```

## `rails db:migrate:reset` データ削除時にエラーが発生

Windowsでは自らがアクセスしているファイルは削除できない。  
そのため、以下のコマンドで直接削除して再度、マイグレーションを実施してください。

```cmd
rm ./storage/development.sqlite3
```

```cmd
rails db:migrate
```
