# -*- encoding: utf-8 -*-
#require 'set'
# http://snippets.aktagon.com/snippets/584-Generating-word-n-grams-with-Ruby
 
 #
 # Extract uni, bi, and trigrams.
 #
 # "one two three".ngram(1) # unigrams
 # "one two three".ngram(2) # bigrams
 # "one two three".ngram(3) # trigrams
 # "one two three".ngrams(1..3) # unigrams, bigrams, trigrams
 #
 module Ngram
   REGEX = /\w+/
   def ngram_tokenize
      #self.downcase.scan(REGEX)
      self.downcase.split(//)
   end
 
   def ngram(n=1)
     res = Array.new
     words = ngram_tokenize
     word_count = words.length
     words.each_with_index do |word, ix|
       min = ix
       max = ix + (n-1)
       break if word_count <= max
       res.push words[min..max].join('')
     end
     res
   end
 
   def ngrams(range=1..3)
     return ngram(range) if range.is_a?(Fixnum)
     res = Array.new
     range.each do |n|
       res.merge ngram(n)
     end
     res
   end
 end
 
 class String
   include Ngram
 end

