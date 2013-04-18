# MySQL-5.6で始める全文検索 〜InnoDB FTS編〜
=======================

MySQL Casual Talks Vol.4 での発表に利用したプログラムやデータ、生ログをまとめたリポジトリです。

## 今回のテーマ

* MySQL-5.6.4のInnoDBでは全文検索が可能となりました！
* しかし、MeCabTokenizerどころかNgramにすら非対応・・・だと！？
* スペース区切りなら検索できる！（ポジティブ思考）
* 自前で分かち書きすれば動くのでは？
* その場合、現実的な速度は出るのか？

こんな状況に果敢に挑戦したレポートです

## ブログ
TODO

## スライド
TODO

## 検証環境

### ハードウェア

|     |   |
|:---:|---|
| H/W | NEC Express5800/iR120a-1E |
| CPU | Intel Xeon L5520 2.27GHz |
| MEM | 16GB (4GB * 4) |
| HDD | SAS 10krpm HDD (FUJITSU MBD2300RC) RAID-1 (MegaRAID 8708EM2) |

### ソフトウェア
* CentOS
  * CentOS release 6.4 (Final)
* MySQL (オラクル公式rpmを利用)
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

### my.cnf
TODO
```
# InnoDB
innodb_buffer_pool_size=10G
innodb_file_per_table
innodb_file_format=Barracuda
innodb_log_buffer_size=8M
innodb_log_files_in_group=2
innodb_log_file_size=128M
innodb_additional_mem_pool_size=8M

# Fulltext
ft_min_word_len=1
innodb_ft_min_token_size=1
```

## ファイル構成
TODO

## ダウンロード
gh-pagesというブランチを利用しているため、リポジトリを丸ごとzipでダウンロード出来ます。  
手元に同様の環境を作成する場合など、`git clone`するよりも速いです。
```
$ wget https://github.com/y-ken/mysql_casual_talks_vol4/archive/gh-pages.zip
```
※ 大変容量が大きいため、固定回線のご利用をお勧めします
