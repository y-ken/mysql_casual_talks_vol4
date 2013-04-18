# -*- encoding: utf-8 -*-
require './lib/ngram.rb'

regex = /^<(?<subject>[^>]*)> <(?<predicate>[^>]*)> "(?<content>.*)"@(?<lang>[a-z]*) <(?<context>[^>]*)/
tql = File.open('data/wikipedia-jp-tql/long_abstracts_ja.tql', 'r')
tsv = File.open('data/wikipedia-jp-tsv/wikipedia_ngram.tsv', 'w')

count = 1
tql.each do | line |
  data = line.match(regex)
  if data.nil?
    "Unmatch: #{data.inspect}"
  else
    subject = data['subject'].sub('http://ja.dbpedia.org/resource/','').ngram(2).join(' ')
    content = data['content'].gsub('\"','"').ngram(2).join(' ')
    tsv.puts("#{count}\t#{subject}\t#{content}")
  end
  count = count + 1
end

tql.close
tsv.close
