# -*- encoding: utf-8 -*-

require 'mysql2'
require './config.rb'

con = Mysql2::Client.new(
  :host => @config[:host], 
  :username => @config[:username], 
  :password => @config[:password], 
  :database => @config[:database]
)

tables = [
  'search_with_mroonga_ngram',
  'search_with_mroonga_mecab',
  'search_with_innodb_ngram',
  'search_with_innodb_mecab',
]

tables.each do | table |
  puts("#{table}: benchmark start.")
  beginning_time = Time.now
  fp = File.open('data/mecab-ipadic-Noun-place-word-50000.txt','r')
  fp.each do | line |
    word = con.escape(line.chomp)
    con.query("SELECT SQL_NO_CACHE id FROM #{table} WHERE MATCH(subject, content) AGAINST('+#{word}' IN BOOLEAN MODE);")
  end
  end_time = Time.now
  puts "#{table}: Time elapsed #{(end_time - beginning_time)} seconds"
  fp.close
end
