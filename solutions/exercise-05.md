The basic, given solution:

    find . -name '*.py' | sed '/test/d' | xargs wc


Excluding directories named 'test':

    find . -name '*.py' | sed '/\/test\//d' | xargs wc

