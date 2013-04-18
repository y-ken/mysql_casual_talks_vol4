# -*- encoding: utf-8 -*-
require 'MeCab'
wakati = MeCab::Tagger.new('-O wakati')

regex = /^<(?<subject>[^>]*)> <(?<predicate>[^>]*)> "(?<content>.*)"@(?<lang>[a-z]*) <(?<context>[^>]*)/
tql = File.open('data/wikipedia-jp-tql/long_abstracts_ja.tql', 'r')
tsv = File.open('data/wikipedia-jp-tsv/wikipedia_mecab.tsv', 'w')

count = 1
tql.each do | line |
  data = line.match(regex)
  if data.nil?
    "Unmatch: #{data.inspect}"
  else
    subject = wakati.parse(data['subject'].sub('http://ja.dbpedia.org/resource/','')).chomp
    content = wakati.parse(data['content'].gsub('\"','"')).chomp
    tsv.puts("#{count}\t#{subject}\t#{content}")
  end
  count = count + 1
end

tql.close
tsv.close
