# MySQL-5.6で始める全文検索 〜InnoDB FTS編〜
=======================

MySQL Casual Talks Vol.4 での発表に利用したプログラムやデータ、生ログをまとめたリポジトリです。

## 検証環境
* CentOS
  * CentOS release 6.4 (Final)
* MySQL
  * [MySQL-shared-compat-5.6.10-1.el6.x86_64](http://y-ken.github.io/package/centos/6/x86_64/MySQL-shared-compat-5.6.10-1.el6.x86_64.rpm)
  * [MySQL-client-5.6.10-1.el6.x86_64](http://y-ken.github.io/package/centos/6/x86_64/MySQL-client-5.6.10-1.el6.x86_64.rpm)
  * [MySQL-devel-5.6.10-1.el6.x86_64](http://y-ken.github.io/package/centos/6/x86_64/MySQL-devel-5.6.10-1.el6.x86_64.rpm)
  * [MySQL-server-5.6.10-1.el6.x86_64](http://y-ken.github.io/package/centos/6/x86_64/MySQL-server-5.6.10-1.el6.x86_64.rpm)
  * [MySQL-shared-5.6.10-1.el6.x86_64](http://y-ken.github.io/package/centos/6/x86_64/MySQL-shared-5.6.10-1.el6.x86_64.rpm)
* mroonga (リンクのないものは[groongaのリポジトリにあるもの](http://packages.groonga.org/centos/6/x86_64/Packages/) を利用)
  * [mysql-mroonga-3.02-0.el6.mysql56.x86_64](http://y-ken.github.io/package/centos/6/x86_64/mysql-mroonga-3.02-0.el6.mysql56.x86_64.rpm)
  * groonga-3.0.2-0.el6.x86_64
  * groonga-libs-3.0.2-0.el6.x86_64
  * groonga-plugin-suggest-3.0.2-0.el6.x86_64
  * groonga-normalizer-mysql-1.0.2-0.el6.x86_64
  * groonga-tokenizer-mecab-3.0.2-0.el6.x86_64
  * groonga-release-1.1.0-1.noarch
* MeCab ([groongaのリポジトリにあるもの](http://packages.groonga.org/centos/6/x86_64/Packages/) を利用)
  * mecab-ipadic-2.7.0.20070801-6.el6.1.x86_64
  * mecab-0.995-1.el6.x86_64
* Ruby-1.9.3-p374 (1.9.xならOK)
  * mecab-ruby (gem）  
  [MeCab本体と同じバージョンのtar玉をダウンロード](https://code.google.com/p/mecab/downloads/list?can=2&q=mecab-ruby&colspec=Filename+Summary+Uploaded+ReleaseDate+Size+DownloadCount) し、  
  `gem build mecab-ruby.gemspec`でgemファイルを作成後、  
  `sudo gem install mecab-ruby-*.gem`でインストール


## ファイル構成
TODO

## ダウンロード
リポジトリを丸ごとダウンロード出来ます。  
手元に同様の環境を作成する場合に手っ取り早いです。
```
$ wget https://github.com/y-ken/mysql_casual_talks_vol4/archive/gh-pages.zip
```
※ 大変容量が大きいため、固定回線のご利用をお勧めします
