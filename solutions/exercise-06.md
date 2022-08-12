A solution using sed to filter out test directories:

    find . -name '*.py' | sed '/\/test\//d' | xargs wc


This will not work if we need to use the `-print0` option.
So instead we can use:

    find . -name '*.py' -not -path '*/test/*' -print0 | xargs -0 wc

(You can of course also use the `-path` option to begin with.)
