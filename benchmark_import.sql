# benchmark_import.sql

# usage:
# mysql > source /path/to/benchmark_import.sql

use wikipedia;

DROP TABLE IF EXISTS search_with_mroonga_ngram;
CREATE TABLE search_with_mroonga_ngram (
   id INT PRIMARY KEY AUTO_INCREMENT,
   subject TEXT,
   content TEXT,
   FULLTEXT (subject,content)
) ENGINE=mroonga DEFAULT CHARSET utf8 collate utf8_unicode_ci ;

DROP TABLE IF EXISTS search_with_mroonga_mecab;
CREATE TABLE search_with_mroonga_mecab (
   id INT PRIMARY KEY AUTO_INCREMENT,
   subject TEXT,
   content TEXT,
   FULLTEXT (subject,content) COMMENT 'parser "TokenMecab"'
) ENGINE=mroonga DEFAULT CHARSET utf8 collate utf8_unicode_ci ;

DROP TABLE IF EXISTS search_with_innodb_ngram;
CREATE TABLE search_with_innodb_ngram (
   id INT PRIMARY KEY AUTO_INCREMENT,
   subject TEXT,
   content TEXT,
   FULLTEXT (subject,content)
) ENGINE=InnoDB DEFAULT CHARSET utf8 collate utf8_unicode_ci ;

DROP TABLE IF EXISTS search_with_innodb_mecab;
CREATE TABLE search_with_innodb_mecab (
   id INT PRIMARY KEY AUTO_INCREMENT,
   subject TEXT,
   content TEXT,
   FULLTEXT (subject,content)
) ENGINE=InnoDB DEFAULT CHARSET utf8 collate utf8_unicode_ci ;

SELECT 'starting import for search_with_mroonga_ngram' AS 'message';
LOAD DATA LOCAL INFILE '/tmp/wikipedia_plain.tsv.a' INTO TABLE search_with_mroonga_ngram FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_plain.tsv.b' INTO TABLE search_with_mroonga_ngram FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_plain.tsv.c' INTO TABLE search_with_mroonga_ngram FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_plain.tsv.d' INTO TABLE search_with_mroonga_ngram FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_plain.tsv.e' INTO TABLE search_with_mroonga_ngram FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_plain.tsv.f' INTO TABLE search_with_mroonga_ngram FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_plain.tsv.g' INTO TABLE search_with_mroonga_ngram FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_plain.tsv.h' INTO TABLE search_with_mroonga_ngram FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_plain.tsv.i' INTO TABLE search_with_mroonga_ngram FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_plain.tsv.j' INTO TABLE search_with_mroonga_ngram FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_plain.tsv.k' INTO TABLE search_with_mroonga_ngram FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_plain.tsv.l' INTO TABLE search_with_mroonga_ngram FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_plain.tsv.m' INTO TABLE search_with_mroonga_ngram FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_plain.tsv.n' INTO TABLE search_with_mroonga_ngram FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_plain.tsv.o' INTO TABLE search_with_mroonga_ngram FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);

SELECT 'starting import for starting import for search_with_mroonga_mecab' AS 'message';
LOAD DATA LOCAL INFILE '/tmp/wikipedia_plain.tsv.a' INTO TABLE search_with_mroonga_mecab FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_plain.tsv.b' INTO TABLE search_with_mroonga_mecab FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_plain.tsv.c' INTO TABLE search_with_mroonga_mecab FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_plain.tsv.d' INTO TABLE search_with_mroonga_mecab FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_plain.tsv.e' INTO TABLE search_with_mroonga_mecab FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_plain.tsv.f' INTO TABLE search_with_mroonga_mecab FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_plain.tsv.g' INTO TABLE search_with_mroonga_mecab FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_plain.tsv.h' INTO TABLE search_with_mroonga_mecab FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_plain.tsv.i' INTO TABLE search_with_mroonga_mecab FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_plain.tsv.j' INTO TABLE search_with_mroonga_mecab FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_plain.tsv.k' INTO TABLE search_with_mroonga_mecab FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_plain.tsv.l' INTO TABLE search_with_mroonga_mecab FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_plain.tsv.m' INTO TABLE search_with_mroonga_mecab FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_plain.tsv.n' INTO TABLE search_with_mroonga_mecab FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_plain.tsv.o' INTO TABLE search_with_mroonga_mecab FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);

SELECT 'starting import for search_with_innodb_ngram' AS 'message';
LOAD DATA LOCAL INFILE '/tmp/wikipedia_ngram.tsv.a' INTO TABLE search_with_innodb_ngram FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_ngram.tsv.b' INTO TABLE search_with_innodb_ngram FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_ngram.tsv.c' INTO TABLE search_with_innodb_ngram FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_ngram.tsv.d' INTO TABLE search_with_innodb_ngram FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_ngram.tsv.e' INTO TABLE search_with_innodb_ngram FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_ngram.tsv.f' INTO TABLE search_with_innodb_ngram FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_ngram.tsv.g' INTO TABLE search_with_innodb_ngram FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_ngram.tsv.h' INTO TABLE search_with_innodb_ngram FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_ngram.tsv.i' INTO TABLE search_with_innodb_ngram FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_ngram.tsv.j' INTO TABLE search_with_innodb_ngram FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_ngram.tsv.k' INTO TABLE search_with_innodb_ngram FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_ngram.tsv.l' INTO TABLE search_with_innodb_ngram FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_ngram.tsv.m' INTO TABLE search_with_innodb_ngram FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_ngram.tsv.n' INTO TABLE search_with_innodb_ngram FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_ngram.tsv.o' INTO TABLE search_with_innodb_ngram FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);

SELECT 'starting import for search_with_innodb_mecab' AS 'message';
LOAD DATA LOCAL INFILE '/tmp/wikipedia_mecab.tsv.a' INTO TABLE search_with_innodb_mecab FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_mecab.tsv.b' INTO TABLE search_with_innodb_mecab FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_mecab.tsv.c' INTO TABLE search_with_innodb_mecab FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_mecab.tsv.d' INTO TABLE search_with_innodb_mecab FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_mecab.tsv.e' INTO TABLE search_with_innodb_mecab FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_mecab.tsv.f' INTO TABLE search_with_innodb_mecab FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_mecab.tsv.g' INTO TABLE search_with_innodb_mecab FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_mecab.tsv.h' INTO TABLE search_with_innodb_mecab FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_mecab.tsv.i' INTO TABLE search_with_innodb_mecab FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_mecab.tsv.j' INTO TABLE search_with_innodb_mecab FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_mecab.tsv.k' INTO TABLE search_with_innodb_mecab FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_mecab.tsv.l' INTO TABLE search_with_innodb_mecab FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_mecab.tsv.m' INTO TABLE search_with_innodb_mecab FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_mecab.tsv.n' INTO TABLE search_with_innodb_mecab FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);
LOAD DATA LOCAL INFILE '/tmp/wikipedia_mecab.tsv.o' INTO TABLE search_with_innodb_mecab FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' (id,subject,content);

