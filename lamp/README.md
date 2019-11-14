# About
LAMP環境を構築するDocker Compose
<br>  
### 動作検証環境

- macOS
  - Sierra vr10.12.6
- docker
  - Docker version 19.03.1
- docker-compose
  - docker-compose version 1.24.1
<br>
<br>
<br>

 # Constitution
 ```
Docker-Compose
│
lamp
│
├── docker-compose.yml
├── docker
│   ├── db
│   │   └── my.cnf
│   │   └── sql
│   │       └── create-table.sql
│   ├── nginx
│   │   └── default.conf
│   └── php
│       ├── php.ini
│       └── Dockerfile
└── htdocs
    └── index.php
```
<br>
<br>

# Setup
```
# htdocs/
ブラウザで表示するファイルを格納する

# lamp/docker/nginx/default.conf
ブラウザで表示するファイルを指定する

  listen 80;
    index index.php;  // ここを変更
    root /var/www;

  location / {
    root /var/www;   // ここを変更
    index index.php;
    }

```
<br>
<br>

# Used
```
# カレントディレクトリの移動
cd /Docker-Compose/lamp

# コンテナの起動
docker-compose up -d
```
<br>
<br>

# Management
<table>
 <tr>
  <td><b>docker-compose up -d</b></td>
  <td>コンテナ起動</td>
 </tr>
 <tr>
  <td><b>docker-compose down</b></td>
  <td>コンテナ停止</td>
 </tr>
 <tr>
  <td><b>docker-compose ps</b></td>
  <td>コンテナ一覧を参照</td>
 </tr>
</table>
<br>
<br>

# Tips
起動できない場合のナレッジやトラシューをQiitaにて記載<br>
https://qiita.com/infr_0329/items/d0883093e348ac190592#%E3%83%88%E3%83%A9%E3%83%96%E3%83%AB%E3%82%B7%E3%83%A5%E3%83%BC%E3%83%86%E3%82%A3%E3%83%B3%E3%82%B0



