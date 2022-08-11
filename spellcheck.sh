curl "https://en.wikipedia.org/wiki/Pipeline_(Unix)" | sed 's/[^a-zA-Z ]/ /g' | tr 'A-Z ' 'a-z\n' | grep '[a-z]' | sort -u | comm -23 - <(sort /usr/share/dict/words) | less
