# README
Rails7のAPIモードと、Ruby3で構成。

## 開発環境構築

**ホームディレクトリ(~)配下に構築しないと、予期せぬバグが発生する可能性があります！！！**

### 1. プロジェクト名の変更
- `taberoute`
- `Taberoute`
- `TABEROUTE`

と書いてある部分を、プロジェクトの名前に変更する。

### 2. .env ファイルの設定

以下を実行し、`.env`ファイルを作成

```
$ touch .env
```

`.env`ファイルに以下を記述する

```
DB_DATABASE="taberoute_db"
DB_HOST="db"
DB_USER="postgres"
DB_PASSWORD="password"
```

### 3. セットアップスクリプトの実行

```
$ ./setup

# スクリプトの権限エラーで怒られた場合は以下を実施
$ chmod +x setup
$ ./setup
```
