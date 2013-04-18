nkf -w data/mecab-ipadic-2.7.0-20070801/Noun.place.csv | cut -d"," -f1 | sort | uniq | sort -R | head -n 50000 > data/mecab-ipadic-Noun-place-word-50000.txt
head -n100 data/mecab-ipadic-Noun-place-word-50000.txt > data/mecab-ipadic-Noun-place-word-100.txt
